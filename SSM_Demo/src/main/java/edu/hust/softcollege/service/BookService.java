package edu.hust.softcollege.service;

import edu.hust.softcollege.pojo.Book;

import java.util.List;

public interface BookService {
    //增加一个Book
    int addBook(Book book);
    //根据id删除一个Book
    int deleteBookById(int id);
    //更新Book
    int updateBook(Book book);
    //根据id查询,返回一个Book
    Book queryBookById(int id);
    //查询全部Book,返回list集合
    List<Book> queryAllBooks();
}
