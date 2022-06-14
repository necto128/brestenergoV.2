package brestenergo.by.Repository;

import brestenergo.by.Model.News;
import brestenergo.by.Model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import java.util.Date;
import java.util.List;

public interface NewsRepository extends CrudRepository<News, Long> {
    Page<News> findAllByDateCreateAfterAndDateCreateBefore(Date dateAfter, Date dateBefore, Pageable pageable);
    List<News> findAllByIdUserOrderByDateCreateDesc(User user);
    List<News> findAll();
}
