package dao;

import entity.Employee;
import entity.Stockroom;

import java.sql.SQLException;
import java.util.Collection;

/**
 * Created by Тарас on 30.01.2017.
 */
public interface EmployeeDAO {
    public Employee findById(Long id);
    public void addEmployee(Employee employee) throws SQLException;
    public void updateEmployee(Long empl_id, Employee employee) throws SQLException;
    public Employee getEmployeeById(Long empl_id) throws SQLException;
    public Collection getAllEmployees() throws SQLException;
    public void deleteEmployee(Employee employee) throws SQLException;
    public Collection getEmployeeByStock(Stockroom stock) throws SQLException;


}
