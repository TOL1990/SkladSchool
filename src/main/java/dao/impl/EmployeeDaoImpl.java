package dao.impl;

import dao.AbstractDAO;
import dao.EmployeeDAO;
import entity.Employee;
import entity.Stockroom;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import util.HibernateUtil;

import javax.swing.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by Тарас on 30.01.2017.
 */
public class EmployeeDaoImpl extends AbstractDAO<Long, Employee> implements EmployeeDAO {

    public Employee findById(Long id) {
        return getByKey(id);
    }

    public void addEmployee(Employee employee) throws SQLException {
        persist(employee);
    }

    public void updateEmployee(Long empl_id, Employee employee) throws SQLException {

    }

    public Employee getEmployeeById(Long empl_id) throws SQLException {
        return null;
    }

    public Collection getAllEmployees() throws SQLException {
        Criteria criteria = createEntityCriteria();
        return (List<Employee>) criteria.list();
    }
//Удаляем по id
    public void deleteEmployee(Employee employee) throws SQLException {
        Query query = getSession().createSQLQuery("delete from Employee where id = :id_employee");
        query.setLong("id_employee", employee.getId());
        query.executeUpdate();
    }

    public Collection getEmployeeByStock(Stockroom stock) throws SQLException {
        return null;
    }


/*

 Старая версия проги
    public void addEmployee(Employee employee) throws SQLException {
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(employee);
            session.getTransaction().commit();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "Ошибка при вставке", JOptionPane.OK_OPTION);
        } finally {
            if (session != null && session.isOpen()) {

                session.close();
            }
        }
    }

    public void updateEmployee(Long empl_id, Employee employee) throws SQLException {

    }

    public Employee getEmployeeById(Long empl_id) throws SQLException {
        return null;
    }

    public Collection getAllemployees() throws SQLException {
        Session session = null;
        List busses = new ArrayList<Employee>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            busses = session.createCriteria(Employee.class).list();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "Ошибка 'getAll'", JOptionPane.OK_OPTION);
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return busses;
    }

    public void deleteEmployee(Employee employee) throws SQLException {

    }

    public Collection getEmployeeByStock(Stockroom stock) throws SQLException {
        return null;
    }

    */
}
