<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Calcul des Allocations Familiales</title>
</head>
<body>
<h1>Calcul des Allocations Familiales</h1>
<form action="${pageContext.request.contextPath}/calculateAllowance" method="post">

  <label for="employeId">ID de l'employé:</label>
  <input type="number" id="employeId" name="employeId" required>
  <button type="submit">Calculer</button>
</form>
</body>
</html>
