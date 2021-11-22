package com.euphoria.controller;

import com.euphoria.pojo.Books;
import com.euphoria.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

/**
 * @author: ❤ Euphoria ❤
 * @title: BookController
 * @projectName ssmbuild
 * @description:
 * @date 2021/11/21  10:44
 */
@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list=bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }
    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }
//    跳转修改
    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
    Books books = bookService.queryBookById(id);
model.addAttribute("QBook",books);
    return "updateBook";
    }

    //修改
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }
    @RequestMapping("/deleteBook")
    public String deleteBook(int id,Model model){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }
    @RequestMapping("queryBook")
    public String queryBook(String bookName,Model model){
        List<Books> list = bookService.queryBook(bookName);
        System.out.println(list);
        model.addAttribute("list",list);
        return "allBook";
    }


}
