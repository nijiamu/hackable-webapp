package com.github.nijiamu.hackable;

import org.hibernate.validator.constraints.NotEmpty;

public class MessageForm {

    @NotEmpty
    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
