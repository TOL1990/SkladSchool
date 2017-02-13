package entity;


import javax.management.relation.Role;
import javax.persistence.*;

import java.util.HashSet;
import java.util.Set;


/**
 * Created by Тарас on 28.12.2016.
 */
@Entity
@Table(name = "employees", uniqueConstraints = {
        @UniqueConstraint(columnNames = "id_employee") })
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_employee")
    private Long id;

    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "father_name")
    private String fatherName;

    @Column(name = "position")
    private String position; //должность

    /*
    private String rooms; //за какие кабинеты отвечает

    private Set<Role> role = new HashSet();
//    private List<Product> goods; //список инвентаря

    private Set<Stockroom> stocks = new HashSet<Stockroom>(); //За какие склады ответственнен человек
    */
@Column(name = "notes")
    private String notes; //примечания к персонажу

    public Employee() {
    }

    public Employee(String firstName, String lastName, String fatherName, String position) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.fatherName = fatherName;
        this.position = position;
        this.notes = null;
//        this.rooms = null;
//        this.role = null;
//        this.stocks = null;

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
/*
    public String getRooms() {
        return rooms;
    }

    public void setRooms(String rooms) {
        this.rooms = rooms;
    }
//
//    public Set<Role> getRole() {
//        return role;
//    }
//
//    public void setRole(Set<Role> role) {
//        this.role = role;
//    }

    public Set<Stockroom> getStocks() {
        return stocks;
    }

    public void setStocks(Set<Stockroom> stocks) {
        this.stocks = stocks;
    }
*/
    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", fatherName='" + fatherName + '\'' +
                ", position='" + position + '\'' +
//                ", rooms='" + rooms + '\'' +
//                ", role=" + role +
//                ", stocks=" + stocks +
                ", notes='" + notes + '\'' +
                '}';
    }
}
