package Case_Module3.login.controller.controller_e_wallets;

import Case_Module3.login.model.DTO.WalletDTO;
import Case_Module3.login.model.EWalletsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name ="showWalletInformationWhereId",urlPatterns = "/showWalletInformationWhereId")
public class ShowWalletInformationWhereId extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idWallet = Integer.parseInt(req.getParameter("idwallet"));
        List<WalletDTO> wallet;
        try {
            wallet = EWalletsDao.showWalletInformationWhereId(idWallet);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        req.setAttribute("wallet", wallet);
        req.getRequestDispatcher("view/e_wallets/walletInformation.jsp").forward(req, resp);

    }
}
