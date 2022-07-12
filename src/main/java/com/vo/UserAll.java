package com.vo;

import com.pojo.User;
import com.pojo.UserCredit;
import com.pojo.UserGuarantee;
import com.pojo.UserInformation;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@Accessors(chain = true)
@AllArgsConstructor
@Getter
public class UserAll {
    private String userId;
    private String userName;
    private String userPwd;
    private String userSex;
    private String userCard;
    private String userAddress;
    private String userNumber;
    private String userAn;

    private String reputation;
    private String illegal;
    private String defendant;
    private String default1;

    private String house;
    private String car;
    private String shares;
    private String bond;

    private String userAge;
    private String userMarriage;
    private String userOccupation;
    private String userTitle;
    private String userEducation;
    private String userSupportingPopulation;
    private String userWorkingHours;
    private String userAnnualIncome;




    public void setUserAll( User user, UserCredit userCredit, UserGuarantee userGuarantee, UserInformation userInformation ){
        this.userId = user.getUserId ();
        this.userName = user.getUserName ();
        this.userPwd = user.getUserPwd ();
        this.userSex = user.getUserSex ();
        this.userCard = user.getUserCard ();
        this.userAddress = user.getUserAddress ();
        this.userNumber = user.getUserNumber ();
        this.userAn = user.getUserAn ();
        this.reputation = userCredit.getReputation ();
        this.illegal = userCredit.getIllegal ();
        this.defendant = userCredit.getDefendant ();
        this.default1 = userCredit.getDefault1 ();
        this.house = userGuarantee.getHouse ();
        this.car = userGuarantee.getCar ();
        this.shares = userGuarantee.getShares ();
        this.bond = userGuarantee.getBond ();
        this.userAge =userInformation.getUserAge () ;
        this.userMarriage = userInformation.getUserMarriage ();
        this.userOccupation = userInformation.getUserMarriage ();
        this.userTitle = userInformation.getUserTitle ();
        this.userEducation = userInformation.getUserEducation ();
        this.userSupportingPopulation = userInformation.getUserSupportingPopulation ();
        this.userWorkingHours = userInformation.getUserWorkingHours ();
        this.userAnnualIncome = userInformation.getUserAnnualIncome ();
    }
}
