package com.service;

import com.mapper.UserMapper;
import com.pojo.*;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public boolean getUser( String id , String pwd , String role ) {
        if (role.equals ("user")) {
            if (userMapper.getUser (id) == null) {
                return false;
            }
            return userMapper.getUser (id).equals (pwd);
        } else {
            System.out.println (role + "--");
            if (userMapper.getAdmin (id) == null) {
                return false;
            }
            return userMapper.getAdmin (id).equals (pwd);
        }
    }

    public void addFee( String userId , String userName , String userSex , String userCard , String userAddress , String userNumber , String userAn ,
                        String reputation , String illegal , String defendant , String default1 ,
                        String house , String car , String shares , String bond ,
                        String userAge , String userMarriage , String userOccupation , String userTitle , String userEducation , String userSupportingPopulation , String userWorkingHours , String userAnnualIncome
    ) {
        userMapper.addUser (new User (userId , userName , null , userSex , userCard , userAddress , userNumber , userAn));
        userMapper.addCre (new UserCredit (userId , reputation , illegal , defendant , default1));
        userMapper.addGua (new UserGuarantee (userId , house , car , shares , bond));
        userMapper.addInf (new UserInformation (userId , userAge , userMarriage , userOccupation , userTitle , userEducation , userSupportingPopulation , userWorkingHours , userAnnualIncome));
    }

    public User getUserById( String userId ) {
        return userMapper.getUserById (userId);
    }

    public UserCredit getUCById( String userId ) {
        return userMapper.getUCById (userId);
    }

    public UserGuarantee getUGById( String userId ) {
        return userMapper.getUGById (userId);
    }

    public UserInformation getUIById( String userId ) {
        return userMapper.getUIById (userId);
    }

    public List<User> userList() {
        return userMapper.getAllUser ();
    }

    public int addSt( Staff staff ) {
        return userMapper.addSt (staff);
    }



    public int delSt( String stId ) {
        return userMapper.delSt (stId);
    }



    public int updateSt( Staff staff ) {
        return userMapper.updateSt (staff);
    }

    public List<Staff> getSt() {
        return userMapper.getSt ();
    }


    public int addUser( String userId , String userPwd ) {
        return userMapper.addUser1 (userId , userPwd);
    }

    public int addUF( UserFeedback userFeedback ) {
        System.out.println (userFeedback.getUserId ()+"********");
        return userMapper.addUF (userFeedback);
    }

    public UserFeedback getUf( String userId ) {
        return userMapper.getUf (userId);
    }

}
