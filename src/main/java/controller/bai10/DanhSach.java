package controller.bai10;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "dskh", urlPatterns = "/ds")
public class DanhSach extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ServletException, IOException {
        ArrayList<ThongTinKhachHang> list = new ArrayList<ThongTinKhachHang>();
        list.add(new ThongTinKhachHang("a", "12-12-12", "hn", "https://th.bing.com/th/id/R.d4ac6b0d44e20bf6e9b8a61ccc09f8fc?rik=k%2fpXBCUfkq%2fgeA&pid=ImgRaw&r=0"));
        list.add(new ThongTinKhachHang("b", "13-13-13", "dn", "https://wall.vn/wp-content/uploads/2020/04/anh-dep-viet-nam-12.jpg"));
        list.add(new ThongTinKhachHang("c", "1-1-1", "hp", "https://th.bing.com/th/id/R.1c5193f51ad9e7c7ccdd7766a5f29113?rik=CJUIs6xelFnv1g&riu=http%3a%2f%2fthuthuatphanmem.vn%2fuploads%2f2018%2f09%2f11%2fhinh-anh-dep-11_044127919.jpg&ehk=HYnGHiCmwCg9jjQVYivEaTcby%2blBBfnJdu6%2bEEzi5Yc%3d&risl=&pid=ImgRaw&r=0"));
        list.add(new ThongTinKhachHang("d", "2-2-2", "nd", "https://wall.vn/wp-content/uploads/2020/04/anh-dep-viet-nam-17.jpg"));
        request.setAttribute("list", list);
        request.getRequestDispatcher("bai10/danhsach.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response){}

}