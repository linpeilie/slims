package cn.slims.entity;

import java.util.UUID;

/**
 * @author linpeilie
 * @date 2017/11/23
 * @desc 用户登陆的信息
 */
public class User {
    private String userId;  //user_id
    private String userName;//user_name
    private String tel;     //tel
    private String email;   //email
    private String password;//password
    private String state;   //state

    public User() {
    }

    public User(String userName, String tel, String email, String password, String state) {
        this.userId = UUID.randomUUID().toString().replaceAll("-","");
        this.userName = userName;
        this.tel = tel;
        this.email = email;
        this.password = password;
        this.state = state;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
