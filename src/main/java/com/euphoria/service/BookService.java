package com.euphoria.service;

import com.euphoria.pojo.Books;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface BookService {
    int addBook(Books book);

    //根据id删除一个Book
    int deleteBookById( int id);

    //更新Book
    int updateBook(Books books);

    //根据id查询,返回一个Book
    Books queryBookById(int id);

    //查询全部Book,返回list集合
    List<Books> queryAllBook();
    List<Books> queryBook(String bookName);
}
