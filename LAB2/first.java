

import java.sql.*;


public class lab1 {


	public static void main(String[] args)
	{

		Connection con = null;
		PreparedStatement ps = null;

		con = connection.connectDB();


		try {

			String sql = "insert into empdetails values('Anitej Prasad','AP','anitej.cs19@bmsce.ac.in','Finance','7349021247',10)";

			ps = con.prepareStatement(sql);

			ps.execute();
		}


		catch (Exception e) {

			System.out.println(e);
		}
	}
}
