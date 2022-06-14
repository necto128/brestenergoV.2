package brestenergo.by.Model;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "Request")
public class Request {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Type(type = "long")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "idUser", nullable = false)
    private User idUser;

    private String topic;
    private Date dateCreate;
    private boolean active;


    public Request() {
    }

    public Request(User idUser, String topic, Date dateCreate, boolean active) {
        this.idUser = idUser;
        this.topic = topic;
        this.dateCreate = dateCreate;
        this.active = active;
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

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public Date getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(Date dateCreate) {
        this.dateCreate = dateCreate;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "\nRequest{" +
                "id=" + id +
                ", idUser=" + idUser +
                ", topic='" + topic + '\'' +
                ", dateCreate=" + dateCreate +
                ", active=" + active +
                '}';
    }
}
