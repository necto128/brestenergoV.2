package brestenergo.by.Repository;

import brestenergo.by.Model.Chat;
import brestenergo.by.Model.Request;
import brestenergo.by.Model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ChatRepository extends CrudRepository<Chat, Long> {
    List<Chat> findAllByIdRequest(Request id);
}
