package Bpo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Bean.TingCheInfo;

import util.DBConnection;

public class query {
	public  List<TingCheInfo> queryinfo(){
		List<TingCheInfo> list = new ArrayList<TingCheInfo>();
		Connection conn = null;
		
		Statement st = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			String sql = "select * from tingche";
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				TingCheInfo car = new TingCheInfo();
				car.setId(rs.getString("id"));
				car.setChepai(rs.getString("chepai"));
				car.setJuli(rs.getString("juli"));
				car.setIn_data(rs.getString("in_data"));
				car.setOut_data(rs.getString("out_data"));
				car.setCheweihao(rs.getString("cheweihao"));
				car.setFee(rs.getString("fee"));
				list.add(car);
				
			}
			DBConnection.close(rs, st, conn);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
}
