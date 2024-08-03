<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        #menu {
            position: fixed;
            left: 0;
            top: 0;
            width: 256px;
            height: 100%;
            overflow-y: scroll;
            background: #212121
        }

        #ava {
            position: absolute;
            left: calc(50% - 96px);
            top: 48px;
            background: #fff;
            border-radius: 96px
        }

        #btns {
            position: absolute;
            left: 0;
            top: 256px;
            width: 100%;
            height: calc(100% - 288px)
        }

        .btn {
            position: relative;
            left: 0;
            width: 100%;
            height: 64px;
            overflow: hidden;
            border: 0;
            border-bottom: 1px solid #414141;
            color: #bdc3c7;
            font-size: 16px;
            font-family: Helvetica, Arial, sans-serif;
            cursor: pointer
        }

        .hd {
            position: absolute;
            left: 32px;
            top: 6px;
            color: #de4691;
            font-size: 24px;
            font-weight: bold
        }

        .bd {
            position: absolute;
            left: 32px;
            top: 37px;
            color: #bdc3c7;
            font-size: 16px
        }

        .hvr {
            position: absolute;
            left: 0;
            top: 0;
            width: 0;
            height: 64px;
            background: #313131;
            z-index: -10;
            transition: all .3s
        }

        .btn:hover .hvr {
            width: 100%
        }

        .btn:last-child {
            border: 0
        }

        .subbtn {
            position: relative;
            left: 0;
            top: 64px;
            width: 100%;
            height: 24px;
            padding-left: 64px;
            padding-top: 4px;
            padding-bottom: 4px;
            color: #95a5a6;
            transition: all 0.3s
        }

        .subbtn:hover {
            color: #bdc3c7
        }

        #menubtn {
            position: fixed;
            left: 208px;
            top: 0;
            width: 48px;
            height: 48px;
            background: #212121;
            z-index: 1;
            cursor: pointer;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,.2);
            transition: box-shadow .3s ease-in-out
        }

        #menubtn:hover {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,.2),0 8px 16px 0 rgba(0,0,0,.2)
        }

        #menu::-webkit-scrollbar {
            width: 4px
        }

        #menu::-webkit-scrollbar-thumb {
            border-radius: 2px;
            background-color: #de4691
        }

        #menubtn * {
            position: absolute;
            left: 12px;
            top: calc(50% - 1px);
            right: 12px;
            height: 2px;
            background: #fff
        }

        #ln1 {
            transform-origin: 50% 50%;
            transform: rotate(45deg)
        }

        #ln2 {
            opacity: 0
        }

        #ln3 {
            transform-origin: 50% 50%;
            transform: rotate(-45deg)
        }

        #main {
            position: fixed;
            left: 256px;
            top: 0;
            width: calc(100% - 256px);
            height: 100%;
            background-image: url("http://blog.teamtreehouse.com/wp-content/uploads/2013/08/multiplane_landscape.png");
            background-size: cover;
            color: #34495e;
            font-family: Script;
            font-size: 36px;
            z-index: -2
        }
    </style>
</head>
<body>
<div id="menu">
    <div id="menubtn">
        <div id="ln1"></div>
        <div id="ln2"></div>
        <div id="ln3"></div>
    </div>
    <img id="ava" src="http://brightguyfilms.com/wp-content/uploads/2016/06/avatar-blank-male.png" width="192" height="192">
    <div id="btns">
        <div class="btn" id="btn1">
            <div class="hvr"></div><span class="hd">Item</span><span class="bd">Description</span>
            <div class="subbtn" id="bt11">Subitem</div>
            <div class="subbtn" id="btn11">Subitem</div>
        </div>
        <div class="btn" id="btn2">
            <div class="hvr"></div><span class="hd">Item</span><span class="bd">Description</span>
        </div>
        <div class="btn" id="bt2">
            <div class="hvr"></div><span class="hd">Item</span><span class="bd">Description</span>
        </div>
    </div>
