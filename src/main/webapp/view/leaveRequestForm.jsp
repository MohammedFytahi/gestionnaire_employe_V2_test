<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Demande de congé</title>
</head>
<body>
<h2>Soumettre une demande de congé</h2>

<form action="${pageContext.request.contextPath}/submitLeaveRequest" method="post" enctype="multipart/form-data">
  <label for="startDate">Date de début :</label>
  <input id="startDate" type="date" name="startDate" required><br><br>

  <label for="endDate">Date de fin :</label>
  <input id="endDate" type="date" name="endDate" required><br><br>

  <label for="leaveReason">Motif :</label>
  <textarea id="leaveReason" name="leaveReason" required></textarea><br><br>

  <label for="supportingDocs">Documents justificatifs :</label>
  <input id="supportingDocs" type="file" name="supportingDocs"><br><br>

  <input type="submit" value="Soumettre la demande">
</form>
</body>
</html>
