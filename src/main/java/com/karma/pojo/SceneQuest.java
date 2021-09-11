package com.karma.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SceneQuest {

    private int id;
    private int sceneid;
    private int userid;
    private String mainbody;
    private int status;

}
