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

                <!-- Si l'utilisateur est connecté -->
                <c:choose>
                    <c:when test="${not empty sessionScope.user}">

                        <!-- Lien vers "Offres" pour tous les utilisateurs connectés -->
                        <li><a href="ListOffreServlet">Offres</a></li>

                        <!-- Lien "Ajouter Offre" pour les utilisateurs RH -->
                        <c:if test="${sessionScope.user.role == 'RH'}">
                            <li><a href="addOffre">Ajouter Offre</a></li>
                        </c:if>


                        <c:if test="${sessionScope.user.role == 'EMPLOYE'}">
                            <li><a href="view/leaveRequestForm.jsp">Demande de congé</a></li>
                        </c:if>

                        <!-- Lien pour déconnexion -->
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
        background-color: #333;
        color: #fff;
        padding: 15px;
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
        color: white;
        text-decoration: none;
        font-size: 18px;
    }
    .nav-links li a:hover {
        text-decoration: underline;
    }
</style>
