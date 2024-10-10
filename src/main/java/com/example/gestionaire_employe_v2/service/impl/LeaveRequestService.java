package com.example.gestionaire_employe_v2.service.impl;

import com.example.gestionaire_employe_v2.enums.Statut;
import com.example.gestionaire_employe_v2.model.LeaveRequest;
import com.example.gestionaire_employe_v2.repository.impl.LeaveRequestRepository;

import java.util.List;


public class LeaveRequestService {
    private final LeaveRequestRepository leaveRequestRepository = new LeaveRequestRepository();

    public void createLeaveRequest(LeaveRequest leaveRequest) {
        leaveRequestRepository.save(leaveRequest);
    }

    public List<LeaveRequest> getAllLeaveRequests() {
        return leaveRequestRepository.findAll(); // Cette méthode doit être implémentée dans le repository
    }

    public void updateLeaveRequestStatus(int requestId, Statut status) {
        leaveRequestRepository.updateStatus(requestId, status); // Implémentez cette méthode pour mettre à jour le statut
    }
}
