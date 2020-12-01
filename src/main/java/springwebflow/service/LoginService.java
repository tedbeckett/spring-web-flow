package springwebflow.service;

import org.springframework.stereotype.Service;

import springwebflow.bean.LoginBean;

@Service
public class LoginService {

    public String validateUser(LoginBean loginBean) {
        String userName = loginBean.getUserName();
        String password = loginBean.getPassword();
        if (userName.equals("ted") && password.equals("ted")) {
            return "true";
        } else {
            return "false";
        }
    }

}
