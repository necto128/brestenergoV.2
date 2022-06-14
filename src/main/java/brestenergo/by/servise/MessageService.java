package brestenergo.by.servise;

import brestenergo.by.Model.Message;
import brestenergo.by.Repository.MessageRepository;
import brestenergo.by.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class MessageService {
    @Autowired
    private MessageRepository messageRepository;
    @Autowired
    private UserRepository userRepository;

    public void linkAllUsers() {
        for (Message key : messageRepository.findAll()) {
            Date date = new Date();
            Message mes = new Message();
            mes.setIdUser(key.getId());
            mes.setActive(true);
            mes.setMessage("21312312312 131231231 11 0000 1111");
            mes.setShipment(date);
            messageRepository.save(mes);
        }
    }

}
