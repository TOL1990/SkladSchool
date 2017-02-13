package entity;

/**
 * Класс описывает размещение товара на складе
 */
public class Location {

    private Long id;

    private Product product; //Какой товар лежит

    private Stockroom stockroom; //На каком складе

    private int count; //сколько единиц

    private String shelf; //Стелаж

    private String rack; // полка

    private String notes;
}
