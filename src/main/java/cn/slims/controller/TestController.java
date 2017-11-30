package cn.slims.controller;

import cn.slims.entity.User;
import cn.slims.model.ResponseResult;
import cn.slims.service.UserService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@RequestMapping("test")
public class TestController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "hello",method = RequestMethod.GET)
    public String toHelloPage(){
        return "hello";
    }

    @RequestMapping(value = "hello",method = RequestMethod.POST)
    @ResponseBody
    public ResponseResult hello(){
        ResponseResult result = new ResponseResult();
//        Map<String,Object> resultMap = new HashMap<String, Object>();
        User user = null;
        List<User> list = new ArrayList<User>();
        for (int i=0;i<200;i++){
            try{
                Thread.sleep(10);
            }catch (Exception e){
            }
            user = new User();
            user.setUserId(i+"");
            user.setUserName(UUID.randomUUID().toString().replaceAll("-",""));
            list.add(user);
        }
        result.setSuccess(true);
        result.setData(list);
        return result;
    }

    @RequestMapping("user")
    public String user(HttpServletRequest request){
//        User user = new User("jim","123456","123@qq.com","123","0");
//        userService.insert(user);
        List<User> list = userService.showAll();
        request.setAttribute("list",list);
        return "user/list";
    }

}
