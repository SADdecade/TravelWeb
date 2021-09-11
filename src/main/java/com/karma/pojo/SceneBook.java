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
public class SceneBook {

    private int id;
    private int sceneid;
    private int userid;
    private Date playdate;
    private int number;
    private Date bookdate;

}
