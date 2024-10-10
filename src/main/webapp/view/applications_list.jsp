<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Liste des candidatures</title>
</head>
<body>
<h1>Liste des candidatures</h1>

<!-- Formulaire de filtrage -->
<form action="${pageContext.request.contextPath}/ApplicationServlet" method="get">
  <input type="text" name="skills" placeholder="Filtrer par compétences (séparées par des virgules)" />
  <input type="submit" value="Filtrer"/>
</form>

<table border="1">
  <tr>
    <th>ID</th>
    <th>Nom du candidat</th>
    <th>Email</th>
    <th>Compétences</th>

  </tr>
  <c:forEach var="application" items="${applications}">
    <tr>
      <td>${application.id}</td>
      <td>${application.candidateName}</td> <!-- Correction ici -->
      <td>${application.email}</td>
      <td>
        <c:if test="${not empty application.skills}">
          <c:forEach var="skill" items="${application.skills}">
            ${skill}<br/>
          </c:forEach>
        </c:if>
        <c:if test="${empty application.skills}">
          Aucune compétence renseignée
        </c:if>
      </td>

    </tr>
  </c:forEach>
</table>

<c:if test="${empty applications}">
  <p>Aucune candidature trouvée.</p>
</c:if>
</body>
</html>
