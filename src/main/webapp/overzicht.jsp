<%@ page import="java.util.ArrayList" %>
<%@ page import="domain.model.Seizoen" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="domain.db.SeizoenDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Overzicht</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<header>
    <div class="grid-containerIndex">
        <h1 class="titel">Mijn Doelpunten</h1>
        <h2 class="naamPagina">Overzicht</h2>
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
    <h3>Doelpunten:</h3>
    <table>
        <thead>
        <tr>
            <th>Ploeg</th>
            <th>Jaar</th>
            <th>Aantal wedstrijden</th>
            <th>Aantal Doelpunten</th>
            <th>Gemiddelde aantal doelpunten per wedstrijd</th>
            <th>Aanpassen?</th>
            <th>Verwijderen?</th>
        </tr>
        </thead>

        <tbody>
        <% ArrayList<Seizoen> seizoenen = (ArrayList<Seizoen>) request.getAttribute("seizoenen");%>
        <%
            for (Seizoen seizoen: seizoenen){
        %>
        <tr>
            <td><%=seizoen.getPloeg()%></td>
            <td><%=seizoen.getJaar()%></td>
            <td><%=seizoen.getWedstrijden()%></td>
            <td><%=seizoen.getDoelpunten()%></td>
            <td><%=seizoen.getDoelpunten()/seizoen.getWedstrijden()%></td>
            <td>
                <nav class="navOverzicht"><a href="#">Pas Aan</a></nav>
            </td>
            <td>
                <nav class="navOverzicht"><a href="Servlet?command=verwijderBevestiging&seizoen=<%=seizoen.getSeizoen()%>">Verwijderen</a></nav>
            </td>
        </tr>
        <%
            }
        %>

        </tbody>
    </table>
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
