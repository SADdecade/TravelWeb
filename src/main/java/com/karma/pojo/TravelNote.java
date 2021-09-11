package com.karma.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class TravelNote {

    private int id;
    private int userid;
    private int cityid;
    private String title;
    private String duringtime;
    private String triptime;
    private String moneyspend;
    private String withwho;
    private String mainbody;
    private String picaddress;
    private Date time;
    private int status;

}
