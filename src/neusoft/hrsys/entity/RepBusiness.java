package neusoft.hrsys.entity;


public class RepBusiness {

  private String btel;
  private String btime;
  private String btype;
  private long flowid;

  public RepBusiness(String btel, String btime, String btype, long flowid) {
    this.btel = btel;
    this.btime = btime;
    this.btype = btype;
    this.flowid = flowid;
  }

  public String getBtel() {
    return btel;
  }

  public void setBtel(String btel) {
    this.btel = btel;
  }


  public String getBtime() {
    return btime;
  }

  public void setBtime(String btime) {
    this.btime = btime;
  }


  public String getBtype() {
    return btype;
  }

  public void setBtype(String btype) {
    this.btype = btype;
  }


  public long getFlowid() {
    return flowid;
  }

  public void setFlowid(long flowid) {
    this.flowid = flowid;
  }

}
