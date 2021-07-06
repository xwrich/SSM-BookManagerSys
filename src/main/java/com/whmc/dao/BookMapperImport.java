package com.whmc.dao;

import com.whmc.pojo.Books;
import org.apache.ibatis.session.*;
import org.mybatis.spring.SqlSessionTemplate;

import java.sql.Connection;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 *
 * @Author: OriginalCoder
 * @Date: 2021/7/4 23:25
 * @Description:
 */
public class BookMapperImport implements BookMapper, SqlSessionFactory {

    SqlSessionTemplate sessionTemplate;


    public int addBook(Books books) {
        return 0;
    }

    public int deleteBookById(int id) {
        return 0;
    }

    public int updateBook(Books books) {
        return 0;
    }

    public Books queryBookById(int id) {
        return null;
    }

    public List<Books> queryAllBook() {
        return null;
    }


    public Books queryBookByName(String bookName) {
        return null;
    }


    public SqlSession openSession() {
        return null;
    }


    public SqlSession openSession(boolean b) {
        return null;
    }


    public SqlSession openSession(Connection connection) {
        return null;
    }


    public SqlSession openSession(TransactionIsolationLevel transactionIsolationLevel) {
        return null;
    }


    public SqlSession openSession(ExecutorType executorType) {
        return null;
    }


    public SqlSession openSession(ExecutorType executorType, boolean b) {
        return null;
    }


    public SqlSession openSession(ExecutorType executorType, TransactionIsolationLevel transactionIsolationLevel) {
        return null;
    }


    public SqlSession openSession(ExecutorType executorType, Connection connection) {
        return null;
    }


    public Configuration getConfiguration() {
        return null;
    }
}
