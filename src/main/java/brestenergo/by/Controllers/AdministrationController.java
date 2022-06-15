package brestenergo.by.Controllers;

import brestenergo.by.Model.*;
import brestenergo.by.Repository.*;
import brestenergo.by.enums.Role;
import brestenergo.by.servise.PasswordGenerator;
import brestenergo.by.servise.UserServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/kabinet/admin")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdministrationController {
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

    @Autowired
    NewsRepository newsRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    UserServise userServise;

    @PostMapping({"", "/"})
    public String switchData(Model model, @AuthenticationPrincipal User user, String atribut) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", atribut);
        return "redirect:/kabinet/admin/" + atribut;
    }

    @GetMapping("/addNews")
    public String addNews(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "addNews");
        return "admin";
    }

    @Value("${upload.path}")
    private String uploadPath;

    @PostMapping("/addNews")
    public String newsCreate(Model model, @AuthenticationPrincipal User user, MultipartFile file, News news) throws IOException {
        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            news.setImg(resultFilename);
        }
        if (news.getMessages().length() > 0 & news.getTopic().length() > 0) {
            Date date = new Date();
            news.setIdUser(user);
            news.setDateCreate(date);
            newsRepository.save(news);
        }
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "addNews");
        return "admin";
    }

    @GetMapping("/editNews/{id}")
    public String editNews(Model model, @AuthenticationPrincipal User user, @PathVariable(name = "id") News news) {
        model.addAttribute("news", news);
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "editNews");
        return "admin";
    }

    @PostMapping("/editNews/{id}")
    public String editNewsPost(Model model, @AuthenticationPrincipal User user, MultipartFile file, @PathVariable(name = "id") News news, String etopic, String emessages) {
        try {
            if (file.getOriginalFilename().length() != 0) {
                File uploadDir = new File(uploadPath);

                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }

                String uuidFile = UUID.randomUUID().toString();
                String resultFilename = uuidFile + "." + file.getOriginalFilename();

                file.transferTo(new File(uploadPath + "/" + resultFilename));

                news.setImg(resultFilename);
            }
        } catch (Exception e) {
        }
        if (etopic.length() > 0 && emessages.length() > 0) {
            news.setTopic(etopic);
            news.setMessages(emessages);
        }
        newsRepository.save(news);
        return "redirect:/kabinet/admin/editNews/" + news.getId();
    }

    @GetMapping("/addUser")
    public String addUser(Model model, @AuthenticationPrincipal User user) {
        PasswordGenerator passwordGenerator = new PasswordGenerator.PasswordGeneratorBuilder()
                .useDigits(true)
                .useLower(true)
                .useUpper(true)
                .build();
        String password = passwordGenerator.generate(8);
        User usr = new User();
        usr.setAccountUser(shchiit());
        usr.setPassword(password);
        model.addAttribute("obj", usr);
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "addUser");
        return "admin";
    }

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/addUser")
    public String postaddUser(Model model, User user, DataUser dataUser, @AuthenticationPrincipal User usr, HttpServletResponse response) {
        if ((dataUser.getFirstname().length() != 0) &
                (dataUser.getLastname().length() != 0) &
                (dataUser.getMiddlename().length() != 0) &
                (dataUser.getAddress().length() != 0) &
                (dataUser.getHomephone().length() != 0) &
                (dataUser.getWorkphone().length() != 0) &
                (dataUser.getHomephone().length() != 0) &
                (dataUser.getEmail().length() != 0) &
                (dataUser.getArea().length() != 0)) {
            try {
                user.setActive(true);
                user.setRoles(Collections.singleton(Role.USER));
                String s = user.getPassword();
                user.setPassword(passwordEncoder.encode(s));
                System.out.println(user);
                userRepository.save(user);

                dataUser.setAccount(userServise.searchUserByAccountUser(user.getAccountUser()));
                Date date = new Date();
                dataUser.setDate(date);
                dataUserRepository.save(dataUser);
            } catch (Exception e) {
            }
        }
        return "redirect:/kabinet/admin/addUser";
    }
    /////////////////////////////////////////////////////
        /*try {
            // создаем модель docx документа,
            // к которой будем прикручивать наполнение (колонтитулы, текст)
            XWPFDocument docxModel = new XWPFDocument();
            CTSectPr ctSectPr = docxModel.getDocument().getBody().addNewSectPr();
            // получаем экземпляр XWPFHeaderFooterPolicy для работы с колонтитулами
            XWPFHeaderFooterPolicy headerFooterPolicy = new XWPFHeaderFooterPolicy(docxModel, ctSectPr);

            // создаем верхний колонтитул Word файла
            CTP ctpHeaderModel = createHeaderModel(
                    "Верхний колонтитул - создано с помощью Apache POI на Java :)"
            );
            // устанавливаем сформированный верхний
            // колонтитул в модель документа Word
            XWPFParagraph headerParagraph = new XWPFParagraph(ctpHeaderModel, docxModel);
            headerFooterPolicy.createHeader(
                    XWPFHeaderFooterPolicy.DEFAULT,
                    new XWPFParagraph[]{headerParagraph}
            );

            // создаем нижний колонтитул docx файла
            CTP ctpFooterModel = createFooterModel("Просто нижний колонтитул");
            // устанавливаем сформированый нижний
            // колонтитул в модель документа Word
            XWPFParagraph footerParagraph = new XWPFParagraph(ctpFooterModel, docxModel);
            headerFooterPolicy.createFooter(
                    XWPFHeaderFooterPolicy.DEFAULT,
                    new XWPFParagraph[]{footerParagraph}
            );

            // создаем обычный параграф, который будет расположен слева,
            // будет синим курсивом со шрифтом 25 размера
            XWPFParagraph bodyParagraph = docxModel.createParagraph();
            bodyParagraph.setAlignment(ParagraphAlignment.RIGHT);
            XWPFRun paragraphConfig = bodyParagraph.createRun();
            paragraphConfig.setItalic(true);
            paragraphConfig.setFontSize(25);
            // HEX цвет без решетки #
            paragraphConfig.setColor("06357a");
            paragraphConfig.setText(
                    "Prologistic.com.ua - новые статьи по Java и Android каждую неделю. Подписывайтесь!"
            );

            // сохраняем модель docx документа в файл
            FileOutputStream outputStream = new FileOutputStream("Test.docx");
            docxModel.write(outputStream);
            outputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Успешно записан в файл");

    ///////////////////////////////////////////////////

        private static CTP createFooterModel (String footerContent){
            // создаем футер или нижний колонтитул
            CTP ctpFooterModel = CTP.Factory.newInstance();
            CTR ctrFooterModel = ctpFooterModel.addNewR();
            CTText cttFooter = ctrFooterModel.addNewT();

            cttFooter.setStringValue(footerContent);
            return ctpFooterModel;
        }

        private static CTP createHeaderModel (String headerContent){
            // создаем хедер или верхний колонтитул
            CTP ctpHeaderModel = CTP.Factory.newInstance();
            CTR ctrHeaderModel = ctpHeaderModel.addNewR();
            CTText cttHeader = ctrHeaderModel.addNewT();

            cttHeader.setStringValue(headerContent);
            return ctpHeaderModel;
        }*/

    @GetMapping("/editUser")
    public String editUser(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "editUser");
        return "admin";
    }

    @GetMapping("/addMessage")
    public String addMessage(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "addMessage");
        return "admin";
    }

    @GetMapping("/editMessage/{id}")
    public String editMessage(Model model, @AuthenticationPrincipal User user, @PathVariable(name = "id") Long id) {
        model.addAttribute("Object", messageRepository.findAllById(id));
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "addMessage");
        return "admin";
    }

    @PostMapping("/editMessage/{id}")
    public String editMessagePost(Model model, @AuthenticationPrincipal User user, Message mess) {
        Message object = messageRepository.findAllById(mess.getId());
        object.setTopic(mess.getTopic());
        object.setMessage(mess.getMessage());
        if ((mess.getActive()) != null) {
            object.setActive(true);
        } else {
            object.setActive(false);
        }
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "addMessage");
        return "admin";
    }

    @PostMapping("/addMessage")
    public String postAddMessage(Model model,
                                 @AuthenticationPrincipal User user,
                                 Message mess) {
        if (mess.getMessage().length() != 0 || mess.getTopic().length() != 0) {
            mess.setIdUser(user.getId());
            Date date = new Date();
            mess.setShipment(date);
            mess.setActive(true);
            messageRepository.save(mess);
        } else {

            model.addAttribute("Object", mess);
        }
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "addMessage");
        return "admin";
    }

    @GetMapping({"/activeSupport", "", "/"})
    public String supportA(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("isActive", requestRepository.findAllByActive(true));
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "support");
        return "admin";
    }

    @PostMapping({"/activeSupport"})
    public String searchA(Model model, @AuthenticationPrincipal User user, String searchParam, String param) {
        try {
            if (param.equals("searchId")) {
                model.addAttribute("isActive", requestRepository.findAllByActiveAndId(true, Long.valueOf(searchParam)));
            } else if (param.equals("searchCount")) {
                User usr = userRepository.findByAccountUser(searchParam);
                model.addAttribute("isActive", requestRepository.findAllByIdUserAndActive(usr, true));
            }
        } catch (Exception e) {
            model.addAttribute("isActive", null);
        }
        // requestRepository.findAllByActive(false));

        model.addAttribute("customers", user);
        model.addAttribute("atribut", "support");
        return "admin";
    }

    @PostMapping("/activeSupport/chat/{id}/close")
    public String closeRequest(Model model, @AuthenticationPrincipal User user, @PathVariable(name = "id") Long searchId) {
        if (searchId != null) {
            Request request = requestRepository.findAllById(searchId);
            request.setActive(false);
            requestRepository.save(request);
        }
        return "redirect:/kabinet/admin/disabledSupport/chat/" + searchId;
    }

    @GetMapping("/activeSupport/chat/{id}")
    public String supportChatA(Model model, @AuthenticationPrincipal User user, @PathVariable(name = "id") Long id) {
        List<Chat> chats = null;
        try {
            if (requestRepository.findAllByActiveAndId(true, id).size() == 1) {
                model.addAttribute("objectRequest", requestRepository.findAllByIdAndActive(id, true));
                chats = chatRepository.findAllByIdRequest(requestRepository.findAllById(id));
                model.addAttribute("Controll", "1");

            }
        } catch (Exception e) {
            return "redirect:/kabinet/admin/activeSupport";
        }

        model.addAttribute("listMessages", chats);
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "supportRequest");
        return "admin";
    }

    @GetMapping("/disabledSupport/chat/{id}")
    public String supportChatD(Model model, @AuthenticationPrincipal User user, @PathVariable(name = "id") Long id) {
        List<Chat> chats = null;
        try {
            if (requestRepository.findAllByActiveAndId(false, id).size() == 1) {
                model.addAttribute("objectRequest", requestRepository.findAllByIdAndActive(id, false));
                chats = chatRepository.findAllByIdRequest(requestRepository.findAllById(id));
            }
        } catch (Exception e) {
            return "redirect:/kabinet/admin/activeSupport";
        }

        model.addAttribute("listMessages", chats);
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "supportRequest");
        return "admin";
    }

    @GetMapping("/disabledSupport")
    public String supportD(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("isActive", requestRepository.findAllByActive(false));
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "supportD");
        return "admin";
    }

    @PostMapping("/disabledSupport")
    public String searchD(Model model, @AuthenticationPrincipal User user, String searchParam, String param) {
        try {
            if (param.equals("searchId")) {
                model.addAttribute("isActive", requestRepository.findAllByActiveAndId(false, Long.valueOf(searchParam)));
            } else if (param.equals("searchCount")) {
                User usr = userRepository.findByAccountUser(searchParam);
                model.addAttribute("isActive", requestRepository.findAllByIdUserAndActive(usr, false));
            }
        } catch (Exception e) {
            model.addAttribute("isActive", null);
        }
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "supportD");
        return "admin";
    }

    @PostMapping("/editUser")
    public String posteditUser(Model model, @AuthenticationPrincipal User user, String searchId) {
        if (searchId.length() > 0) {
            User uusr = userRepository.findByAccountUser(searchId);
            model.addAttribute("obj", dataUserRepository.findByAccount(uusr));
        }
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "editUser");
        return "admin";
    }

    @GetMapping("/counter")
    public String counter(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "counter");
        return "admin";
    }

    @PostMapping("/counter/search")
    public String counterPost(Model model, @AuthenticationPrincipal User user, String username) {
        if (username.length() > 0) {
            model.addAttribute("object", userRepository.findByUsername(username));
            List<ServicePrice> list = servicePriceRepository.findAll();
            model.addAttribute("objectPrice", list.get(list.size() - 1));
        }

        model.addAttribute("customers", user);
        model.addAttribute("atribut", "counter");
        return "admin";
    }

    @PostMapping("/counter/addCalculation")
    public String addCalculationPost(Model model, Long id, Long currentPeriod, Long idPrice, @RequestBody MultiValueMap<String, String> map) {
        if (currentPeriod > -1) {
            User usr = userRepository.findAllById(id);
            StatsСalculations backStatsСalculations = calculationsRepository.findAllByIdUserOrderByIdDesc(usr).get(0);

            StatsСalculations calcula = new StatsСalculations();
            calcula.setIdUser(usr);
            Date date = new Date();
            calcula.setViewDate(date);
            calcula.setPreviousPeriod(backStatsСalculations.getCurrentPeriod());
            calcula.setExpenses(currentPeriod);
            calcula.setCurrentPeriod(calcula.getPreviousPeriod() + calcula.getExpenses());
            calcula.setPrice(servicePriceRepository.findAllById(idPrice));
            calculationsRepository.save(calcula);
        }
        return "redirect:/kabinet/admin/counter";
    }


    @GetMapping("/checkCalculation")
    public String checkCalculation(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "checkCalculation");
        return "admin";
    }

    @PostMapping("/checkCalculation")
    public String checkCalculationPost(Model model, @AuthenticationPrincipal User user, String username) {
        try {
            if (username.length() > 0) {

                model.addAttribute("isActive", calculationsRepository.findAllByIdUserOrderByIdDesc(userRepository.findByUsername(username)));
            }
        } catch (Exception e) {
            model.addAttribute("isActive", null);
        }
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "checkCalculation");
        return "admin";
    }

    @PostMapping("/checkCalculation/save")
    public String checkCalculationSave(Model model, @AuthenticationPrincipal User user, StatsСalculations statsСalculations) {

        try {
            StatsСalculations calcula = calculationsRepository.findAllById(statsСalculations.getId());
                calcula.setPreviousPeriod(statsСalculations.getPreviousPeriod());
                calcula.setExpenses(statsСalculations.getExpenses());
                calcula.setCurrentPeriod(statsСalculations.getCurrentPeriod());
            calculationsRepository.save(calcula);
            model.addAttribute("isActive", calculationsRepository.findAllByIdUserOrderByIdDesc(userRepository.findByUsername(calcula.getIdUser().getUsername())));
        } catch (Exception e) {
            model.addAttribute("isActive", null);
        }
        model.addAttribute("param", "search");
        model.addAttribute("customers", user);
        model.addAttribute("atribut", "checkCalculation");
        return "admin";
    }

    private String shchiit() {
        Long shchiit = userRepository.count() + 1;
        String number = shchiit.toString(), s = "";
        for (int i = 0; i < 7 - number.length(); i++) {
            s += "0";
        }
        number = s + number;
        StringBuffer sb = new StringBuffer(number);
        number = sb.insert(4, "-").toString();
        return number;
    }

}
