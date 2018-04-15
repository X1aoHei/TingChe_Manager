package Bpo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import Bean.Fee;
import util.DBConnection;

public class QueryFee {
	public Fee query(String id){
		Fee f = new Fee();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			String sql = "select * from chewei_fee where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				
				f.setId(id);
				f.setCheweihao(rs.getString("cheweihao"));
				f.setFee(rs.getString("fee"));
				
			}
			DBConnection.close(rs, ps, conn);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}
}
