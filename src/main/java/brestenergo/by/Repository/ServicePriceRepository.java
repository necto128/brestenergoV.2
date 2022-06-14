package brestenergo.by.Repository;

import brestenergo.by.Model.ServicePrice;
import org.springframework.data.repository.CrudRepository;

import java.util.Date;
import java.util.List;

public interface ServicePriceRepository extends CrudRepository<ServicePrice, Long> {
    List<ServicePrice> findAllByDateAfterAndDateBefore(Date after,Date before);
    ServicePrice findAllById(Long id);
    List<ServicePrice> findAll();
}
