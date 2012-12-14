package com.github.nijiamu.hackable;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class AppController {

    private static final Logger logger = LoggerFactory.getLogger(AppController.class);

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showForm(Map model) {
        LoginForm loginForm = new LoginForm();
        model.put("loginForm", loginForm);
        return "loginform";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String processForm(@Valid LoginForm loginForm, BindingResult result, Map model) {
        if (result.hasErrors()) {
            return "loginform";
        }

        logger.info("Logged in as {}", loginForm.getUserName());
        return "loginsuccess";
    }
}
