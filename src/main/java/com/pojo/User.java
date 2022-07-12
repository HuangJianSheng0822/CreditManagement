package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

  private String userId;
  private String userName;
  private String userPwd;
  private String userSex;
  private String userCard;
  private String userAddress;
  private String userNumber;
  private String userAn;

}
