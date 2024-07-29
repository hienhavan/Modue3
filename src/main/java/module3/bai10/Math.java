
package module3.bai10;

import java.io.Serializable;

public class Math implements Serializable {
    private String num1 = " ", num2 = " ", op = " ";

    public Math() {
    }

    public Math(String num1, String num2, String op) {
        this.num1 = num1;
        this.num2 = num2;
        this.op = op;
    }

    public String getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public String getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public String getResult() {
        String rs = " ";
        try {
            double a, b;
            a = Double.parseDouble(num1);
            b = Double.parseDouble(num2);


            switch (op) {
                case "+":
                    rs = "tong:" + (a + b);
                    break;
                case "-":
                    rs = "hieu:" + (a - b);
                    break;
                case "*":
                    rs = "tich:" + (a * b);
                    break;
                case ":":
                    if (b != 0) {
                        rs = "thuong:" + (a / b);
                    } else
                        rs = "mau phai khac 0!";
                    break;
            }
        } catch (NumberFormatException e) {
            rs = "khong phai la so";
            System.out.println(rs);


        }
        return rs;
    }

}
