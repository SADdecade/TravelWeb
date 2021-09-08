import com.karma.pojo.User;
import com.karma.service.UserService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

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

}
