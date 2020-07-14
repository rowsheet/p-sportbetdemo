package com.example.utils;

import com.example.models.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    public HibernateUtil() {
    }

    public SessionFactory getSessionFactory() {
        String DATABASE_HOST = System.getenv("DATABASE_HOST");
        String DATABASE_NAME = System.getenv("DATABASE_NAME");
        String DATABASE_USER = System.getenv("DATABASE_USER");
        String DATABASE_PASSWORD = System.getenv("DATABASE_PASSWORD");

        System.out.println(DATABASE_HOST);
        System.out.println(DATABASE_NAME);
        System.out.println(DATABASE_USER);
        System.out.println(DATABASE_PASSWORD);

        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .setProperty("hibernate.connection.url", "jdbc:postgresql://" + DATABASE_HOST + ":5432/" + DATABASE_NAME)
                .setProperty("hibernate.connection.username", DATABASE_USER)
                .setProperty("hibernate.connection.password", DATABASE_PASSWORD)
                .addAnnotatedClass(Employee.class)
                .buildSessionFactory();
        return factory;
    }

    public Session getSession() {
        SessionFactory factory = this.getSessionFactory();
        Session session = factory.getCurrentSession();
        return session;
    }
}
