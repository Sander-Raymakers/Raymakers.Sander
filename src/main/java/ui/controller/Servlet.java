package ui.controller;


import domain.db.SeizoenDB;
import domain.model.Seizoen;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.SimpleTimeZone;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    private SeizoenDB db = new SeizoenDB();
    public Servlet() {
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    private void processRequest(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        String destination;
        String command = request.getParameter("command");
        if(command == null)
            command = "";
        switch (command){
            case "home":
                destination = home(request,response);
                break;
            case "overzicht":
                destination = overzicht(request, response);
                break;
            case "voeg_toe":
                destination = voeg_toe(request, response);
                break;
            case "verwijder":
                destination = verwijder(request, response);
                break;
            case "verwijderBevestiging":
                destination = verwijderBevestiging(request,response);
                break;
            case "zoek":
                destination = zoek(request,response);
                break;
            default:
                destination = home(request,response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String home(HttpServletRequest request,HttpServletResponse response){
        double gemiddeldeDoelpunten = db.gemiddeldAantalDoelpunten();
        int hoogstAantalDoelpunten = db.hoogstAantalDoelpunten();
        request.setAttribute("gemiddeldeDoelpunten",gemiddeldeDoelpunten);
        request.setAttribute("hoogstAantalDoelpunten",hoogstAantalDoelpunten);
        return "index.jsp";
    }

    private String overzicht(HttpServletRequest request,HttpServletResponse response){
        double gemiddeldeDoelpunten = db.gemiddeldAantalDoelpunten();
        int hoogstAantalDoelpunten = db.hoogstAantalDoelpunten();
        request.setAttribute("gemiddeldeDoelpunten",gemiddeldeDoelpunten);
        request.setAttribute("hoogstAantalDoelpunten",hoogstAantalDoelpunten);
        request.setAttribute("seizoenen", db.getSeizoenen());
        return "overzicht.jsp";
    }

    private String voeg_toe(HttpServletRequest request,HttpServletResponse response){
        String seizoen = request.getParameter("seizoen");
        String ploeg = request.getParameter("ploeg");
        String jaar = request.getParameter("jaar");
        String doelpunten = request.getParameter("doelpunten");
        String wedstrijden = request.getParameter("wedstrijden");
        if(!seizoen.isEmpty() && !ploeg.isEmpty() && !jaar.isEmpty() && !doelpunten.isEmpty() && !wedstrijden.isEmpty()){
            Seizoen seizoen1 = new Seizoen(seizoen,ploeg,Integer.parseInt(jaar),Integer.parseInt(doelpunten),Integer.parseInt(wedstrijden));
            db.addSeizoen(seizoen1);
            return overzicht(request,response);
        } else {
            return "voeg_toe.jsp";
        }
    }

    private String verwijder(HttpServletRequest request,HttpServletResponse response){
        String seizoen = request.getParameter("seizoen");
        db.removeSeizoen(seizoen);
        return overzicht(request,response);
    }

    private String verwijderBevestiging(HttpServletRequest request,HttpServletResponse response){
        return "bevestigingVerwijderen.jsp";
    }

    private String zoek(HttpServletRequest request,HttpServletResponse response){
        String seizoen = request.getParameter("seizoen");

        String destination = "nietGevonden.jsp";
        if(db.findSeizoen(seizoen) != null){
            destination = "gevonden.jsp";
        }
        return destination;
    }
}

