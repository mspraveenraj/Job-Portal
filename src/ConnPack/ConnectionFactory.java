package ConnPack;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Praveenraj
 */
public class ConnectionFactory
{
    private Connection con;
    private static ConnectionFactory conn;
    private ConnectionFactory()
    {

    }
    static
    {
        conn=new ConnectionFactory();
    }
    public static ConnectionFactory getInstance()
    {
        return conn;
    }

    public int setData(String query,String DSN)
    {
        int n=0;
        try
        {
            //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            //con=DriverManager.getConnection("jdbc:odbc:" + DSN);
        	//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //String msAccDB="F:/MS/OnlineJobPortal/DataBaseInfo/jobPortal.mdb";
            //String dbURL="jdbc:ucanaccess://"+msAccDB;
            //con=DriverManager.getConnection(dbURL);
        	Class.forName("com.mysql.jdbc.Driver");
        	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root",""); 
            
        	Statement stmt=con.createStatement();
            n=stmt.executeUpdate(query);
        }
        catch(Exception ex)
        {
            return -1;
        }
        return n;
    }

    public ResultSet getResultSet(String query,String DSN)
    {
        ResultSet rs=null;
        try
        {
        	//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        	
        	Class.forName("com.mysql.jdbc.Driver");
        	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root",""); 
            //String msAccDB="F:/MS/OnlineJobPortal/DataBaseInfo/jobPortal.mdb";
            //String dbURL="jdbc:ucanaccess://"+msAccDB;
            //con=DriverManager.getConnection(dbURL);
            //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            //con=DriverManager.getConnection("jdbc:odbc:" + DSN);
            Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs=stmt.executeQuery(query);
        }
        catch(Exception ex)
        {
        	System.out.print("Conn fail in resultset");
            return null;

        }
        return rs;
    }

    public Vector getData(String query,String DSN)
    {
        Vector V=new Vector();
        try
        {
            //Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //String msAccDB="F:/MS/OnlineJobPortal/DataBaseInfo/jobPortal.mdb";
            //String dbURL="jdbc:ucanaccess://"+msAccDB;
            //con=DriverManager.getConnection("jdbc:odbc:" + DSN);
            //con=DriverManager.getConnection(dbURL);
        	Class.forName("com.mysql.jdbc.Driver");
        	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root",""); 
            
            Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs=stmt.executeQuery(query);
            ResultSetMetaData rsmd=rs.getMetaData();
            int colcount=rsmd.getColumnCount();
            while(rs.next())
            {
                Vector sub=new Vector();
                for(int i=1;i<=colcount;i++)
                    sub.add(rs.getString(i));
                V.add(sub);
            }
            //rs.close();
            //con.close();
        }
        catch(Exception ex)
        {
        	System.out.println("Conn fail");
            return null;

        }
        return V;
    }
}
