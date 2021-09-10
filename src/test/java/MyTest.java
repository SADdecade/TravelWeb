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
        user.setUsername("18390844082");
        user.setPassword("000113");
        System.out.println(userServiceImpl.login(user));
    }

}
