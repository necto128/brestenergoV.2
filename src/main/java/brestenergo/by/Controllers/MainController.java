package brestenergo.by.Controllers;

import brestenergo.by.Model.Message;
import brestenergo.by.Model.News;
import brestenergo.by.Model.User;
import brestenergo.by.Repository.MessageRepository;
import brestenergo.by.Repository.NewsRepository;
import brestenergo.by.Repository.UserRepository;
import brestenergo.by.servise.MailSender;
import brestenergo.by.servise.MessageService;
import brestenergo.by.servise.PasswordGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/www.brestenergo.by")
public class MainController {
    @Autowired
    MessageService messageService;

    @Autowired
    MessageRepository messageRepository;

    @Autowired
    NewsRepository newsRepository;

    @Autowired
    UserRepository userRepository;

    @GetMapping({"/home", ""})
    public String homePage(Model model, @AuthenticationPrincipal User user, @PageableDefault(sort = {"dateCreate"}, direction = Sort.Direction.DESC) Pageable pageable) throws Exception {
        try {
            Page<News> page = newsRepository.findAllByDateCreateAfterAndDateCreateBefore(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-01-01 00:00:00"),
                    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-12-31 23:59:59"), pageable);
            model.addAttribute("page1", page.getContent().get(0));
            model.addAttribute("page2", page.getContent().get(1));
            model.addAttribute("page3", page.getContent().get(2));
        } catch (Exception e) {
        }
        model.addAttribute("customers", user);
        return "index";
    }

    @GetMapping("/disconnection")
    public String disconnection(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "disconnection";
    }

    @GetMapping("/generalinformation")
    public String generalinfor2mation(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "generalinformation";
    }

    @GetMapping("/history")
    public String history(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "history";
    }

    @GetMapping("/management")
    public String management(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "management";
    }

    @GetMapping("/structure")
    public String structure(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "structure";
    }

    @GetMapping("/requisites")
    public String requisites(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "requisites";
    }

    @GetMapping("/appeals")
    public String appeals(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "appeals";
    }

    @GetMapping("/reception")
    public String reception(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "reception";
    }

    @Autowired
    private MailSender mailSender;

    @PostMapping("/reception")
    public String receptionPost(Model model, @AuthenticationPrincipal User user, String organization, String fio, String address, String email, String phone, String message) {
        System.out.println("///////////////////////////////////organization" + organization);
        System.out.println("///////////////////////////////////fio" + fio);
        System.out.println("///////////////////////////////////address" + address);

        System.out.println("///////////////////////////////////email" + email);
        System.out.println("///////////////////////////////////phone" + phone);
        System.out.println("///////////////////////////////////message" + message);
        String messagesss = String.format("Добрый день " + fio + " вашь запрос на приём был принят ожидайте ответа.");
        mailSender.send(email, "Запись на приём", messagesss);
        model.addAttribute("customers", user);
        return "reception";
    }

    @GetMapping("/Rkc")
    public String Rkc(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        return "Rkc";
    }

    @GetMapping("/news")
    public String news(Model model, @AuthenticationPrincipal User user, @PageableDefault(sort = {"dateCreate"}, direction = Sort.Direction.DESC) Pageable pageable) throws Exception {
        try {
            Page<News> page = newsRepository.findAllByDateCreateAfterAndDateCreateBefore(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-01-01 00:00:00"),
                    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-12-31 23:59:59"), pageable);
            model.addAttribute("page", page);
            model.addAttribute("url", "/www.brestenergo.by/news");

        } catch (Exception e) {
        }
        model.addAttribute("customers", user);
        return "news";
    }

    @GetMapping("/news/{id}")
    public String newsId(Model model, @AuthenticationPrincipal User user, @PathVariable(name = "id") News news) {
        model.addAttribute("page", news);
        model.addAttribute("customers", user);
        return "newsId";
    }

}
