package com.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pojo.Staff;
import com.pojo.User;
import com.pojo.UserFeedback;
import com.service.UserService;
import com.util.Json;
import com.vo.UserAll;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @ResponseBody
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String getDogList( @RequestParam("id") String id, @RequestParam("pwd")String pwd,@RequestParam("role") String role , HttpServletRequest request ) {
        boolean user = userService.getUser (id , pwd , role);
        System.out.println (role);
        System.out.println (user);
        String flag="error";
        if (user){
            request.getSession ().setAttribute ("id",id);
            flag=role;
        }
        return flag;
    }

    @RequestMapping(value = "/addFee", method = RequestMethod.POST)
    public String addFee(@RequestParam("userName")String userName ,@RequestParam("userSex") String userSex , @RequestParam("userCard")String userCard , @RequestParam("userAddress")String userAddress , @RequestParam("userNumber")String userNumber ,@RequestParam("userAn") String userAn,
                         @RequestParam("reputation")String reputation ,@RequestParam("illegal") String illegal , @RequestParam("defendant")String defendant ,@RequestParam("default1") String default1,
                         @RequestParam("house")String house , @RequestParam("car")String car , @RequestParam("shares")String shares , @RequestParam("bond")String bond,
                         @RequestParam("userAge")String userAge , @RequestParam("userMarriage")String userMarriage , @RequestParam("userOccupation")String userOccupation ,@RequestParam("userTitle") String userTitle , @RequestParam("userEducation")String userEducation ,
                         @RequestParam("userSupportingPopulation") String userSupportingPopulation , @RequestParam("userWorkingHours")String userWorkingHours , @RequestParam("userAnnualIncome")String userAnnualIncome ,
                         HttpServletRequest request){
        userService.addFee ( (String) request.getSession ().getAttribute ("id") ,  userName ,  userSex ,  userCard ,  userAddress ,  userNumber ,  userAn,
                 reputation ,  illegal ,  defendant ,  default1,
                 house ,  car ,  shares ,  bond,
                 userAge ,  userMarriage ,  userOccupation ,  userTitle ,  userEducation ,  userSupportingPopulation ,  userWorkingHours ,  userAnnualIncome);
        return "redirect:/page/user/upload_data.jsp";
    }

    @ResponseBody
    @RequestMapping(value = "/getUserAllById", method = RequestMethod.POST)
    public UserAll getUserAllById( @RequestParam(value = "id",required = false) String id,HttpServletRequest request){
        String userId;
        if (id.equals ("no")){
            userId = (String) request.getSession ().getAttribute ("id");
        }else {
            userId=id;
        }
        System.out.println (userId);
        UserAll userAll = new UserAll ();
        userAll.setUserAll (userService.getUserById (userId),userService.getUCById (userId),userService.getUGById (userId),userService.getUIById (userId));
        return userAll;
    }

    @ResponseBody
    @RequestMapping(value = "/getAllUser", method = RequestMethod.GET)
    public String getAllUser( HttpServletRequest request){
        return Json.setJson (userService.userList ());
    }

    @RequestMapping(value = "/addSt", method = RequestMethod.POST)
    public String addSt( Staff staff,HttpServletRequest request){
        userService.addSt (staff);
        return "redirect:/page/admin/staff.jsp";
    }


    @RequestMapping(value = "/delSt", method = RequestMethod.POST)
    public String delSt( @RequestParam(value = "stId") String stId,HttpServletRequest request){
        userService.delSt (stId);
        return "redirect:/page/admin/staff.jsp";
    }

    @RequestMapping(value = "/updateSt", method = RequestMethod.POST)
    public String updateSt(Staff staff, HttpServletRequest request){
        userService.updateSt (staff);
        return "redirect:/page/admin/user.jsp";
    }

    @ResponseBody
    @RequestMapping(value = "/getSt", method = RequestMethod.GET)
    public String getSt( HttpServletRequest request){
        return Json.setJson (userService.getSt ());
    }

    @ResponseBody
    @RequestMapping(value = "/reg", method = RequestMethod.POST)
    public String addUser(@RequestParam("userId") String userId,@RequestParam("userPwd") String userPwd){
        int i = userService.addUser (userId , userPwd);
        if(i>0){
            return "success";
        }else {
            return "error";
        }
    }

    @RequestMapping(value = "/addUf", method = RequestMethod.POST)
    public String addUf( UserFeedback userFeedback,HttpServletRequest request ){
        userService.addUF (userFeedback);
        System.out.println (userFeedback.getUserId ()+"---");
        return "redirect:/page/admin/user.jsp";
    }

    @ResponseBody
    @RequestMapping(value = "/getUf", method = RequestMethod.POST)
    public UserFeedback getUf( @RequestParam(value = "id",required = false) String id,HttpServletRequest request ){
        String userId;
        if (id.equals ("no")){
            userId = (String) request.getSession ().getAttribute ("id");
        }else {
            userId=id;
        }
        return userService.getUf (userId);
    }
}
