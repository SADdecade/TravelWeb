package com.karma.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SceneBook {

    private int id;
    private int sceneid;
    private int userid;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date playdate;
    private int num;
    private Date bookdate;

}
