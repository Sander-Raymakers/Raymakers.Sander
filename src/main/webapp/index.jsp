<%@ page import="domain.db.SeizoenDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<header>
    <div class="grid-containerIndex">
        <h1 class="titel">Mijn Doelpunten</h1>
        <h2 class="naamPagina">Home</h2>
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
    <h3>Info:</h3>
    <article>
        <p>Deze website is gemaakt om al mijn doelpunten bij te houden doorheen de jaren dat ik voetbal speelde.</p>
        <!--
        <p>Gemiddelde aantal doelpunten: ((SeizoenDB)request.getAttribute("gemiddeldeDoelpunten")).gemiddeldAantalDoelpunten()%>.</p>
        <p>Hoogst aantal doelpunten:  ((SeizoenDB)request.getAttribute("hoogstAantalDoelpunten")).hoogstAantalDoelpunten()%></p>
        -->
    </article>
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