</div>
<div id="main"></div>
<script>
    var arrBtn = Object.keys(document.getElementsByClassName('subbtn')).map(function(k) {return document.getElementsByClassName('subbtn')[k]});
    arrBtn.forEach(function(e) {e.onclick = function() {
        event.stopPropagation()
    }});

    var arrBtn = Object.keys(document.getElementsByClassName('btn')).map(function(k) {return document.getElementsByClassName('btn')[k]});
    arrBtn.forEach(function(e) {e.onclick = function() {
        var n = e.getElementsByClassName('subbtn').length;
        if (n == 0) return;
        var subHt = e.clientHeight;
        if (subHt == 64) {
            function move() {
                subHt++;
                e.style.height = subHt + 'px';
                if (subHt == 64 + 32*n) clearInterval(event)
            }
            var event = setInterval(move,1)
        }
        else if (subHt == 64 + 32*n) {
            function move() {
                subHt--;
                e.style.height = subHt + 'px';
                if (subHt == 64) clearInterval(event)
            }
            var event = setInterval(move,1)
        }
    }})

    menubtn.onclick = function() {
        if (menubtn.offsetLeft == 0) openmenu();
        if (menubtn.offsetLeft == 208) closemenu()
    }

    function openmenu() {
        var menubtnLeft = 0, menuLeft = -256, mainLeft = 0,
            ln1Top = 48/4-1, ln3Top = 48/4*3-1, ln2Opa = 1, ln1Ang = 0, ln3Ang = 0;
        function move() {
            menuLeft += 8; menu.style.left = menuLeft + 'px';
            mainLeft += 8; main.style.left = mainLeft + 'px';
            main.style.width = 'calc(100% - ' + mainLeft + 'px)';
            if (menuLeft > -208 && menubtnLeft < 208) {
                menubtnLeft += 8; menubtn.style.left = menubtnLeft + 'px'
            }
            if (ln1Top < 48/2-1) {
                ln1Top++; ln1.style.top = ln1Top + 'px';
                ln3Top--; ln3.style.top = ln3Top + 'px'
            } else if (ln1Ang < 45) {
                ln1Ang += 2.5; ln3Ang -= 2.5;
                ln1.style.transform = 'rotate(' + ln1Ang + 'deg)';
                ln3.style.transform = 'rotate(' + ln3Ang + 'deg)'
            }
            if (ln2Opa > 0) {ln2Opa -= .1; ln2.style.opacity = ln2Opa.toString()}
            if (menuLeft == 0) clearInterval(event)
        }
        var event = setInterval(move,1)
    }

    function closemenu() {
        var menubtnLeft = 208, menuLeft = 0, mainLeft = 256, mainWt = window.innerWidth - 256,
            ln1Top = ln3Top = 48/2-1, ln2Opa = 0, ln1Ang = 45, ln3Ang = -45;
        function move() {
            menuLeft -= 8; mainLeft -= 8;
            menu.style.left = menuLeft + 'px';
            main.style.left = mainLeft + 'px';
            main.style.width = 'calc(100% - ' + mainLeft + 'px)';
            if (menubtnLeft > 0) {menubtnLeft -= 8; menubtn.style.left = menubtnLeft + 'px'}
            if (ln1Ang > 0) {
                ln1Ang -= 2.5; ln1.style.transform = 'rotate(' + ln1Ang + 'deg)';
                ln3Ang += 2.5; ln3.style.transform = 'rotate(' + ln3Ang + 'deg)'
            } else {
                if (ln1Top > 48/4-1) {
                    ln1Top--; ln1.style.top = ln1Top + 'px';
                    ln3Top++; ln3.style.top = ln3Top + 'px'
                }
                if (ln2Opa < 1) {ln2Opa += .1; ln2.style.opacity = ln2Opa.toString()}
            }
            if (menuLeft == -256) clearInterval(event)
        }
        var event = setInterval(move,1)
    }
</script>
</body>
</html>