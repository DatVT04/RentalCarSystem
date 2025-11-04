package owner.Chat;

import DAO.MessageDAO;
import entity.Message;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author nguye
 */
@WebServlet("/owner/chatbox")
public class ChatBoxServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer ownerId = (Integer) request.getSession().getAttribute("userID");
        if (ownerId == null) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }

        String userIdStr = request.getParameter("userId");
        if (userIdStr == null) {
            response.sendRedirect(request.getContextPath() + "/owner/chatlist");
            return;
        }

        int userId = Integer.parseInt(userIdStr);
        MessageDAO messageDAO = new MessageDAO();
        List<Message> messages = messageDAO.getMessagesBetweenUsers(ownerId, userId);
        messageDAO.markAsRead(ownerId, userId);

        // In log để kiểm tra
        System.out.println("ChatBoxServlet - ownerId: " + ownerId + ", userId: " + userId);

        request.setAttribute("ownerId", ownerId);
        request.setAttribute("userId", userId);
        request.setAttribute("messages", messages);
        request.getRequestDispatcher("/owner/chat/chatBox.jsp").forward(request, response);
    }
}