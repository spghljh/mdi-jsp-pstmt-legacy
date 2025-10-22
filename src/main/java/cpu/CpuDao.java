package cpu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DbConnection;

public class CpuDao {

	private final DbConnection db = DbConnection.getInstance();

	public int selectTotalCpuCount() {
		String sql = "SELECT COUNT(*) FROM cpu";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = db.getDbConn();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			throw new RuntimeException("CPU row 수 조회 중 오류 발생", e);
		} finally {
			try {
				db.dbClose(rs, stmt, conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}

	public List<CpuDTO> selectAllCpus() {
		List<CpuDTO> cpuList = new ArrayList<>();
		String sql = """
				    SELECT
				        m.id_cpu,
				        m.name_cpu,
				        m.release_cpu,
				        m.core_cpu,
				        m.thread_cpu,
				        m.maxghz_cpu,
				        m.minghz_cpu,
				        m.choice_cpu,
				        m.cpu_type_code,
				        t.type_cpu,
				        m.cpu_manf_code,
				        b.manf_cpu
				    FROM cpu m
				    LEFT JOIN cpu_type t ON m.cpu_type_code = t.cpu_type_code
				    LEFT JOIN cpu_manf_brand b ON m.cpu_manf_code = b.cpu_manf_code
				""";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = db.getDbConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				CpuDTO cpu = new CpuDTO();
				cpu.setIdCpu(rs.getInt("id_cpu"));
				cpu.setNameCpu(rs.getString("name_cpu"));
				cpu.setReleaseCpu(rs.getInt("release_cpu"));
				cpu.setCoreCpu(rs.getInt("core_cpu"));
				cpu.setThreadCpu(rs.getInt("thread_cpu"));
				cpu.setMaxghzCpu(rs.getFloat("maxghz_cpu"));
				cpu.setMinghzCpu(rs.getFloat("minghz_cpu"));
				cpu.setChoiceCpu(rs.getInt("choice_cpu"));
				cpu.setCpuTypeCode(rs.getString("cpu_type_code"));
				cpu.setTypeCpu(rs.getString("type_cpu"));
				cpu.setCpuManfCode(rs.getString("cpu_manf_code"));
				cpu.setManfCpu(rs.getString("manf_cpu"));
				cpuList.add(cpu);
			}

		} catch (SQLException e) {
			throw new RuntimeException("CPU 목록 조회 중 오류 발생", e);
		} finally {
			try {
				db.dbClose(rs, pstmt, conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return cpuList;
	}

	public CpuDTO selectCpuById(Integer cpuId) {
		String sql = """
				    SELECT
				        m.id_cpu,
				        m.name_cpu,
				        m.release_cpu,
				        m.core_cpu,
				        m.thread_cpu,
				        m.maxghz_cpu,
				        m.minghz_cpu,
				        m.choice_cpu,
				        m.cpu_type_code,
				        t.type_cpu,
				        m.cpu_manf_code,
				        b.manf_cpu
				    FROM cpu m
				    LEFT JOIN cpu_type t ON m.cpu_type_code = t.cpu_type_code
				    LEFT JOIN cpu_manf_brand b ON m.cpu_manf_code = b.cpu_manf_code
				    WHERE m.id_cpu = ?
				""";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CpuDTO cpu = null;

		try {
			conn = db.getDbConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cpuId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				cpu = new CpuDTO();
				cpu.setIdCpu(rs.getInt("id_cpu"));
				cpu.setNameCpu(rs.getString("name_cpu"));
				cpu.setReleaseCpu(rs.getInt("release_cpu"));
				cpu.setCoreCpu(rs.getInt("core_cpu"));
				cpu.setThreadCpu(rs.getInt("thread_cpu"));
				cpu.setMaxghzCpu(rs.getFloat("maxghz_cpu"));
				cpu.setMinghzCpu(rs.getFloat("minghz_cpu"));
				cpu.setChoiceCpu(rs.getInt("choice_cpu"));
				cpu.setCpuTypeCode(rs.getString("cpu_type_code"));
				cpu.setTypeCpu(rs.getString("type_cpu"));
				cpu.setCpuManfCode(rs.getString("cpu_manf_code"));
				cpu.setManfCpu(rs.getString("manf_cpu"));
			}

		} catch (SQLException e) {
			throw new RuntimeException("CPU 상세 조회 중 오류 발생", e);
		} finally {
			try {
				db.dbClose(rs, pstmt, conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return cpu;
	}
}
