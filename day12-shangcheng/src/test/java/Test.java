import com.offcn.shangcheng.bean.User;
import com.offcn.shangcheng.service.impl.UserServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.annotation.Resource;
import java.sql.SQLException;
import java.util.Date;

public class Test {

    @Resource
    private UserServiceImpl userService;
    @org.junit.Test
    public void testLogin() throws SQLException {
        User user = userService.queryUser("zhangsan", "123456");
    }

    @org.junit.Test
    public void testRegister() throws SQLException {
//        ApplicationContext ac = new ClassPathXmlApplicationContext("spring.xml");
//        UserServiceImpl serviceImpl = ac.getBean("userServiceImpl",UserServiceImpl.class);
        UserServiceImpl serviceImpl = new UserServiceImpl();
        User user = new User();
        user.setSex("男");
        user.setPassword("123456");
        user.setName("nname");
        user.setEmail("s=naem@11");
        user.setBirthday(new Date());
        user.setUsername("zhangs");
        int rs = serviceImpl.register(user);
        System.out.println(rs);
    }
}
