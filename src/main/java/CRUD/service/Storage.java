package CRUD.service;

        import java.util.ArrayList;
        import java.util.List;

        import CRUD.domain.Car;
        import CRUD.domain.Emp;

public class Storage {

    public List<Car> cars = new ArrayList<Car>();
    public List<Emp> emps = new ArrayList<Emp>();

    public void add(Car car){
        Car newCar = new Car(car.getMarka(), car.getModel(), car.getKolor(), car.getRok_produkcji(), car.getOpis());
        cars.add(newCar);
    }

    public void add(Emp emp){
        Emp newEmp = new Emp(emp.getImie(), emp.getNazwisko(), emp.getStanowisko(), emp.getPesel(), emp.getPensja());
        emps.add(newEmp);
    }

    public List<Car> getAllCars(){
        return cars;
    }

    public List<Emp> getAllEmps(){
        return emps;
    }
}