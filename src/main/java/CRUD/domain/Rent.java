package CRUD.domain;


public class Rent {


    private static int wypozyczenieID = 0;


    private int id_wypozyczenie;
    private int samochodID;
    private int pracownikID;

    public Rent() {
        super();
    }

    public int getId_wypozyczenie() {
        return id_wypozyczenie;
    }

    public void setId_wypozyczenie(int id_wypozyczenie) {
        this.id_wypozyczenie = id_wypozyczenie;
    }

    public int getSamochodID() {
        return samochodID;
    }

    public void setSamochodID(int samochodID) {
        this.samochodID = samochodID;
    }

    public int getPracownikID() {
        return pracownikID;
    }

    public void setPracownikID(int pracownikID) {
        this.pracownikID = pracownikID;
    }

    public Rent(int SamochodID, int PracownikID) {
        super();

        this.id_wypozyczenie = ++wypozyczenieID;
        this.samochodID = SamochodID;
        this.pracownikID = PracownikID;
    }


}
