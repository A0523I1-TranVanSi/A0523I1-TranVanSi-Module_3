package Service;

import Model.User;

import java.sql.*;
import java.util.ArrayList;                   
import java.util.List;

public class UserDAO implements IUserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/ss12_jdbc_crud?createDatabaseIfNotExist=true";
    private String jdbcUsername = "root";
    private String jdbcPassword = "0399518901";
    private static final String INSERT_USERS_SQL = "INSERT INTO users"+" (name, email, country) VALUES"+  " (?, ?, ?);" ;
    private static final String SELECT_USER_BY_ID = "select  id,name,email,country from users where id=?";
    private static final String SELECT_ALL_USER = "select * from users";
    private static final String DELETE_USER_SQL = "delete from users where id=?;";
    private static final String UPDATE_USER_SQL = "update users set name=?,email=?,country=? where id=?;";
    public UserDAO(){

    }
    protected Connection getConnection(){
        Connection connection = null    ;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection ;
    }
    @Override
    public void insertUser(User user) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getCountry());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }catch (SQLException e){
            printSQLException(e);
        }
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex){
            if (e instanceof SQLException){
                e.printStackTrace(System.err);
                System.err.println("SQLState : "+((SQLException)e).getSQLState());
                System.err.println("Error Code : "+((SQLException)e).getErrorCode());
                System.err.println("Massage : "+e.getMessage());

                Throwable t = ex.getCause();
                while (t != null){
                    System.out.println("Cause :"+t );
                    t = t.getCause();
                }
            }
        }
    }

    @Override
    public User selectUser(int id) {
       User user = null;
       try  (Connection connection = getConnection();
       PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)) {
           preparedStatement.setInt(1,id);
           System.out.println(preparedStatement );
           ResultSet rs = preparedStatement.executeQuery();

           while (rs.next()){
               String name = rs.getString("name");
               String email = rs.getString("email");
               String country = rs.getString("country");
               user = new User(id,name,email,country);
           }
       } catch (SQLException e) {
           printSQLException(e);
       }
       return user  ;
    }

    @Override
    public List<User> selectAllUser() {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection() ; PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id,name,email,country));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdate ;
        try (Connection connection = getConnection() ; PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER_SQL)){
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getCountry());
            preparedStatement.setInt(4,user.getId());

            rowUpdate = preparedStatement.executeUpdate() > 0 ;
        }
        return rowUpdate ;

    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        boolean rowDelete;
        try (Connection connection = getConnection() ; PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER_SQL)){
            preparedStatement.setInt(1,id);
            rowDelete = preparedStatement.executeUpdate() > 0 ;
        }
        return rowDelete ;
    }

}
