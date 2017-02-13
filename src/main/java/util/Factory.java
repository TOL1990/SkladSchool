package util;

import dao.EmployeeDAO;
import dao.ProductDAO;
import dao.ProductTypeDAO;
import dao.impl.EmployeeDaoImpl;

/**
 * Created by Тарас on 01.02.2017.
 */

    public class Factory {

        private static EmployeeDAO employeeDAO = null;
//        private static ProductDAO productDAO= null;
//        private static ProductTypeDAO productTypeDAO= null;
        private static Factory instance = null;

        public static synchronized Factory getInstance(){
            if (instance == null){
                instance = new Factory();
            }
            return instance;
        }

        public EmployeeDAO getEmployeeDAO(){
            if (employeeDAO == null){
                employeeDAO = new EmployeeDaoImpl();
            }
            return employeeDAO;
        }
//
//        public DriverDAO getDriverDAO(){
//            if (driverDAO == null){
//                driverDAO = new DriverDAOImpl();
//            }
//            return driverDAO;
//        }
//
//        public RouteDAO getRouteDAO(){
//            if (routeDAO == null){
//                routeDAO = new RouteDAOImpl();
//            }
//            return routeDAO;
//        }
}
