<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="nl">
<head>
    <title>Verwijderen?</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
    <div class="grid-containerIndex">
        <h1 class="titel">Mijn Doelpunten</h1>
        <h2 class="naamPagina">Verwijderen?</h2>
        <div class="navBar">
            <nav>
                <ul>
                    <li><a href="Servlet?command=home">Home</a></li>
                    <li><a href="Servlet?command=overzicht">Overzicht</a></li>
                    <li><a href="voeg_toe.jsp">Voeg Toe</a></li>
                    <li><a href="zoek.jsp">Zoek</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<main>
    <h3>Verwijderen?</h3>
    <p>Ben je zeker dat dit seizoen <%= request.getParameter("seizoen")%> wil verwijderen?</p>
    <form action="Servlet?command=delete&seizoen=<%= request.getParameter("seizoen")%>" method="POST">
        <input type="submit" value="Ja"/>
    </form>
    <p><a href="Servlet?command=overzicht">Cancel</a> indien je <%= request.getParameter("seizoen")%> niet wil verwijderen</p>
</main>
<footer>
    <div class="footer-container">
        <p>r0785279</p>
        <p>Webontwikkeling 2</p>
        <p>2020-2021</p>
    </div>
</footer>
</body>
</html>
