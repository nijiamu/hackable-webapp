package com.github.nijiamu.hackable;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Controller
public class AppController {

    private static final Logger logger = LoggerFactory.getLogger(AppController.class);

    private final List<String> messages = Collections.synchronizedList(new ArrayList<String>());

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showForm(Map<String, Object> model) {
        model.put("loginForm", new LoginForm());
        model.put("messageForm", new MessageForm());
        model.put("messages", messages);
        return "loginform";
    }

    @RequestMapping(value = "/message", method = RequestMethod.POST)
    public String addMessage(@Valid MessageForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "loginform";
        }
        String message = form.getMessage();
        messages.add(message);
        logger.info("Added message: {}", message);
        return "redirect:/";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String processForm(@Valid LoginForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "loginform";
        }
        logger.info("Logged in as {}", form.getUserName());
        return "loginsuccess";
    }
}
