package com.example.gestionaire_employe_v2.repository.impl;

import com.example.gestionaire_employe_v2.enums.Statut;
import com.example.gestionaire_employe_v2.model.LeaveRequest;
import com.example.gestionaire_employe_v2.util.JPAUtil;
import jakarta.persistence.*;

import java.util.List;

public class LeaveRequestRepository {


    public void save(LeaveRequest leaveRequest) {
        EntityManager entityManager = JPAUtil.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            entityManager.persist(leaveRequest);
            transaction.commit();
        }catch (Exception e){
            if (transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }finally {
            entityManager.close();
        }


    }

    public List<LeaveRequest> findAll() {
        EntityManager entityManager = JPAUtil.getEntityManager();
        TypedQuery<LeaveRequest> query = entityManager.createQuery("SELECT lr FROM LeaveRequest lr", LeaveRequest.class);
        return query.getResultList();
    }

    public void updateStatus(int requestId, Statut status) {
        EntityManager entityManager = JPAUtil.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            LeaveRequest leaveRequest = entityManager.find(LeaveRequest.class, requestId);
            if (leaveRequest != null) {
                leaveRequest.setStatus(status);
                transaction.commit();
            }
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }
}
