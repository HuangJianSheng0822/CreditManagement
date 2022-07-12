package com.pojo;

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
public class Staff {

  private String stId;
  private String stName;
  private String stDepartment;
  private String stAge;
  private String stNumber;


}
