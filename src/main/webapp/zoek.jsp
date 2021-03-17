<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Zoek</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
    <div class="grid-containerIndex">
        <h1 class="titel">Mijn Doelpunten</h1>
        <h2 class="naamPagina">Zoek</h2>
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
    <form method="Get" action="Servlet" novalidate>
        <h3>Vul een seizoen in om het te zoeken.</h3>
        <p>
            <label for="seizoen">Seizoen:</label>
            <input id="seizoen" name="seizoen" type="text" placeholder="S+jaartal" required>
        </p>
        <p>
            <input id="zoek" type="submit" value="Zoek seizoen">
            <input type="hidden" name="command" value="zoek">
        </p>
    </form>
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
