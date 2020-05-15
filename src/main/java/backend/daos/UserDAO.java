package backend.daos;

import backend.config.HibernateConfig;
import backend.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUser{

    @Override
    public void createUser(User user) {
        Transaction transaction = null;
        try {
            Session session = HibernateConfig.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
        } catch (Exception ex) {
            if (transaction!=null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        }
    }

    @Override
    public void removeUser(User user) {
        Transaction transaction = null;
        try {
            Session session = HibernateConfig.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.remove(user);
            transaction.commit();
        } catch (Exception ex) {
            if (transaction!=null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        }
    }

    @Override
    public void updateUser(User user) {
        Transaction transaction = null;
        try {
            Session session = HibernateConfig.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.update(user);
            transaction.commit();
        } catch (Exception ex) {
            if (transaction!=null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        }
    }

    @Override
    public User getById(long id) {
        User user = null;
        try {
            Session session = HibernateConfig.getSessionFactory().openSession();
            user = session.find(User.class,id);
            session.close();
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return user;
    }

    @Override
    public List<User> getAll() {
        List<User> users = new ArrayList<>();
        try {
            Session session = HibernateConfig.getSessionFactory().openSession();
            users = session.createQuery("from User", User.class).list();
            session.close();
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return users;
    }
}
