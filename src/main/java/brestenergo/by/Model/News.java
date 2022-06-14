package brestenergo.by.Model;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "News")
public class News {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Type(type = "long")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @Type(type = "long")
    private User idUser;

    private String topic;

    private String img;

    @Column(length = 2000)
    private String messages;

    private Date dateCreate;

    public News() {
    }


    public News(User idUser, String topic, String img, String messages, Date dateCreate) {
        this.idUser = idUser;
        this.topic = topic;
        this.img = img;
        this.messages = messages;
        this.dateCreate = dateCreate;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getMessages() {
        return messages;
    }

    public void setMessages(String messages) {
        this.messages = messages;
    }

    public Date getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(Date dateCreate) {
        this.dateCreate = dateCreate;
    }

    @Override
    public String toString() {
        return "\nNews{" +
                "id=" + id +
                ", idUser=" + idUser +
                ", topic='" + topic + '\'' +
                ", img='" + img + '\'' +
                ", messages='" + messages + '\'' +
                ", dateCreate=" + dateCreate +
                '}';
    }
}
