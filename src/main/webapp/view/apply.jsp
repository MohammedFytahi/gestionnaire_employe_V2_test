<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Apply for Job Offer</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 20px;
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .form-container {
      max-width: 400px; /* Limite la largeur du formulaire */
      margin: 0 auto; /* Centre le formulaire sur la page */
      background-color: white;
      padding: 20px;
      border-radius: 8px; /* Arrondir les coins */
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Ombre légère pour le formulaire */
    }

    label {
      display: block; /* Affiche les labels en bloc */
      margin-bottom: 5px; /* Espacement entre le label et le champ */
      color: #555; /* Couleur du texte des labels */
    }

    input[type="text"],
    input[type="email"],
    textarea {
      width: 100%; /* Champs prennent toute la largeur */
      padding: 10px; /* Espacement interne */
      margin-bottom: 15px; /* Espacement entre les champs */
      border: 1px solid #ddd; /* Bordure grise */
      border-radius: 4px; /* Arrondir les coins */
      font-size: 14px; /* Taille de police */
      transition: border-color 0.3s; /* Animation de la couleur de la bordure */
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    textarea:focus {
      border-color: #007BFF; /* Bordure bleue au focus */
      outline: none; /* Supprime l'outline par défaut */
    }

    button {
      background-color: #007BFF; /* Couleur du bouton */
      color: white; /* Couleur du texte du bouton */
      padding: 10px 15px; /* Espacement interne */
      border: none; /* Pas de bordure */
      border-radius: 5px; /* Coins arrondis */
      cursor: pointer; /* Curseur pointeur au survol */
      font-size: 16px; /* Taille de police */
      transition: background-color 0.3s; /* Animation de la couleur de fond */
      width: 100%; /* Prend toute la largeur du conteneur */
    }

    button:hover {
      background-color: #0056b3; /* Couleur plus sombre au survol */
    }
  </style>
</head>
<body>
<h1>Apply for: ${offre.title}</h1>
<div class="form-container">
  <form action="<c:url value='/ApplicationServlet' />" method="post">
    <label for="candidateName">Candidate Name:</label>
    <input type="text" id="candidateName" name="candidateName" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="skills">Skills (comma-separated):</label>
    <textarea id="skills" name="skills" required></textarea>

    <input type="hidden" name="offreId" value="${offre.id}">

    <button type="submit">Submit Application</button>
  </form>
</div>
</body>
</html>
