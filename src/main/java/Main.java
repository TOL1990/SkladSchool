import entity.Employee;
import util.Factory;

import java.sql.SQLException;
import java.util.Collection;
import java.util.Iterator;


/**
 * Created by Тарас on 01.02.2017.
 */
public class Main {
    public static void main(String[] args) throws SQLException {

        Collection employees = Factory.getInstance().getEmployeeDAO().getAllEmployees();

//        Employee pes = new Employee("Пес", "Шариков", "Йоркович", "Учитель");
//        Factory.getInstance().getEmployeeDAO().addEmployee(pes);
        Iterator iterator = employees.iterator();
        System.out.println("========Все сотрудники=========");
        while (iterator.hasNext()) {
            Employee employee = (Employee) iterator.next();
            System.out.println("User : " + employee.getFirstName() + " " + employee.getLastName() );


//            Collection busses = Factory.getInstance().getBusDAO().getBussesByRoute(employee);
//            Iterator iterator2 = busses.iterator();
//            while (iterator2.hasNext()) {
//                Bus bus = (Bus) iterator2.next();
//                System.out.println("Автобус № " + bus.getNumber());
//            }
        }
    }
}
