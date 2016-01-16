package com.nikoer.structs2;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Arrays;
import java.util.List;

/**
 * <code>Set welcome message.</code>
 */
public class HelloWorld extends ActionSupport {

    public String execute() throws Exception {
        setMessage(getText(MESSAGE));
        return SUCCESS;
    }

    /**
     * Provide default valuie for Message property.
     */
    public static final String MESSAGE = "HelloWorld.message123";

    /**
     * Field for Message property.
     */
    private String message;

    /**
     * Return Message property.
     *
     * @return Message property
     */
    public String getMessage() {
        return message;
    }

    /**
     * Set Message property.
     *
     * @param message Text to display on HelloWorld page.
     */
    public void setMessage(String message) {
        this.message = message;
    }

    public List<YesNo> getValues() {
        return Arrays.asList(YesNo.values());
    }
}
