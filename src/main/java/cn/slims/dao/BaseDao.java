package cn.slims.dao;

import java.util.List;

public interface BaseDao<T> {
    void insert(T t);
    void delete(T t);
    void update(T t);

    T selectOne(T t);
    List<T> showAll();
}
