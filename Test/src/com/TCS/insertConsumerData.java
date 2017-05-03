package com.TCS;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import org.json.JSONArray;
import org.json.JSONObject;

import com.DBConnectionFactory.ProvDBConnectionFactory;

public class insertConsumerData {

	JSONArray consumer_array=new JSONArray();
	
	ProvDBConnectionFactory prov_con_factory;
	boolean result;
	public void setConsumerDATA(JSONArray data)
	{
		consumer_array=data;
		
	}
	public insertConsumerData()
	{
		prov_con_factory=ProvDBConnectionFactory.getInstance();
	}
	
	public String startCopying()
	{
		String message;
		
		try{	
			
			Connection conn =  prov_con_factory.getConnection();
			
			 
			 String verify_rndQuery="select 1 from credential_info where exists "+
					 "(select * from credential_info where prov_id=?)";
			 java.sql.PreparedStatement checkrnd_pStmt = conn.prepareStatement(verify_rndQuery);
		
			
			String persn_query = "insert into consumer_provider_persn_details(PROV_ID,CredentialNumber,LastName,FirstName,MiddleName,BIRTH_YEAR) values ";
			String cred_info_query="insert into consumer_prov_credential_info(CredentialNumber,CredentialType) values ";
			String d_date_query="insert into consumer_d_date (CE_DUE_DT,FIRST_ISS_DT,LAST_ISS_DT, EXP_DT,ACTION_TAKEN,CredentialNumber) values ";
			
			
			for(int i=0;i<consumer_array.length();i++)
			{
				persn_query=persn_query+"(?,?,?,?,?,?),";
				cred_info_query=cred_info_query+"(?,?),";
				d_date_query=d_date_query+"(?,?,?,?,?,?),";
			}
			
			persn_query=persn_query.substring(0,persn_query.length()-1);
			cred_info_query=cred_info_query.substring(0,cred_info_query.length()-1);
			d_date_query=d_date_query.substring(0,d_date_query.length()-1);
			
			java.sql.Date createDate = prov_con_factory.getcurrentDate();
			java.sql.PreparedStatement persn_pStmt = conn.prepareStatement(persn_query);
			java.sql.PreparedStatement cred_info_query_pStmt = conn.prepareStatement(cred_info_query);
			java.sql.PreparedStatement d_date_pStmt = conn.prepareStatement(d_date_query);
			
			System.out.println(persn_query);
			System.out.println(cred_info_query);
			System.out.println(d_date_query);
			int ctr=0;
			for(int i=0;i<consumer_array.length();i++)
			{
				JSONObject consumer_obj=new JSONObject();
				consumer_obj=consumer_array.getJSONObject(i);
				System.out.println(ctr);
			persn_pStmt.setInt (++ctr,Integer.parseInt(consumer_obj.get("prov_id").toString()));
			persn_pStmt.setString (++ctr,consumer_obj.get("CredentialNumber").toString());
			persn_pStmt.setString (++ctr, consumer_obj.get("LastName").toString());
			persn_pStmt.setString (++ctr, consumer_obj.get("FirstName").toString());
			persn_pStmt.setString (++ctr, consumer_obj.get("MiddleName").toString());
			persn_pStmt.setString(++ctr,consumer_obj.get("year").toString());
			}
			persn_pStmt.executeUpdate();
			
			ctr=0;
			for(int i=0;i<consumer_array.length();i++)
			{
				JSONObject cred_info_consumer_obj=new JSONObject();
				cred_info_consumer_obj=consumer_array.getJSONObject(i);
			cred_info_query_pStmt.setString (++ctr,cred_info_consumer_obj.get("CredentialNumber").toString());
			cred_info_query_pStmt.setString(++ctr,cred_info_consumer_obj.get("CredentialType").toString());
			
			}
			cred_info_query_pStmt.executeUpdate();
			
			ctr=0;
			for(int i=0;i<consumer_array.length();i++)
			{
				JSONObject d_date_consumer_obj=new JSONObject();
			d_date_consumer_obj=consumer_array.getJSONObject(i);
			d_date_pStmt.setString (++ctr, d_date_consumer_obj.get("CEDueDate").toString());
			d_date_pStmt.setString (++ctr, d_date_consumer_obj.get("firstIss_dt").toString());
			d_date_pStmt.setString (++ctr, d_date_consumer_obj.get("lastIss_dt").toString());
			d_date_pStmt.setString(++ctr,d_date_consumer_obj.get("ExpirationDate").toString());
			d_date_pStmt.setString(++ctr,d_date_consumer_obj.get("ActionTaken").toString());
			d_date_pStmt.setString (++ctr,d_date_consumer_obj.get("CredentialNumber").toString());
			}
			d_date_pStmt.executeUpdate();
			
			message="Update Successful";
}catch (Exception esql)
		{
			message="Update Failed"+esql.getMessage();
			esql.printStackTrace();
		}
		return message;
	}
	
}
