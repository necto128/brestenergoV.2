package brestenergo.by.Model;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "message")
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Type(type = "long")
    private Long id;

    private Long idUser;

    private Date shipment;

    private String topic;

    @Column(name = "message",length = 2000)
    private String message;

    private Boolean active;

    public Message(Long idUser, Date shipment, String message, Boolean active,String topic) {
        this.idUser = idUser;
        this.shipment = shipment;
        this.message = message;
        this.active = active;
    }

    public Message() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getIdUser() {
        return idUser;
    }

    public void setIdUser(Long idUser) {
        this.idUser = idUser;
    }

    public Date getShipment() {
        return shipment;
    }

    public void setShipment(Date shipment) {
        this.shipment = shipment;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", idUser=" + idUser +
                ", shipment=" + shipment +
                ", topic='" + topic + '\'' +
                ", message='" + message + '\'' +
                ", active=" + active +
                '}';
    }
}
