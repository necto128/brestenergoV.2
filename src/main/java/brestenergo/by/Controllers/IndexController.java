package brestenergo.by.Controllers;

import brestenergo.by.Model.*;
import brestenergo.by.Repository.*;
import jdk.jfr.DataAmount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class IndexController {


    @Autowired
    MessageRepository messageRepository;

    @Autowired
    DataUserRepository dataUserRepository;

    @Autowired
    CalculationsRepository calculationsRepository;

    @Autowired
    RequestRepository requestRepository;

    @Autowired
    ChatRepository chatRepository;

    @Autowired
    ServicePriceRepository servicePriceRepository;


    @PostMapping("/kabinet/messages/search")
    public String messagesearch(Model model, @AuthenticationPrincipal User user, String dateafter, String datebefore) {
        List<Message> message = null;
        try {
            if (dateafter.length() > 0 && datebefore.length() > 0) {
                message = messageRepository.findAllByShipmentAfterAndShipmentBeforeAndActive(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(dateafter + " 00:00:00"),
                        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(datebefore + " 23:59:59"),true);
                System.out.println(message);
                if (message.size() > 0) {
                    model.addAttribute("page", message);
                } else {
                    model.addAttribute("nonemesage", "run");
                    model.addAttribute("page", new Message());
                }

            } else {
                model.addAttribute("nonemesage", "run");
                model.addAttribute("page", new Message());
            }

        } catch (Exception e) {
        }
        model.addAttribute("customers", user);
        model.addAttribute("but", "search");
        model.addAttribute("url", "/kabinet/messages");
        model.addAttribute("atribut", "messages");
        return "kabinet";
    }


    @GetMapping("/kabinet/counter")
    public String counter(Model model, @AuthenticationPrincipal User user, @PageableDefault(sort = {"viewDate"}, direction = Sort.Direction.DESC, size = 9) Pageable pageable) {

        Page<StatsСalculations> page;
        page = calculationsRepository.findByIdUser(user, pageable);
        model.addAttribute("page", page);
        model.addAttribute("customers", user);
        model.addAttribute("url", "/kabinet/counter");
        model.addAttribute("atribut", "counter");
        return "kabinet";
    }


    @GetMapping("/kabinet/messages/check/{id}")
    public String messageIdBox(Model model, @AuthenticationPrincipal User user, @PathVariable(name = "id") Message message) throws ParseException {
        model.addAttribute("customers", user);
        model.addAttribute("message", message);
        model.addAttribute("atribut", "checkmessage");
        return "kabinet";
    }

    @GetMapping({"/kabinet/messages", "/kabinet", ""})
    public String messageBox(Model model, @AuthenticationPrincipal User user, @PageableDefault(sort = {"shipment"}, direction = Sort.Direction.DESC, size = 8) Pageable pageable) {
        Page<Message> page;
        page = messageRepository.findAllByActive(pageable,true);
        model.addAttribute("customers", user);
        model.addAttribute("nonemesage", "stop");
        model.addAttribute("but", "");
        model.addAttribute("atribut", "messages");
        model.addAttribute("page", page);
        model.addAttribute("url", "/kabinet/messages");
        return "kabinet";
    }

    @GetMapping("/kabinet/news")
    public String energy(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "energy");
        return "kabinet";
    }

    @GetMapping("/kabinet/sitting")
    public String sitting(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "sitting");
        return "kabinet";
    }

    @GetMapping("/kabinet/support")
    public String support(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("isActive", requestRepository.findAllByIdUserAndActive(user, true));
        model.addAttribute("isDisabled", requestRepository.findAllByIdUserAndActive(user, false));
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "support");
        return "kabinet";
    }

    @PostMapping("/kabinet/support")
    public String createrequest(Model model, @AuthenticationPrincipal User user, Request request) {
        model.addAttribute("isActive", requestRepository.findAllByIdUserAndActive(user, true));

        if (request.getTopic().length() > 0) {
            Date date = new Date();
            request.setActive(true);
            request.setDateCreate(date);
            request.setIdUser(user);
            requestRepository.save(request);
        }
        return "redirect:/kabinet/support";
    }

    @GetMapping("/kabinet/support/chat/{id}")
    public String supportChat(Model model, @AuthenticationPrincipal User user, @PathVariable(name = "id") Long id) {
        List<Chat> chats = null;
        try {
            if (requestRepository.findAllByIdUserAndIdAndActive(user, id, true).size() > 0) {
                model.addAttribute("objectRequest", requestRepository.findAllByIdUserAndActiveAndId(user, true, id));

                chats = chatRepository.findAllByIdRequest(requestRepository.findAllByIdUserAndActiveAndId(user, true, id));
                model.addAttribute("Controll", "1");

            } else if (requestRepository.findAllByIdUserAndIdAndActive(user, id, false).size() > 0) {
                model.addAttribute("objectRequest", requestRepository.findAllByIdUserAndActiveAndId(user, false, id));
                chats = chatRepository.findAllByIdRequest(requestRepository.findAllByIdUserAndActiveAndId(user, false, id));
            }
        } catch (Exception e) {
            return "redirect:/kabinet/support";
        }

        model.addAttribute("listMessages", chats);
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "supportRequest");
        return "kabinet";
    }

    @PostMapping("/kabinet/support/chat")
    public String ChatAddMessage(Model model, @AuthenticationPrincipal User user, Chat chat) {
        System.out.println(chat);
        if (chat.getMessages().length() > 0) {
            Date date = new Date();
            chat.setIdUser(user);
            chat.setDatePost(date);
            chatRepository.save(chat);
        }
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "supportRequest");
        return "redirect:/kabinet/support/chat/" + chat.getIdRequest().getId();
    }

    @PostMapping("/kabinet")
    public String switchData(Model model, @AuthenticationPrincipal User user, String atribut) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", atribut);
        return "redirect:/kabinet/" + atribut;
    }

    @GetMapping("/kabinet/profile")
    public String profile(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("info", dataUserRepository.findByAccount_Id(user.getId()));
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "profile");
        return "kabinet";
    }

    @GetMapping("/kabinet/editProfile")
    public String getprofilEdit(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("info", dataUserRepository.findByAccount_Id(user.getId()));
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "editProfile");
        return "kabinet";
    }

    @PostMapping("/kabinet/editProfile")
    public String postprofilEdi1(Model model, @AuthenticationPrincipal User user, DataUser dataUser) {
        DataUser saveDate = dataUserRepository.findByAccount_Id(user.getId());
        saveDate.setHomephone(dataUser.getHomephone());
        saveDate.setWorkphone(dataUser.getWorkphone());
        saveDate.setEmail(dataUser.getEmail());
        dataUserRepository.save(saveDate);
        model.addAttribute("customers", user);
        model.addAttribute("info", dataUserRepository.findByAccount_Id(user.getId()));
        model.addAttribute("atribut", "profile");
        return "kabinet";
    }

    @GetMapping("/kabinet/consumptionStatistics")
    public String consumptionStatistic(Model model, @AuthenticationPrincipal User user) {
        try {
            String stats = "";
            List<StatsСalculations> prices = calculationsRepository.findAllByIdUserAndViewDateAfterAndViewDateBefore(user, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-01-01 00:00:00"),
                    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-12-31 23:5:00"));

            for (StatsСalculations s : prices) {
                stats += s.getExpenses() + ",";
            }
            model.addAttribute("pricesStatistic", stats);

            stats = "";
            List<ServicePrice> satisticExpenses = servicePriceRepository.findAllByDateAfterAndDateBefore(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-01-01 00:00:00"),
                    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-12-31 23:5:00"));
            for (ServicePrice s : satisticExpenses) {
                stats += s.getPriceServices() + ",";
            }

            model.addAttribute("satisticExpenses", stats);

        } catch (Exception e) {
        }

        model.addAttribute("year", "2020");
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "consumptionStatistics");
        return "kabinet";
    }

    @PostMapping("/kabinet/consumptionStatistics")
    public String consumptionStat(Model model, @AuthenticationPrincipal User user, String year) {
        try {
            String stats = "";
            List<StatsСalculations> satisticExpenses = calculationsRepository.findAllByIdUserAndViewDateAfterAndViewDateBefore(user, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(year + "-01-01 00:00:00"),
                    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(year + "-12-31 23:5:00"));
            for (StatsСalculations s : satisticExpenses) {
                stats += s.getExpenses() + ",";
            }
            model.addAttribute("satisticExpenses", stats);

            stats = "";
            List<ServicePrice> pricesStatistic = servicePriceRepository.findAllByDateAfterAndDateBefore(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(year + "-01-01 00:00:00"),
                    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(year + "-12-31 23:5:00"));
            for (ServicePrice s : pricesStatistic) {
                stats += s.getPriceServices() + ",";
            }
            model.addAttribute("pricesStatistic", stats);

        } catch (Exception e) {
        }

        model.addAttribute("year", year);
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "consumptionStatistics");
        return "kabinet";
    }

}
