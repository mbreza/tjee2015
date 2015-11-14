package CRUD.domain;

public class Car {

    private static int samochodID = 0;


    private int id_samochod;
    private String marka;
    private String model;
    private String kolor;
    private int rok_produkcji;
    private String opis;

    public Car() {
        super();
    }

    public Car(String Marka, String Model, String Kolor, int Rok_produkcji, String Opis) {
        super();

        this.id_samochod = ++samochodID;
        this.marka = Marka;
        this.model = Model;
        this.kolor = Kolor;
        this.rok_produkcji = Rok_produkcji;
        this.opis = Opis;
    }


    public  int getId_samochod() {
        return id_samochod;
    }

    public void setId_samochod(int Id_samochod) {
        this.id_samochod = Id_samochod;
    }

    public String getMarka() {
        return marka;
    }

    public void setMarka(String Marka) {
        this.marka = Marka;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String Model) {
        this.model = Model;
    }

    public String getKolor() {
        return kolor;
    }

    public void setKolor(String Kolor) {
        this.kolor = Kolor;
    }

    public int getRok_produkcji() {
        return rok_produkcji;
    }

    public void setRok_produkcji(int Rok_produkcji) {
        this.rok_produkcji = Rok_produkcji;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String Opis) {
        this.opis = Opis;
    }
}
