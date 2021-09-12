import com.karma.pojo.*;
import com.karma.service.*;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;

public class MyTest {

    @Test
    public void Test(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userServiceImpl = (UserService)context.getBean("UserServiceImpl");
        User user=new User();
        user.setUsername("18390844082");
        user.setPassword("000113");
        System.out.println(userServiceImpl.login(user));
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
//        City city = new City();
//        city.setName("成都");
//        cityservice.addCity(city);

        //select all
        for(City city : cityservice.queryAllCity()){
            System.out.println(city);
        }

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
//
//        List<SceneComment> sceneComments2 = sceneCommentService.queryByUserId(11);
//        for (SceneComment sceneComment : sceneComments2) {
//            System.out.println(sceneComment);
//        }

        sceneCommentService.deleteSceneComment(4);

    }

    @Test
    public void TestSceneQuest(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SceneQuestService sceneQuestService = (SceneQuestService) context.getBean("SceneQuestServiceImpl");
        //add
//        SceneQuest sceneQuest = new SceneQuest();
//        sceneQuest.setSceneid(2);
//        sceneQuest.setUserid(14526);
//        sceneQuest.setMainbody("请问需要提前预约吗");
//        sceneQuest.setStatus(2);
//        sceneQuestService.addSceneQuest(sceneQuest);


//        for (SceneQuest sceneQuest :sceneQuestService.queryBySceneId(2)) {
//            System.out.println(sceneQuest);
//        }

//        for (SceneQuest sceneQuest :sceneQuestService.queryByUserId(14526)) {
//            System.out.println(sceneQuest);
//        }

        //删除，修改status
//        sceneQuestService.deleteSceneQuest(3);
//        sceneQuestService.updateStatus(1,2);

        //questById
        System.out.println(sceneQuestService.queryById(1));

    }

    @Test
    public void TestTravelComment(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TravelCommentService travelCommentService = (TravelCommentService) context.getBean("TravelCommentServiceImpl");
        //add
//        TravelComment travelComment = new TravelComment();
//        travelComment.setTripid(2);
//        travelComment.setUserid(123456);
//        travelComment.setMainbody("这里好漂亮啊！！拍得好好看");
//        travelCommentService.addTravelComment(travelComment);

        //queryBytripId
        for(TravelComment travelComment: travelCommentService.queryByTripId(2)){
            System.out.println(travelComment);
        }

        //queryByuserid
        for(TravelComment travelComment: travelCommentService.queryByUserId(123456)){
            System.out.println(travelComment);
        }

        //delete
        travelCommentService.deleteTravelComment(3);

    }

    @Test
    public void TestTravelNote(){

        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TravelNoteService travelNoteService = (TravelNoteService) context.getBean("TravelNoteServiceImpl");
        //add
//        TravelNote travelNote = new TravelNote();
//        travelNote.setUserid(14251);
//        travelNote.setCityid(2);
//        travelNote.setTitle("长沙！！");
//        travelNote.setDuringtime("3天");
//        travelNote.setTriptime("9月上旬");
//        travelNote.setMoneyspend("人均1000");
//        travelNote.setWithwho("好朋友");
//        travelNote.setMainbody("五一广场");
//        travelNote.setPicaddress("xdhiudhuasd");
//        travelNote.setStatus(2);
//        travelNoteService.addTravelNote(travelNote);

        //queryById
//        System.out.println("querybyid=1"+ travelNoteService.queryById(1));
//
//        //queryByuserid
//        for(TravelNote travelNote: travelNoteService.queryByUserId(123456)){
//            System.out.println("querybyuserid=123456"+travelNote);
//        }
//
//        //queryByCityId
//        for(TravelNote travelNote: travelNoteService.queryByCityId(2)){
//            System.out.println("querybycity=2"+travelNote);
//        }
//
        //update
//        travelNoteService.updateStatus(1,1);
//
//        //delete
//        travelNoteService.deleteTravelNote(4);

        //selectByTitle
        for(TravelNote travelNote: travelNoteService.queryByTitle("长沙")){
            System.out.println("querybytitle=changsha"+travelNote);
        }

    }


    @Test
    public void SceneTest(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SceneService sceneService = (SceneService) context.getBean("SceneServiceImpl");


//        HashMap map=new HashMap();
//        map.put("cityid",1);
//        map.put("scenename","橘子洲");
//
//        for (Scene scene : sceneService.querySceneByMap(map)) {
//            System.out.println(scene);
//        }

        sceneService.deleteSceneById(17);


    }

    @Test
    public void ManagerTest(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        ManagerService managerService = (ManagerService) context.getBean("ManagerServiceImpl");

        Manager manager = new Manager(1, "18390844082", "00113");

        System.out.println(managerService.login(manager));
    }

    @Test
    public void SceneBookTest(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SceneBookService sceneBookService = (SceneBookService) context.getBean("SceneBookServiceImpl");

        //add
        SceneBook sceneBook = new SceneBook();
        sceneBook.setSceneid(1);
        sceneBook.setUserid(124);
        sceneBook.setNum(4);

        sceneBookService.addSceneBook(sceneBook);

    }

}
