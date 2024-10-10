package com.example.gestionaire_employe_v2.controller;

import com.example.gestionaire_employe_v2.enums.Statut;
import com.example.gestionaire_employe_v2.service.impl.LeaveRequestService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "updateLeaveRequestStatus", value = "/updateLeaveRequestStatus")
public class UpdateLeaveRequestStatusServlet extends HttpServlet {

    private final LeaveRequestService leaveRequestService = new LeaveRequestService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int requestId = Integer.parseInt(request.getParameter("requestId"));
        String action = request.getParameter("action");

        Statut newStatus;
        if ("ACCEPTER".equals(action)) {
            newStatus = Statut.ACCEPTE;
        } else if ("REFUSER".equals(action)) {
            newStatus = Statut.REJETE;
        } else {
            throw new ServletException("Action non reconnue: " + action);
        }

        leaveRequestService.updateLeaveRequestStatus(requestId, newStatus);
        response.sendRedirect(request.getContextPath() + "/adminLeaveRequests");
    }
}
