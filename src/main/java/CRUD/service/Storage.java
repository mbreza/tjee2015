package CRUD.service;

        import java.util.ArrayList;
        import java.util.List;

        import CRUD.domain.Car;

public class Storage {

    public List<Car> cars = new ArrayList<Car>();


    public void add(Car car){
        Car newCar = new Car(car.getMarka(), car.getModel(), car.getKolor(), car.getRok_produkcji(), car.getOpis());
        cars.add(newCar);
    }



    public List<Car> getAllCars(){
        return cars;
    }


}