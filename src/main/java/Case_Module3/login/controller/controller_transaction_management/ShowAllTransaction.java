package Case_Module3.login.controller.controller_transaction_management;

import Case_Module3.login.model.DTO.TransactionDTO;
import Case_Module3.login.model.TransactionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "showAllTransaction", urlPatterns = "/showAllTransaction")
public class ShowAllTransaction extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<TransactionDTO> listTransactions = new ArrayList<TransactionDTO>();
        try {
            listTransactions = TransactionDao.showAllTransaction();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        req.setAttribute("listTransactions", listTransactions);
        req.getRequestDispatcher("/view/transaction_management/transactionManagement.jsp").forward(req, resp);
    }
}
