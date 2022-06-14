package brestenergo.by.Repository;

import brestenergo.by.Model.StatsСalculations;
import brestenergo.by.Model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import java.util.Date;
import java.util.List;

public interface CalculationsRepository extends CrudRepository<StatsСalculations, Long> {

    Page<StatsСalculations> findByIdUser(User user, Pageable pageable);

    List<StatsСalculations> findAllByIdUserAndViewDateAfterAndViewDateBefore(User user, Date afterr, Date beforee);

    List<StatsСalculations> findAllByIdUserOrderByIdDesc(User user);

    StatsСalculations findByIdAndIdUser(Long id, User user);

    StatsСalculations findAllById(Long id);
}
