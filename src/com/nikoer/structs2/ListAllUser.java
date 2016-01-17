package com.nikoer.structs2;

import com.mysql.jdbc.ResultSet;
import com.nikoer.SQLBean;
import com.nikoer.vo.UserInfo;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;

/**
 * <code>Set welcome message.</code>
 */
public class ListAllUser extends ActionSupport {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String execute() throws Exception {
        setMessage(getText(MESSAGE));
        return SUCCESS;
    }

    /**
     * Provide default valuie for Message property.
     */
    public static final String MESSAGE = "查看所有用户";

    /**
     * Field for Message property.
     */
    private String message;

    /**
     * Return Message property.
     *
     * @return Message property
     */
    public String getMessage() {
        return message;
    }

    /**
     * Set Message property.
     *
     * @param message Text to display on HelloWorld page.
     */
    public void setMessage(String message) {
        this.message = message;
    }

    public List<UserInfo> getUsers() {
    	initUserList();
        return users;
    }
    
    private List<UserInfo> users = new ArrayList<UserInfo>();
    private void initUserList(){
    	users.clear();
    	SQLBean db = new SQLBean();
    	String sql = "SELECT * FROM pt_user";  
  		try {
			ResultSet rs = (ResultSet) db.select(sql);
			while(rs.next()){
	  			UserInfo user = new UserInfo();
	  			user.setId(rs.getInt("id"));
	  			user.setName(rs.getString("name"));
	  			user.setTell(rs.getString("tell"));
	  			user.setCompany(rs.getString("company"));
	  			user.setQq(rs.getString("qq"));
	  			user.setEmail(rs.getString("email"));
	  			user.setAge(rs.getInt("age"));
	  			user.setSex(rs.getInt("sex"));
	  			user.setPassword(rs.getString("password"));
	  			users.add(user);
	  		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
    }
}
