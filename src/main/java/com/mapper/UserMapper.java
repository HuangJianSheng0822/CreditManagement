package com.mapper;

import com.pojo.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    /**
     * 用户登录
     */
    /**
     * 查询用户
     * @param adminId
     * @return
     */
    @Select("select adminPwd from admin where adminId = #{adminId}")
    public String getAdmin(String adminId);
    @Select ("select userPwd from user where userId = #{userId}")
    public String getUser(String userId);
    @Update ("UPDATE `user` SET " +
            "`userName`=#{user.userName}, " +
            "`userSex`=#{user.userSex}," +
            " `userCard`=#{user.userCard}," +
            " `userAddress`=#{user.userAddress}," +
            " `userNumber`=#{user.userNumber}," +
            " `userAN`=#{user.userAn}" +
            " WHERE (`userId`=#{user.userId})")
    public int addUser(@Param ("user") User user );
    @Insert ("INSERT INTO `user_credit`" +
            " (`userId`, `reputation`, `Illegal`, `defendant`, `default1`)" +
            " VALUES (#{userCredit.userId}, #{userCredit.reputation}, #{userCredit.illegal},#{userCredit.defendant},#{userCredit.default1})")
    public int addCre(@Param ("userCredit") UserCredit userCredit );
    @Insert ("INSERT INTO `user_guarantee`" +
            " (`userId`, `house`, `car`, `shares`, `bond`) " +
            "VALUES (#{userGuarantee.userId}, #{userGuarantee.house}, #{userGuarantee.car}, #{userGuarantee.shares}, #{userGuarantee.bond})")
    public int addGua( @Param ("userGuarantee") UserGuarantee userGuarantee );
    @Insert ("INSERT INTO `user_information` (`userId`, `userAge`, `userMarriage`, `userOccupation`, `userTitle`, `userEducation`, `userSupportingPopulation`, `userWorkingHours`, `userAnnualIncome`) " +
            "VALUES" +
            " (#{userInformation.userId}, #{userInformation.userAge}, #{userInformation.userMarriage}, #{userInformation.userOccupation}, #{userInformation.userTitle}, #{userInformation.userEducation}, #{userInformation.userSupportingPopulation}, #{userInformation.userWorkingHours}, #{userInformation.userAnnualIncome})")
    public int addInf(@Param ("userInformation") UserInformation userInformation );
    @Select ("select * from user where userId=#{userId}")
    public User getUserById(String userId);
    @Select ("select * from user_credit where userId=#{userId}")
    public UserCredit getUCById(String userId);
    @Select ("select * from user_guarantee where userId=#{userId}")
    public UserGuarantee getUGById(String userId);
    @Select ("select * from user_information where userId=#{userId}")
    public UserInformation getUIById(String userId);
    @Select ("select * from user")
    public List<User> getAllUser();
    @Insert ("INSERT INTO `staff` (`stId`, `stName`, `stDepartment`, `stAge`, `stNumber`) " +
            "VALUES (#{staff.stId}, #{staff.stName}, #{staff.stDepartment},#{staff.stAge}, #{staff.stNumber})")
    public int addSt( @Param ("staff")Staff staff );
    @Delete ("DELETE FROM `staff` WHERE (`stId`=#{stId})")
    public int delSt(@Param ("stId")String stId);
    @Update ("UPDATE `staff` SET `stName`=#{staff.stName}, `stDepartment`=#{staff.stDepartment}, `stAge`=#{staff.stAge}, `stNumber`=#{staff.stNumber} WHERE (`stId`=#{staff.stId})")
    public int updateSt(@Param ("staff")Staff staff);
    @Select ("select * from staff")
    public List<Staff> getSt();
    @Insert ("INSERT INTO `user` (`userId`, `userPwd`) VALUES (#{userId}, #{userPwd})")
    public int addUser1(@Param ("userId") String userId,@Param ("userPwd") String userPwd);
    @Insert ("INSERT INTO `user_feedback` (`userId`, `grade`, `quota`) VALUES (#{userFeedback.userId}, #{userFeedback.grade}, #{userFeedback.quota})")
    public int addUF(@Param ("userFeedback") UserFeedback userFeedback);
    @Select ("select * from user_feedback where userId=#{userId}")
    public UserFeedback getUf(@Param ("userId") String userId);
}
