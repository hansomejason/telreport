package neusoft.hrsys.entity;

public class HrAdmin {
	private String custel;
	private String cuspwd;
	private int level; //1:管理员  0:操作员
	public HrAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HrAdmin(String  custel, String cuspwd, int level) {
		super();
		this.custel = custel;
		this.cuspwd = cuspwd;
		this.level = level;
	}
	public String getCustel() {
		return custel;
	}
	public void setCustel(String custel) {
		this.custel = custel;
	}
	public String getCuspwd() {
		return cuspwd;
	}
	public void setCuspwd(String cuspwd) {
		this.cuspwd =cuspwd;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
}
