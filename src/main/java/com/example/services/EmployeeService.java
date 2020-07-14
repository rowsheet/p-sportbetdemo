package com.example.services;

import com.example.models.Employee;
import com.example.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/employeeService")
@Produces(MediaType.APPLICATION_JSON)
public class EmployeeService {

    @GET
    @Path("/employees")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Employee> getUsers() {
        HibernateUtil hibernateUtil = new HibernateUtil();
        Session session = hibernateUtil.getSession();
        Transaction transaction = session.beginTransaction();

        List<Employee> employees = session
                .createQuery("from Employee")
                .list();

        transaction.commit();
        return employees;
    }

    @GET
    @Path("/employees/{employeeID}")
    @Produces(MediaType.APPLICATION_JSON)
    public Employee getEmployee(
           @PathParam("employeeID") Integer employeeID
    ) {
        HibernateUtil hibernateUtil = new HibernateUtil();
        Session session = hibernateUtil.getSession();
        Transaction transaction = session.beginTransaction();

        List<Employee> employees = session.createQuery("FROM Employee E WHERE E.id = :id")
                .setParameter("id", employeeID)
                .list();

        transaction.commit();
        return employees.get(0);
    }
}
