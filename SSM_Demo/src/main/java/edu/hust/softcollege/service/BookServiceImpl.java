package edu.hust.softcollege.service;

import edu.hust.softcollege.dao.BookMapper;
import edu.hust.softcollege.pojo.Book;

import java.util.List;

public class BookServiceImpl implements BookService{
    // 调用dao层的操作，设置一个set接口，方便Spring管理
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Book books) {
        return bookMapper.updateBook(books);
    }

    public Book queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Book> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }
}
