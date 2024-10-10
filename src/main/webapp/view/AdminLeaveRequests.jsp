<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Demandes de Congé</title>
</head>
<body>
<h2>Demandes de Congé</h2>

<table border="1">
  <tr>
    <th>ID</th>
    <th>ID Employé</th>
    <th>Date de Début</th>
    <th>Date de Fin</th>
    <th>Motif</th>
    <th>Statut</th>
    <th>Actions</th>
  </tr>
  <c:forEach var="request" items="${leaveRequests}">
    <tr>
      <td>${request.id}</td>
      <td>${request.employeeId}</td>
      <td>${request.startDate}</td>
      <td>${request.endDate}</td>
      <td>${request.leaveReason}</td>
      <td>${request.status}</td>
      <td>
        <form action="${pageContext.request.contextPath}/updateLeaveRequestStatus" method="post">
          <input type="hidden" name="requestId" value="${request.id}">
          <button type="submit" name="action" value="ACCEPTER">Accepter</button>
          <button type="submit" name="action" value="REFUSER">Refuser</button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
