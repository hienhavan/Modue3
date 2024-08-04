package Case_Module3.login.test;

import Case_Module3.login.model.DTO.WalletDTO;
import Case_Module3.login.model.EWalletsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "showAllWallet",urlPatterns = "/showAllWallet")
public class ShowAllWallet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<WalletDTO> wallet = new ArrayList<WalletDTO>();
        try {
            wallet = EWalletsDao.showWalletInformation();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        HttpSession session = req.getSession();
        session.setAttribute("wallet", wallet);
        req.getRequestDispatcher("/view/test.jsp").forward(req, resp);
    }
}
