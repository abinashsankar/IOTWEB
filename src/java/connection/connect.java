package connection;



import java.sql.*;
import java.util.*;
import java.sql.Statement;
import org.apache.tomcat.jdbc.pool.*;

public class connect {

    private static DataSource theDataSource;
    Properties prop = new Properties();
    private static String connectionURL;
    public Connection connection;
    Statement statement;
    public ResultSet rs, rs1, rs2;
    public String exc;
    public int SQLexceptionErrorCode;
    public int statusCode;
    public int iEffectedRows = 0;

    private synchronized static boolean makeDataSource() {
        if (theDataSource != null) {
            return true;
        }
        ResourceBundle rb = ResourceBundle.getBundle("connection.connect");
        connectionURL = "jdbc:mysql://" + rb.getString("server.name") + ":" + rb.getString("port.no") + "/" + rb.getString("database.name") + "?zeroDateTimeBehavior=convertToNull";

        try {
            PoolProperties p = new PoolProperties();
            p.setUrl(connectionURL);
            p.setDriverClassName(rb.getString("driver.name"));
            p.setUsername(rb.getString("user.name"));
            p.setPassword(rb.getString("user.password"));
            p.setTestOnBorrow(true);
            p.setValidationQuery("SELECT 1");
            p.setMinIdle(5);
            p.setMaxIdle(50);
            p.setInitialSize(1);
            p.setMaxActive(10000000);
            p.setRemoveAbandoned(true);
            p.setRemoveAbandonedTimeout(600);
            p.setJdbcInterceptors("org.apache.tomcat.jdbc.pool.interceptor.ConnectionState;org.apache.tomcat.jdbc.pool.interceptor.StatementFinalizer");
            theDataSource = new DataSource(p);
        } catch (Exception ex) {
            return false;
        }
        return true;
    }

    public connect() {
        rs = null;
        statement = null;
        iEffectedRows = 0;
    }

    public void conn() throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        makeDataSource();
        connection = theDataSource.getConnection();
    }

    public void read(String s) throws SQLException {
        statement = connection.createStatement();
        rs = statement.executeQuery(s);
    }

    public void read1(String s) throws SQLException {
        statement = connection.createStatement();
        rs1 = statement.executeQuery(s);
    }

    public void read2(String s) throws SQLException {
        statement = connection.createStatement();
        rs2 = statement.executeQuery(s);
    }

    public void insert(String s) throws SQLException {
        statement = connection.createStatement();
        iEffectedRows = statement.executeUpdate(s);
        if (iEffectedRows != 0) {
            statusCode = 1;
        } else {
            statusCode = 2;
        }
    }

    public String insertAndGetAutoGenId(String s) throws SQLException {
        String lastAutoGenId = null;
        statement = connection.createStatement();
        iEffectedRows = statement.executeUpdate(s, Statement.RETURN_GENERATED_KEYS);
        if (iEffectedRows != 0) {
            statusCode = 1;
            rs = statement.getGeneratedKeys();
            if (rs.next()) {
                lastAutoGenId = rs.getString(1);
            }
        } else {
            statusCode = 2;
        }
        return lastAutoGenId;
    }

    public void update(String s) throws SQLException {
        iEffectedRows = 0;
        statement = connection.createStatement();
        iEffectedRows = statement.executeUpdate(s);
    }
    

    public void delete(String s) throws SQLException {
        iEffectedRows = 0;
        statement = connection.createStatement();
        iEffectedRows = statement.executeUpdate(s);
        
    }
    

    public int[] executeBatch(String s[]) throws SQLException {
        connection.setAutoCommit(false);
        statement = connection.createStatement();

        for (int i = 0; i < s.length; i++) {
            statement.addBatch(s[i]);
        }
        int[] count = statement.executeBatch();
        connection.commit();
        connection.setAutoCommit(true);
        return count;
    }

    public void conclose() throws SQLException {

        if (rs != null) {
            rs.close();
        }
        if (rs1 != null) {
            rs1.close();
        }
        if (rs2 != null) {
            rs2.close();
        }
        if (connection != null) {
            connection.close();
        }
        if (statement != null) {
            statement.close();
        }
        iEffectedRows = 0;
        rs = null;
        rs1 = null;
        rs2 = null;
        statement = null;
        connection = null;
    }
}
/* 
						Status Code : 1  ---> Successful Insertion
						Status Code : 2  ---> Insertion Failed
						Status Code : 3  ---> Deletion successful
						Status Code : 4  ---> Deletion failed
						Status Code : 5  ---> Successful Updation
						Status Code : 6  ---> Primary key voilation (while adding) 
						Status Code : 7  ---> Primary key voilation (while updation) 
						Status Code : 8  ---> Foreign key voilation (While Deleting)..............
 */
