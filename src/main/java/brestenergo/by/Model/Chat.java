package brestenergo.by.Model;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Chat")
public class Chat {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Type(type = "long")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idUser")
    private User idUser;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idRequest")
    private Request idRequest;

    @Column(length = 1000)
    private String messages;

    private Date datePost;

    public Chat() {
    }

    public Chat(User idUser, Request idRequest, String messages,Date datePost) {
        this.idUser = idUser;
        this.idRequest = idRequest;
        this.messages = messages;
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

    public Request getIdRequest() {
        return idRequest;
    }

    public void setIdRequest(Request idRequest) {
        this.idRequest = idRequest;
    }

    public String getMessages() {
        return messages;
    }

    public void setMessages(String messages) {
        this.messages = messages;
    }

    public Date getDatePost() {
        return datePost;
    }

    public void setDatePost(Date datePost) {
        this.datePost = datePost;
    }

    @Override
    public String toString() {
        return "Chat{" +
                "id=" + id +
                ", idUser=" + idUser +
                ", idRequest=" + idRequest +
                ", messages='" + messages + '\'' +
                ", datePost=" + datePost +
                '}';
    }
}
