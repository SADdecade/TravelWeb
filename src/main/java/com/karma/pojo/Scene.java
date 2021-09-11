package com.karma.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author 俞培鑫
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Scene {

    /**
     * 景区ID
     */
    private Integer id;

    /**
     * 城市ID
     */
    private Integer cityid;

    /**
     * 景区名
     */
    private String address;

    /**
     * 景区名
     */
    private String scenename;

    /**
     * 介绍
     */
    private String intro;


    /**
     * 电话
     */
    private String tel;

    /**
     * 开放时间
     */
    private String opentime;

    /**
     * 小提示
     */
    private String tips;

    /**
     * 服务
     */
    private String service;

    /**
     * 图片地址
     */
    private String picaddress;

}
