import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisteroneDao {	
private String dbUrl= "jdbc:mysql://localhost:3306/onlinequizuser";
private String dbUname= "root";
private String dbpassword="Vianj@283487";
private String dbDriver="com.mysql.cj.jdbc.Driver";
public void loadDriver(String dbDriver) {	
	try {
		Class.forName(dbDriver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}	
}
public Connection getConnection() {
	
	Connection con=null;
	try {
		con=DriverManager.getConnection(dbUrl,dbUname,dbpassword);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return con;	
}
public String insert(Memberone memberone) {	
	loadDriver(dbDriver);
	Connection con = getConnection();
	String result="Data added successfully ";
	String sql="insert into member values(?,?,?,?)";	
	PreparedStatement ps;
	try {
	ps = con.prepareStatement(sql);
	ps.setString(1,memberone.getUname());
	ps.setString(2,memberone.getEmail());
	ps.setString(3,memberone.getRegisteras());
	ps.setString(4,memberone.getPassword());
	ps.executeUpdate();
	}catch (SQLException e) {
		e.printStackTrace();
		 result="Data not added successfully";
	}	
	return "Data added successfully";	
}
}
