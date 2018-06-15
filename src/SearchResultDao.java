import java.sql.*;

import java.util.LinkedList;

import Beans.StudentCompanySearchBean;

public class SearchResultDao {
	
	//Connection con;
	SearchResultDao()
	{
	}
	/*
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/test","root","");
		} 
		catch (ClassNotFoundException e) {
			System.out.println("Class Driver not loaded");
		} 
		catch (SQLException e) {
			System.out.println("Connection Problem");
		}
	}*/
	LinkedList<StudentCompanySearchBean> getSearchDetails(String searchBy,String searchValue)
	{
		LinkedList<StudentCompanySearchBean> scsbObj=new LinkedList<StudentCompanySearchBean>();
		LinkedList<String> studentId=new LinkedList<String>();
		PreparedStatement ps,ps1;
		ResultSet resultSet1,rs1;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/test","root","");
		if(searchBy.equals("name"))
		{
			ps = con.prepareStatement("select studentid from studentmaster where name=? ");
		}
		else if(searchBy.equals("college"))
		{
			ps=con.prepareStatement("select studentid from graduation where coolegename=?");
		}
		else if(searchBy.equals("percentage"))
		{
			ps=con.prepareStatement("select studentid from graduation where val=?");
		}
		else //if(searchBy.equals("skills"))
		{
			ps=con.prepareStatement("select studentid from studentmaster");
		}
		ps.setString(1,searchValue);
				
		resultSet1 = ps.executeQuery();
		while(resultSet1.next())
		{
			studentId.add(resultSet1.getString(1));
		}
		for(String studId:studentId)
		{
			StudentCompanySearchBean searchBean=new StudentCompanySearchBean();
			ps1=con.prepareStatement("select firstname,email from studentmaster where studentid=?");
			ps1.setString(1,studId);
			rs1=ps1.executeQuery();
			while(rs1.next())
			{
				searchBean.setName(rs1.getString(1));
				searchBean.setEmail(rs1.getString(2));
			}
			ps1=con.prepareStatement("select gender,dateofbirth,countryofresidence,contactnumber from personal where studentid=?");
			ps1.setString(1,studId);
			rs1=ps1.executeQuery();
			while(rs1.next())
			{
				searchBean.setGender(rs1.getString(1));
				searchBean.setDob(rs1.getString(2));
				searchBean.setCountryOfResidence(rs1.getString(3));
				searchBean.setContact(rs1.getString(4));
			}
			ps1=con.prepareStatement("select secvalue,sensecvalue from academic where studentid=?");
			ps1.setString(1,studId);
			rs1=ps1.executeQuery();
			while(rs1.next())
			{
				searchBean.setSecValue(rs1.getString(1));
				searchBean.setSenSecValue(rs1.getString(2));
			}
			ps1=con.prepareStatement("select degree,branch,collegename,yop,val from graduation where studentid=?");
			ps1.setString(1,studId);
			rs1=ps1.executeQuery();
			while(rs1.next())
			{
				searchBean.setDegree(rs1.getString(1));
				searchBean.setBranch(rs1.getString(2));
				searchBean.setCollege(rs1.getString(3));
				searchBean.setYearOfPassing(rs1.getString(4));
				searchBean.setCollegeValue(rs1.getString(5));
			}
			scsbObj.add(searchBean);
		}
	}
			catch (Exception e) {
				System.out.print("Problem!! OOPs!!!");
				//e.printStackTrace();
			}
		return scsbObj;
	}
}