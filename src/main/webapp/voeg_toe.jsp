<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Voeg_Toe</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<header>
    <div class="grid-containerIndex">
        <h1 class="titel">Mijn Doelpunten</h1>
        <h2 class="naamPagina">Voeg Toe</h2>
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
    <h3>Vul de gegevens in:</h3>
    <form method="POST" action="Servlet?command=voeg_toe" novalidate>
        <div class="Voeg-toeContainer">
            <div>
                <label for="Seizoen">Seizoen: </label>
                <input id="Seizoen" name="Seizoen" type="text" placeholder="S+jaartal">
            </div>
            <div>
                <label for="ploeg">Ploeg: </label>
                <select id="ploeg" name="ploeg">
                    <option value="Tempo Overijse">Tempo Overijse</option>
                    <option value="OHR Huldenberg">Huldenberg</option>
                </select>
            </div>
            <div>
                <label for="jaar">Jaar: </label>
                <input id="jaar" name="jaar" type="number">
            </div>
            <div>
                <label for="wedstrijden">Aantal wedstrijden: </label>
                <input id="wedstrijden" name="Aantal wedstrijden" type="number">
            </div>
            <div>
                <label for="doelpunten">Aantal Doelpunten: </label>
                <input id="doelpunten" name="Aantal doelpunten" type="number">
            </div>
            <div>
                <input type="submit" value="Voeg Seizoen toe">
            </div>
        </div>

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
