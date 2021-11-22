package com.euphoria.service;

import com.euphoria.dao.BookMapper;
import com.euphoria.pojo.Books;

import java.util.List;

/**
 * @author: ❤ Euphoria ❤
 * @title: BookServiceImpl
 * @projectName ssmbuild
 * @description:
 * @date 2021/11/20  15:34
 */

public class BookServiceImpl implements BookService{
    //service层调dao层
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addBook(Books book) {
        return bookMapper.addBook(book);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    @Override
    public List<Books> queryBook(String bookName) {
        return bookMapper.queryBook(bookName);
    }
}
