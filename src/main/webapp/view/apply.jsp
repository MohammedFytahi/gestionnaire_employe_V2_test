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
      max-width: 400px; /* Limit the form width */
      margin: 0 auto; /* Center the form on the page */
      background-color: white;
      padding: 20px;
      border-radius: 8px; /* Round corners */
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Light shadow for the form */
    }

    label {
      display: block; /* Display labels as block elements */
      margin-bottom: 5px; /* Spacing between label and input */
      color: #555; /* Label text color */
    }

    input[type="text"],
    input[type="email"],
    textarea {
      width: 100%; /* Inputs take full width */
      padding: 10px; /* Internal spacing */
      margin-bottom: 15px; /* Spacing between fields */
      border: 1px solid #ddd; /* Light gray border */
      border-radius: 4px; /* Round corners */
      font-size: 14px; /* Font size */
      transition: border-color 0.3s; /* Animation for border color */
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    textarea:focus {
      border-color: #007BFF; /* Blue border on focus */
      outline: none; /* Remove default outline */
    }

    button {
      background-color: #007BFF; /* Button color */
      color: white; /* Button text color */
      padding: 10px 15px; /* Internal spacing */
      border: none; /* No border */
      border-radius: 5px; /* Round corners */
      cursor: pointer; /* Pointer cursor on hover */
      font-size: 16px; /* Font size */
      transition: background-color 0.3s; /* Animation for background color */
      width: 100%; /* Full width */
    }

    button:hover {
      background-color: #0056b3; /* Darker color on hover */
    }

    /* Responsive design for smaller screens */
    @media (max-width: 480px) {
      .form-container {
        padding: 15px;
      }

      input[type="text"],
      input[type="email"],
      textarea,
      button {
        font-size: 14px; /* Adjust font size for smaller screens */
      }
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
