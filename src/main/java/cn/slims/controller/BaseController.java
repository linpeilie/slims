package cn.slims.controller;

import org.springframework.stereotype.Controller;

/**
 * @author linpeilie
 * @date 2017/11/23
 */
@Controller("/base")
public class BaseController {

    public String go(){
        return "common/test/hello";
    }

}
