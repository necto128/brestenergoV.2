package brestenergo.by.Repository;

import brestenergo.by.Model.DataUser;
import brestenergo.by.Model.User;
import org.springframework.data.repository.CrudRepository;


public interface DataUserRepository extends CrudRepository<DataUser, Long> {
    DataUser findByAccount_Id(Long id);

    long count();

    DataUser findByAccount(User id);
}
