package brestenergo.by.Model;

import javax.persistence.*;

import java.util.Date;

@Entity
@Table(name = "DataUser")
public class DataUser {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "account")
    private User account;

    private String firstname;
    private String lastname;
    private String middlename;
    private String address;
    private String home;
    private String workphone;
    private String homephone;
    private String email;
    private String area;
    @Column(name = "dateRegistration")
    private Date date;

    public DataUser() {
    }

    public DataUser(User account, String firstname, String lastname, String middlename, String address, String workphone, String homephone, String email, String area, Date date) {
        this.account = account;
        this.firstname = firstname;
        this.lastname = lastname;
        this.middlename = middlename;
        this.address = address;
        this.workphone = workphone;
        this.homephone = homephone;
        this.email = email;
        this.area = area;
        this.date = date;
    }

    public DataUser(User account, String firstname, String lastname, String middlename, String address, String home, String workphone, String homephone, String email, String area, Date date) {
        this.account = account;
        this.firstname = firstname;
        this.lastname = lastname;
        this.middlename = middlename;
        this.address = address;
        this.home = home;
        this.workphone = workphone;
        this.homephone = homephone;
        this.email = email;
        this.area = area;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getAccount() {
        return account;
    }

    public void setAccount(User account) {
        this.account = account;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMiddlename() {
        return middlename;
    }

    public void setMiddlename(String middlename) {
        this.middlename = middlename;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWorkphone() {
        return workphone;
    }

    public void setWorkphone(String workphone) {
        this.workphone = workphone;
    }

    public String getHomephone() {
        return homephone;
    }

    public void setHomephone(String homephone) {
        this.homephone = homephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "DataUser{" +
                "id=" + id +
                ", account=" + account +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", middlename='" + middlename + '\'' +
                ", address='" + address + '\'' +
                ", home='" + home + '\'' +
                ", workphone='" + workphone + '\'' +
                ", homephone='" + homephone + '\'' +
                ", email='" + email + '\'' +
                ", area='" + area + '\'' +
                ", date=" + date +
                '}';
    }

    public DataUser getAccount(DataUser dataUser) {
        return dataUser;
    }

    public String getHome() {
        return home;
    }

    public void setHome(String home) {
        this.home = home;
    }
}
