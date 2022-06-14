package brestenergo.by.Model;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "ServicePrice")
public class ServicePrice {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Type(type = "long")
    private Long id;

    private Date date;
    private Double priceServices;

    public ServicePrice(Date date, Double priceServices) {
        this.date = date;
        this.priceServices = priceServices;
    }

    public ServicePrice() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Double getPriceServices() {
        return priceServices;
    }

    public void setPriceServices(Double priceServices) {
        this.priceServices = priceServices;
    }

    @Override
    public String toString() {
        return "\nServicePrice{" +
                "id=" + id +
                ", date=" + date +
                ", priceServices=" + priceServices +
                '}';
    }
}
