package brestenergo.by.Repository;

import brestenergo.by.Model.Message;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Optional;

public interface MessageRepository extends CrudRepository<Message, Long> {
    //List<Message> findByIdUserOrderByIdDesc(Long id);
    //List<Message> fd=messageRepository.findByIdUserOrderByIdDesc(user.getId());
    List<Message> findByIdUserOrderByIdDesc(Long id);

    Page<Message> findAllByActive(Pageable pageable,boolean param);

    List<Message> findAll();

    List<Message> findAllByShipmentAfterAndShipmentBeforeAndActive(Date after, Date bifore,boolean boll);

    Message findAllById(Long id);
    //  Page<Message> findByTag(Date tag, Pageable pageable);
    //@Query("SELECT coalesce(max(e.tag), 0) FROM Message e")
    // String getMaxTagOrOrderByIdDesc();
    // List<Message> findByTagOrderByTagDesc(Date yy);
}