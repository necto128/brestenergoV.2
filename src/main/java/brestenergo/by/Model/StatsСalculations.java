package brestenergo.by.Model;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "calculations")
public class StatsСalculations {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Type(type = "long")
    private Long id;
    //select  * from message WHERE id_user=1 order by id DESC LIMIT 0 , 1
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idUser")
    private User idUser;

    private Date viewDate;
    private Long previousPeriod;
    private Long currentPeriod;
    private Long expenses;

    @ManyToOne(fetch = FetchType.LAZY)
    private ServicePrice price;

    public StatsСalculations() {
    }

    public StatsСalculations(User idUser, Date viewDate, Long previousPeriod, Long currentPeriod, Long expenses, ServicePrice price) {
        this.idUser = idUser;
        this.viewDate = viewDate;
        this.previousPeriod = previousPeriod;
        this.currentPeriod = currentPeriod;
        this.expenses = expenses;
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getIdUser() {
        return idUser;
    }

    public void setIdUser(User idUser) {
        this.idUser = idUser;
    }

    public Date getViewDate() {
        return viewDate;
    }

    public void setViewDate(Date viewDate) {
        this.viewDate = viewDate;
    }

    public Long getPreviousPeriod() {
        return previousPeriod;
    }

    public void setPreviousPeriod(Long previousPeriod) {
        this.previousPeriod = previousPeriod;
    }

    public Long getCurrentPeriod() {
        return currentPeriod;
    }

    public void setCurrentPeriod(Long currentPeriod) {
        this.currentPeriod = currentPeriod;
    }

    public Long getExpenses() {
        return expenses;
    }

    public void setExpenses(Long expenses) {
        this.expenses = expenses;
    }

    public ServicePrice getPrice() {
        return price;
    }

    public void setPrice(ServicePrice price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "\nStatsСalculations{" +
                "id=" + id +
                ", idUser=" + idUser +
                ", viewDate=" + viewDate +
                ", previousPeriod=" + previousPeriod +
                ", currentPeriod=" + currentPeriod +
                ", expenses=" + expenses +
                ", price=" + price +
                '}';
    }
}
