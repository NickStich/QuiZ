package backend.daos;

import backend.model.User;

import java.util.List;

public interface IUser {
   void createUser(User user);

   void removeUser(User user);

   void updateUser(User user);

   User getById(long id);

   List<User> getAll();


}
