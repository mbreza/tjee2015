package CRUD.service;

        import java.util.ArrayList;
        import java.util.List;

        import CRUD.domain.Car;
        import CRUD.domain.Emp;
        import CRUD.domain.Rent;

public class Storage {

    public List<Car> cars = new ArrayList<Car>();
    public List<Emp> emps = new ArrayList<Emp>();
    public List<Rent> rents = new ArrayList<Rent>();

    public void add(Car car){
        Car newCar = new Car(car.getMarka(), car.getModel(), car.getKolor(), car.getRok_produkcji(), car.getOpis());
        cars.add(newCar);
    }

    public void add(Emp emp){
        Emp newEmp = new Emp(emp.getImie(), emp.getNazwisko(), emp.getStanowisko(), emp.getPesel(), emp.getPensja());
        emps.add(newEmp);
    }

    public void add(Rent rent){
        Rent newRent = new Rent(rent.getSamochodID(), rent.getPracownikID());
        rents.add(newRent);
    }

    public List<Car> getAllCars(){
        return cars;
    }

    public List<Emp> getAllEmps(){
        return emps;
    }

    public List<Rent> getAllRents(){
        return rents;
    }
}