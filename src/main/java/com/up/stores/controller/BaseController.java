package com.up.stores.controller;

import com.up.stores.service.ex.InsertException;
import com.up.stores.service.ex.PasswordNotMatchException;
import com.up.stores.service.ex.ServiceException;
import com.up.stores.service.ex.UsernameDuplicateException;
import com.up.stores.until.JsonResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/** 控制器类的基类 */
@Controller
@ResponseBody
public class BaseController {
    /** 操作成功的状态码 */
    public static final int OK = 200;

    /** @ExceptionHandler用于统一处理方法抛出的异常 */
    @ExceptionHandler(ServiceException.class)
    public JsonResult<Void> handleException(Throwable e) {
        JsonResult<Void> result = new JsonResult<Void>(e);
        if (e instanceof UsernameDuplicateException) {
            result.setState(4000);
            result.setMessage("用户名已被占用");
        } else if (e instanceof InsertException) {
            result.setState(5000);
            result.setMessage("插入数据产生未知异常");
        }else if (e instanceof InsertException) {
            result.setState(5001);
            result.setMessage("插入数据不存在");
        } else if (e instanceof PasswordNotMatchException) {
            result.setState(5002);
            result.setMessage("用户名或密码错误的异常");
        }
        return result;
    }

    //获取当前登录uid，参数session对象，返回uid
    protected final Integer getuidFromSession(HttpSession session){
        return Integer.valueOf(session.getAttribute("uid").toString());
    }
    //获取当前登录用户的username，参数session，返回用户名
    protected final String getUsernameFromSession(HttpSession session){
        return session.getAttribute("username").toString();
    }
}