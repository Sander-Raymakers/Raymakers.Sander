<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="nl">
<head>
    <title>Niet Gevonden</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
    <div class="grid-containerIndex">
        <h1 class="titel">Mijn Doelpunten</h1>
        <h2 class="naamPagina">Niet Gevonden</h2>
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
<p>Het seizoen <%= request.getParameter("seizoen")%> werd niet gevonden.</p>
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
