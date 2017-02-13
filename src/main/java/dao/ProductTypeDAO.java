package dao;

import entity.ProductType;

import java.sql.SQLException;
import java.util.Collection;


public interface ProductTypeDAO {
    public void addProductType(ProductType type) throws SQLException;
    public void updateProductType(Long type_id, ProductType type) throws SQLException;
    public ProductType getProductTypeById(Long type_id) throws SQLException;
    public Collection getAllProductTypes() throws SQLException;
    public void deleteProductType(ProductType type) throws SQLException;
}
