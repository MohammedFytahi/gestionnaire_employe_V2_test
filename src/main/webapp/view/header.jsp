<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
    <nav class="navbar">
        <div class="container">
            <a href="/" class="logo">Mon Application</a>
            <ul class="nav-links">
                <li><a href="/home">Home</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/services">Services</a></li>
                <li><a href="/contact">Contact</a></li>

                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <li><a href="ListOffreServlet">Offres</a></li>
                        <c:if test="${sessionScope.user.role == 'RH'}">
                            <li><a href="addOffre">Ajouter Offre</a></li>
                        </c:if>
                        <c:if test="${sessionScope.user.role == 'ADMIN'}">
                            <li><a href="adminLeaveRequests">Voir Demandes de Congé</a></li>
                        </c:if>
                        <c:if test="${sessionScope.user.role == 'EMPLOYE'}">
                            <li><a href="view/leaveRequestForm.jsp">Demande de congé</a></li>
                        </c:if>
                        <li><a href="logout">Déconnexion</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="login">Login</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
</header>

<style>
    .navbar {
        background-color: #333; /* Couleur de fond sombre */
        color: #fff; /* Couleur du texte */
        padding: 15px;
        position: relative; /* Nécessaire pour le z-index */
        z-index: 1000; /* Pour être au-dessus des autres éléments */
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3); /* Ombre pour la profondeur */
    }
    .navbar .container {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .logo {
        font-size: 24px;
        font-weight: bold;
        color: white;
        text-decoration: none;
    }
    .nav-links {
        list-style-type: none;
    }
    .nav-links li {
        display: inline;
        margin-right: 20px;
    }
    .nav-links li a {
        color: white; /* Couleur du texte */
        text-decoration: none;
        font-size: 18px;
    }
    .nav-links li a:hover {
        text-decoration: underline; /* Effet au survol */
    }
</style>
