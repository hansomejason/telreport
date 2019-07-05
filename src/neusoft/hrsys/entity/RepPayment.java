package neusoft.hrsys.entity;


public class RepPayment {

  private long pid;
  private String ptime;
  private long ppayment;
  private String ptel;

  public RepPayment(long pid, String ptime, long ppayment, String ptel) {
    this.pid = pid;
    this.ptime = ptime;
    this.ppayment = ppayment;
    this.ptel = ptel;
  }

  public long getPid() {
    return pid;
  }

  public void setPid(long pid) {
    this.pid = pid;
  }


  public String getPtime() {
    return ptime;
  }

  public void setPtime(String ptime) {
    this.ptime = ptime;
  }


  public long getPpayment() {
    return ppayment;
  }

  public void setPpayment(long ppayment) {
    this.ppayment = ppayment;
  }


  public String getPtel() {
    return ptel;
  }

  public void setPtel(String ptel) {
    this.ptel = ptel;
  }

}
