package brestenergo.by.Model;

import brestenergo.by.enums.Role;
import org.hibernate.annotations.Type;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.Collection;
import java.util.Set;


@Entity
@Table(name = "user")
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Type(type = "long")
    private Long id;

    @Column(length = 8)
    private String username;
    @Column(length = 8)
    private String password;

    @Column(length = 8)
    private String accountUser;

    private boolean active;
    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "user_role", joinColumns = @JoinColumn(name = "id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> roles;

    @OneToMany(mappedBy = "idUser", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<Message> messages;

    public User() {
    }

    public User(String username, String password, String accountUser, boolean active, Set<Role> roles, Set<Message> messages) {
        this.username = username;
        this.password = password;
        this.accountUser = accountUser;
        this.active = active;
        this.roles = roles;
        this.messages = messages;
    }

    public User(String username, String password, String accountUser, Set<Role> roles, Set<Message> messages) {
        this.username = username;
        this.password = password;
        this.accountUser = accountUser;
        this.roles = roles;
        this.messages = messages;
    }

    public User(String username, String password, String accountUser, Set<Role> roles) {
        this.username = username;
        this.password = password;
        this.accountUser = accountUser;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isActive();
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return getRoles();
    }

    @Override
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccountUser() {
        return accountUser;
    }

    public void setAccountUser(String accountUser) {
        this.accountUser = accountUser;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Set<Message> getMessages() {
        return messages;
    }

    public void setMessages(Set<Message> messages) {
        this.messages = messages;
    }

    @Override
    public String toString() {
        return "\nUser{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", accountUser='" + accountUser + '\'' +
                ", active=" + active +
                ", roles=" + roles +
                ", messages=" + messages +
                '}';
    }
}
