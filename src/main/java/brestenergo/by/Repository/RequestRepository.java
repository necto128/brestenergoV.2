package brestenergo.by.Repository;

import brestenergo.by.Model.Request;
import brestenergo.by.Model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RequestRepository extends CrudRepository<Request, Long> {
    List<Request> findAllByIdUserAndActive(User user, boolean active);

    List<Request> findAllByActive(boolean active);

    Request findAllByActiveAndIdUser(boolean active, User user);

    List<Request> findAllByIdUserAndActive(boolean active,User user);

    Request findAllById(Long id);

    List<Request> findAllByIdUserAndIdAndActive(User user, Long id, boolean active);

    List<Request> findAllByActiveAndId(boolean active, Long id);

    Request findAllByIdAndActive(Long id, boolean active);

    Request findAllByIdUserAndActiveAndId(User user, boolean active, Long id);
}
