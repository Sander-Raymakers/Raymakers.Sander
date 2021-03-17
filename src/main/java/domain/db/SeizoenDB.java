package domain.db;

import domain.model.Seizoen;

import java.util.ArrayList;

public class SeizoenDB {
    private ArrayList<Seizoen> seizoenen = new ArrayList<Seizoen>();

    public SeizoenDB(){
        this.addSeizoen(new Seizoen("S2019","Tempo Overijse",2019, 15,15));
        this.addSeizoen(new Seizoen("S2020","OHR Huldenberg",2020, 0,3));
    }

    public Seizoen findSeizoen(String seizoen){
        for (Seizoen s : seizoenen){
            if(s.getSeizoen().equals(seizoen)){
                return s;
            }
        }
        return null;
    }

    public ArrayList<Seizoen> getSeizoenen(){
        return seizoenen;
    }

    public boolean pasSeizoenAan(Seizoen s,Seizoen nieuweS ){
        seizoenen.remove(s);
        seizoenen.add(nieuweS);
        return true;
    }

    public void addSeizoen(Seizoen s){
            this.seizoenen.add(s);
    }

    public void removeSeizoen(String s){
        seizoenen.remove(this.findSeizoen(s));
    }

    public double gemiddeldAantalDoelpunten(){
        double somD = 0;
        double somW = 0;
        double gem = 0;
        for (Seizoen s : seizoenen){
            somD += s.getDoelpunten();
            somW += s.getWedstrijden();
        }
        gem = somD/somW;
        return gem;
    }

    public int hoogstAantalDoelpunten(){
        int max = 0;
        for(Seizoen s : seizoenen){
            if(s.getDoelpunten() > max){
                max = s.getDoelpunten();
            }
        }
        return max;
    }

}