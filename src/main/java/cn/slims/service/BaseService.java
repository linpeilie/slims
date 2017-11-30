package cn.slims.service;

import java.util.List;

public interface BaseService<T> {

    void insert(T t);
    void delete(T t);
    void update(T t);

    T verify(T t);
    List<T> showAll();

}
