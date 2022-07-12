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
public class UserCredit {

  private String userId;
  private String reputation;
  private String illegal;
  private String defendant;
  private String default1;


}
