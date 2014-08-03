package com.struts2.tags;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by dengry on 14-8-2.
 */
public class TagsAction extends ActionSupport {
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    private String username;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String execute() throws Exception {
        this.addFieldError("name","so long");
        this.addActionError("hh");
        return SUCCESS;
    }
}
