package edu.hust.softcollege.controller;

import edu.hust.softcollege.pojo.Book;
import edu.hust.softcollege.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/library")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBooks")
    public String getAllBooks(Model model) {
        List<Book> list = bookService.queryAllBooks();
        model.addAttribute("list", list);

        // 跳转到 allBooks.jsp 页面（此处忽略路径前缀）
        return "allBooks";
    }

    @RequestMapping("/toAddBook")
    public String toAddBook() {
        // 跳转到 addBook.jsp 页面（此处忽略路径前缀）
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Book book) {
        System.out.println( book );
        bookService.addBook( book );

        // 重定向到显示全部书籍的命令请求
        return "redirect:/library/allBooks";
    }

    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(Model model, int id) {
        Book book = bookService.queryBookById(id);
        System.out.println(book);
        model.addAttribute("book", book);

        // 跳转到 updateBook.jsp 页面（此处忽略路径前缀）
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Model model, Book book) {
        System.out.println(book);
        bookService.updateBook(book);
        Book otherBook = bookService.queryBookById(book.getBkID());
        model.addAttribute("books", otherBook);

        // 重定向到显示全部书籍的命令请求
        return "redirect:/library/allBooks";
    }

    @RequestMapping("/del/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id) {
        bookService.deleteBookById(id);

        // 重定向到显示全部书籍的命令请求
        return "redirect:/library/allBooks";
    }
}