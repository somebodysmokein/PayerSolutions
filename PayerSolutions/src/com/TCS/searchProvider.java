package com.TCS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.DBConnectionFactory.DBConnectionFactory;

public class searchProvider extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		JSONObject result_obj;
		JSONArray result_array=new JSONArray();
		try
		{
			String message="";
		System.out.println("Search Provider Caled");
		Enumeration<String> recvParams=request.getParameterNames();
		String tmpParams="";
		while(recvParams.hasMoreElements())
		{
			tmpParams=recvParams.nextElement();
		}
		System.out.println("TmpParams:"+tmpParams.substring(1, tmpParams.length()-1));
		/*JSONObject params=new JSONObject(tmpParams);
		System.out.println(params.length());
		String searchkey=params.get("searchkey").toString();*/
		PrintWriter pw=response.getWriter();
		response.setContentType("text/json");
		DBConnectionFactory conn1 = DBConnectionFactory.getInstance();
		String flag="n";
		result_obj=new JSONObject();
		try{	
			String projectName="";
						Connection conn =  conn1.getConnection();
						
						String query=" select R1.prov_id,R1.CredentialNumber,R2.CredentialType,R1.Lastname,R1.Firstname,R1.MiddleName,R1.birth_year,"+
            "R2.STATUS,R3.CE_DUE_DT,R3.FIRST_ISS_DT,R3.LAST_ISS_DT,R3.EXP_DT ,R3.ACTION_TAKEN "+
            "from PROVIDER_PERSN_DETAILS R1,CREDENTIAL_INFO R2,D_DATE R3 where R1.CredentialNumber=R2.CredentialNumber"+
            " and R1.CredentialNumber=R3.CredentialNumber and (R1.lastname=? or R1.firstname=?)";
						java.sql.PreparedStatement empStmt=conn.prepareStatement(query);
						empStmt.setString(1, tmpParams.substring(1, tmpParams.length()-1));
						empStmt.setString(2, tmpParams.substring(1, tmpParams.length()-1));
						ResultSet rs=empStmt.executeQuery();
						
						while(rs.next())
						{
							flag="y";
							projectName="";
							
							result_obj.put("prov_id", rs.getInt(1));
							result_obj.put("CredentialNumber", rs.getString(2));
							result_obj.put("CredentialType", rs.getString(3));
							result_obj.put("LastName", rs.getString(4));
							
							result_obj.put("FirstName", rs.getString(5));
							result_obj.put("MiddleName", rs.getString(6));
							result_obj.put("year", rs.getString(7));
							result_obj.put("Status", rs.getString(8));
							
							result_obj.put("CEDueDate", rs.getString(9));
							result_obj.put("firstIss_dt", rs.getString(10));
							result_obj.put("lastIss_dt", rs.getString(11));
							result_obj.put("ExpirationDate", rs.getString(12));
							result_obj.put("ActionTaken", rs.getString(13));
							result_array.put(result_obj);
							System.out.println("FirstName:"+result_obj.get("FirstName")+"LastName:"+result_obj.get("LastName"));
						}
						
						System.out.println("Flag:"+flag);
						rs.close();
						conn.close();
						/*if(flag=="y")
						{*/
							pw.write(result_obj.toString());
							pw.flush();
					/*	}*/
						//JSONObject providerData=new JSONObject();
						//providerData.put("items", result_array);
						//pw.write(providerData.toString());
						
			}
			
					catch (SQLException esql)
					{
						message="Fetch Failed"+esql.getMessage();
						esql.printStackTrace();
					}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}

