package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
public class UserInformation {

  private String userId;
  private String userAge;
  private String userMarriage;
  private String userOccupation;
  private String userTitle;
  private String userEducation;
  private String userSupportingPopulation;
  private String userWorkingHours;
  private String userAnnualIncome;

}
