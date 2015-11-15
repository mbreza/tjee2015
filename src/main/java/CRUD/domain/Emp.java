package CRUD.domain;

public class Emp {

    private static int pracownikID = 0;


    private int id_pracownik;
    private String imie;
    private String nazwisko;
    private String stanowisko;
    private int pesel;
    private int pensja;

    public Emp() {
        super();
    }

    public Emp(String Imie, String Nazwisko, String Stanowisko, int Pesel, int Pensja) {
        super();

        this.id_pracownik = ++pracownikID;
        this.imie = Imie;
        this.nazwisko = Nazwisko;
        this.stanowisko = Stanowisko;
        this.pesel = Pesel;
        this.pensja = Pensja;
    }

    public int getId_pracownik() {
        return id_pracownik;
    }

    public void setId_pracownik(int id_pracownik) {
        this.id_pracownik = id_pracownik;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getStanowisko() {
        return stanowisko;
    }

    public void setStanowisko(String stanowisko) {
        this.stanowisko = stanowisko;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public int getPesel() {
        return pesel;
    }

    public void setPesel(int pesel) {
        this.pesel = pesel;
    }

    public int getPensja() {
        return pensja;
    }

    public void setPensja(int pensja) {
        this.pensja = pensja;
    }
}
