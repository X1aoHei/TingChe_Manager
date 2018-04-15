package Bpo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Bean.CheWei;
import Bean.CheWei_Info;
import util.DBConnection;

public class QueryCheWei {
	//查看未占用的车位
	public List<CheWei> queryzero(){
		List<CheWei> list = new ArrayList<CheWei>();
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			String sql = "select * from chewei where zhanyong = '0'";
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				CheWei car = new CheWei();
				car.setCheweihao(rs.getString("cheweihao"));
				car.setZhanyong(rs.getString("zhanyong"));
				list.add(car);
			}
			DBConnection.close(rs, st, conn);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	//查看占用车位中，即将空闲的车位
	public List<CheWei_Info> query(){
		List<CheWei_Info> list = new ArrayList<CheWei_Info>();
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			String sql = "select * from chewei_info where datacha>0 ORDER BY datacha ASC";
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				CheWei_Info car = new CheWei_Info();
				car.setCheweihao(rs.getString("cheweihao"));
				car.setDatacha(rs.getString("datacha"));
				list.add(car);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
}
