package backend;

import backend.daos.UserDAO;
import backend.model.User;

import java.util.List;

public class Main {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();

        User user1 = new User("Me", 300);
//        userDAO.createUser(user1);
        List<User> all = userDAO.getAll();
        for (int i = 0; i < all.size(); i++) {
            System.out.println(all.get(i).getUsername()+" "+all.get(i).getScore());
        }
    }
}
