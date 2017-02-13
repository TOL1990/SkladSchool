package entity;

/**
 * Created by Тарас on 28.12.2016.
 */
public class Product {

    private long id;

    private String name;
    private String description;
    private int invNumber;

    private ProductType productType;

    private long amount; //количество единиц товара

    private String measure; //единицы измерения

    private String expluatTime; // период експлуатации

    private Stockroom location; // на каком складе лежит
}
