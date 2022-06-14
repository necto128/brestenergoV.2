package brestenergo.by.Repository;

import brestenergo.by.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    long count();
    User findByAccountUser(String username);
    User findAllById(Long id);
}
