package dao;

import entity.Employee;
import entity.Stockroom;

import java.sql.SQLException;
import java.util.Collection;

/**
 * Created by Тарас on 30.01.2017.
 */
public interface StockRoomDAO {
    public void addStock(Stockroom stockroom) throws SQLException;
    public void updateStock(Long stock_id, Stockroom stockroom) throws SQLException;
    public Employee getStockById(Long stock_id) throws SQLException;
    public Collection getAllStocks() throws SQLException;
    public void deleteStock(Stockroom stockroom) throws SQLException;
    public Collection getStocksByEmployee(Employee employee) throws SQLException;
}
