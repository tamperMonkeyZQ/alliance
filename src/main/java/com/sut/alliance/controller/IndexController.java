package com.sut.alliance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {
    /**
     * 默认界面
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(HttpServletRequest httpServletRequest){
        return "index";
    }
    @RequestMapping(value = "/content",method = RequestMethod.GET)
    public String content(HttpServletRequest httpServletRequest){
        return "content";
    }
    @RequestMapping(value = "/enterpriseSearch",method = RequestMethod.GET)
    public String enterpriseSearch(HttpServletRequest httpServletRequest){
        return "enterpriseSearch";
    }
    @RequestMapping(value = "/schoolSearch",method = RequestMethod.GET)
    public String schoolSearch(HttpServletRequest httpServletRequest){
        return "schoolSearch";
    }
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register(HttpServletRequest httpServletRequest){
        return "register";
    }

}
