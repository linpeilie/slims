package cn.slims.service.impl;

import cn.slims.dao.UserDao;
import cn.slims.entity.User;
import cn.slims.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao dao;

    public void insert(User user) {
        dao.insert(user);
    }

    public void delete(User user) {
        dao.delete(user);
    }

    public void update(User user) {
        dao.update(user);
    }

    public User verify(User user) {
        return dao.selectOne(user);
    }

    public List<User> showAll() {
        return dao.showAll();
    }
}
