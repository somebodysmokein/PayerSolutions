package com.TCS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.DBConnectionFactory.DBConnectionFactory;

public class updateProvider extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try
		{
			String message="";
		System.out.println("AddProvider Called");
		Enumeration<String> recvParams=request.getParameterNames();
		String tmpParams="";
		while(recvParams.hasMoreElements())
		{
			tmpParams=recvParams.nextElement();
		}
		System.out.println(tmpParams);
		JSONObject params=new JSONObject(tmpParams);
		System.out.println(params.length());
		String CredentialNumber=params.get("CredentialNumber").toString();
		String LastName=params.get("LastName").toString();
		String FirstName=params.get("FirstName").toString();
		String MiddleName=params.get("MiddleName").toString();
		String CredentialType=params.get("CredentialType").toString();
		String Status=params.get("Status").toString();
		String year=params.get("year").toString();
		String CEDueDate=params.get("CEDueDate").toString().substring(0, 10);
		String firstIss_dt=params.get("firstIss_dt").toString().substring(0,10);
		String lastIss_dt=params.get("lastIss_dt").toString().substring(0, 10);
		String ExpirationDate=params.get("ExpirationDate").toString().substring(0,10);
		String ActionTaken=params.get("ActionTaken").toString();
		
		if(MiddleName=="")
		{
			MiddleName="N/A";
		}
		System.out.println("CredentialNumber:"+CredentialNumber+"LastName:"+LastName+"FirstName:"+FirstName+"CredentialType:"+CredentialType);
		
		PrintWriter pw=response.getWriter();
		response.setContentType("text/json");
		DBConnectionFactory conn1 = DBConnectionFactory.getInstance();
		try{	
						
						Connection conn =  conn1.getConnection();
						 
						
						/*String persn_query = "insert into PROVIDER_PERSN_DETAILS(PROV_ID,CredentialNumber,LastName,FirstName,MiddleName,BIRTH_YEAR) values(?,?,?,?,?,?)";
						String cred_info_query="insert into CREDENTIAL_INFO(CredentialNumber,CredentialType) values(?,?)";
						String d_date_query="insert into D_DATE (CE_DUE_DT,FIRST_ISS_DT,LAST_ISS_DT, EXP_DT,ACTION_TAKEN,CredentialNumber) values (?,?,?,?,?,?)";*/
						
						 String persn_query = "update PROVIDER_PERSN_DETAILS set BIRTH_YEAR=?,last_timestamp=CURRENT_TIMESTAMP where CredentialNumber=?";
						 String cred_info_query="update CREDENTIAL_INFO set CredentialType=?,last_timestamp=CURRENT_TIMESTAMP where CredentialNumber=?";
							String d_date_query="update D_DATE set CE_DUE_DT=?,FIRST_ISS_DT=?,LAST_ISS_DT=?, EXP_DT=?,ACTION_TAKEN=?,last_timestamp=CURRENT_TIMESTAMP where CredentialNumber=?";
							//String timestmp_query="insert into procs_tracking values (current_timestamp,current_timestamp)";
							
						java.sql.Date createDate = conn1.getcurrentDate();
						java.sql.PreparedStatement persn_pStmt = conn.prepareStatement(persn_query);
						java.sql.PreparedStatement cred_info_query_pStmt = conn.prepareStatement(cred_info_query);
						java.sql.PreparedStatement d_date_pStmt = conn.prepareStatement(d_date_query);
						//java.sql.PreparedStatement timestmp_pStmt = conn.prepareStatement(timestmp_query);
						
						persn_pStmt.setString(1,year);
						persn_pStmt.setString (2,CredentialNumber);
						persn_pStmt.executeUpdate();
						
						
						cred_info_query_pStmt.setString(1,CredentialType);
						cred_info_query_pStmt.setString (2,CredentialNumber);
						
						cred_info_query_pStmt.executeUpdate();
						
						
						d_date_pStmt.setString (1, CEDueDate);
						d_date_pStmt.setString (2, firstIss_dt);
						d_date_pStmt.setString (3, lastIss_dt);
						d_date_pStmt.setString(4,ExpirationDate);
						d_date_pStmt.setString(5,ActionTaken);
						d_date_pStmt.setString (6,CredentialNumber);
						d_date_pStmt.executeUpdate();
						
						//timestmp_pStmt.executeUpdate();
						message="Update Successful";
			}
			
					catch (SQLException esql)
					{
						message="Update Failed"+esql.getMessage();
						esql.printStackTrace();
					}
		JSONObject finl_json=new JSONObject();
		finl_json.put("message",message);
		pw.write(finl_json.toString());
		//System.out.println(finl_json.get("ID"));
		pw.flush();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
