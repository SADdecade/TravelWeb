import com.karma.pojo.*;
import com.karma.service.*;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;
import java.util.List;

public class MyTest {

    @Test
    public void Test(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userServiceImpl = (UserService)context.getBean("UserServiceImpl");
        User user=new User();
        user.setUsername("Test");
        user.setPassword("Test");
        System.out.println(userServiceImpl.registerCheck("Test"));
    }

    @Test
    public void TestAnswer(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        AnswerService answerServiceImpl = (AnswerService) context.getBean("AnswerServiceImpl");
//        Answers answer = new Answers();
//        answer.setQuestid(1);
//        answer.setUserid(1);
//        answer.setText("Test");
//        answer.setStatus(1);
//        answerServiceImpl.addAnswer(answer);

//        for(Answers answers : answerServiceImpl.queryByQuestId(1)){
//            System.out.println(answer);
//        }

//        answerServiceImpl.deleteAnswer(2);

        answerServiceImpl.updateStatus(1,3);

    }

    @Test
    public void TestCity(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        CityService cityservice = (CityService) context.getBean("CityServiceImpl");
        City city = new City();
        city.setName("成都");
        cityservice.addCity(city);

    }

    @Test
    public void TestSceneBook(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SceneBookService sceneBookService = (SceneBookService) context.getBean("SceneBookServiceImpl");
        SceneBook sceneBook = new SceneBook();
//        sceneBook.setSceneid(1);
//        sceneBook.setUserid(212);

        Date date = new Date();
        System.out.println(date.getTime());


//        sceneBook.setPlaydate(date.getTime());

    }

    @Test
    public void TestManagerLog(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        ManagerLogService managerLogService = (ManagerLogService) context.getBean("ManagerLogServiceImpl");
        ManagerLog managerLog = new ManagerLog();
        managerLog.setManagerid(14546);
        managerLog.setScenesid(2);

        managerLogService.addManagerLog(managerLog);

//        for(ManagerLog managerLog: managerLogService.queryAllManagerLog()){
//            System.out.println(managerLog);
//        }

    }

    @Test
    public void TestSceneComment(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SceneCommentService sceneCommentService = (SceneCommentService) context.getBean("SceneCommentServiceImpl");
        //add
//        SceneComment sceneComment = new SceneComment();
//        sceneComment.setSceneid(2);
//        sceneComment.setUserid(2233);
//        sceneComment.setMainbody("这个地方很好玩");
//        sceneComment.setPicaddress("XXXXXX");
//        sceneCommentService.addSceneComment(sceneComment);

        //queryBySceneId
//        List<SceneComment> sceneComments = sceneCommentService.queryBySceneId(3);
//        for (SceneComment sceneComment : sceneComments) {
//            System.out.println(sceneComment);
//        }

        List<SceneComment> sceneComments2 = sceneCommentService.queryByUserId(11);
        for (SceneComment sceneComment : sceneComments2) {
            System.out.println(sceneComment);
        }


    }


}
