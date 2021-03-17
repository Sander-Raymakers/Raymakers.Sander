package domain.model;

import java.util.Objects;

public class Seizoen {
    private String seizoen,ploeg;
    private int jaar,doelpunten,wedstrijden;

    public Seizoen(String seizoen,String ploeg, int jaar, int doelpunten, int wedstrijden) {
       this.setSeizoen(seizoen);
       this.setPloeg(ploeg);
       this.setJaar(jaar);
       this.setDoelpunten(doelpunten);
       this.setWedstrijden(wedstrijden);
    }

    public String getSeizoen() {
        return seizoen;
    }

    public void setSeizoen(String seizoen) {
        this.seizoen = seizoen;
    }

    public String getPloeg() {
        return ploeg;
    }

    public void setPloeg(String ploeg) {
        this.ploeg = ploeg;
    }

    public int getJaar() {
        return jaar;
    }

    public void setJaar(int jaar) {
        if(jaar < 2013 || jaar > 2022){
            throw new IllegalArgumentException("Foute ingave jaartal.");
        }
        this.jaar = jaar;
    }

    public int getDoelpunten() {
        return doelpunten;
    }

    public void setDoelpunten(int doelpunten) {
        if (doelpunten < 0){
            throw new IllegalArgumentException("Kan niet negatief zijn.");
        }
        this.doelpunten = doelpunten;
    }

    public int getWedstrijden() {
        return wedstrijden;
    }

    public void setWedstrijden(int wedstrijden) {
        if (wedstrijden < 0){
            throw new IllegalArgumentException("Kan niet negatief zijn.");
        }
        this.wedstrijden = wedstrijden;
    }


    public boolean equals(Object o) {
        if(o instanceof Seizoen){
            return this.getSeizoen().equals(((Seizoen)o).getSeizoen());
        }
        return false;
    }
}
