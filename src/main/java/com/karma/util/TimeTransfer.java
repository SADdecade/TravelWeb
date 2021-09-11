package com.karma.util;


import com.alibaba.fastjson.JSONObject;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeTransfer {
    public static String getCurrentTime() {
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");//可以方便地修改日期格式
        String currentTime = dateFormat.format(now);
//        System.out.println("当前时间为:" + currentTime);
        return currentTime;
    }

    /**
     * 时间戳转换成日期格式字符串
     *
     * @return
     */
    public static String clientTimeStamp(JSONObject json) {
//        JSONObject json = JsonAnalysis.jsonText(jsonText);
        if (!json.containsKey("clientTimeStamp")) {
            return "";
        }
        long clientTimeStamp = json.getLong("clientTimeStamp");
        if (clientTimeStamp == 0) {
            return "";
        }


        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        // clientTimeStamp为秒，需要转换为毫秒，再转换为年月日时分秒
        String currentTime = dateFormat.format(clientTimeStamp * 1000);
        return currentTime;
    }

    public static void main(String[] args) {
        String currentDayTime = getCurrentTime();
        System.out.println("当前日期为：" + currentDayTime);

    }
}
