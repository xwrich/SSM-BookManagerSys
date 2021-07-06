package com.whmc.dao;

import com.whmc.pojo.Books;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 *
 * @Author: OriginalCoder
 * @Date: 2021/7/4 22:24
 * @Description:
 */
public interface BookMapper {

    //增加一本书
    int addBook(Books books);


    //删除一本书
    int deleteBookById(@Param("bookID")int id);


    //更新一本书
    int updateBook(Books books);


    //查询一本书
    Books queryBookById(@Param("bookID")int id);

    //查询全部的书
    List<Books> queryAllBook();

    Books queryBookByName(@Param("bookName") String bookName);

}
