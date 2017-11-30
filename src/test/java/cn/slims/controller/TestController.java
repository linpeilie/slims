package cn.slims.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("test")
public class TestController {

    @RequestMapping("hello")
    public String hello(HttpServletRequest request){
        request.setAttribute("user","linpeilie");
        return "hello";
    }

}
