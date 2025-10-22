package cpu;

import java.util.List;

public class CpuService {

	private CpuDao cpuDao;

	public CpuService() {
		this.cpuDao = new CpuDao(); // 직접 생성 (Spring 없이)
	}

	public List<CpuDTO> getCpuList() {
		return cpuDao.selectAllCpus();
	}
}