package neusoft.hrsys.entity;


public class RepConversation {

  private long cid;
  private long ccost;
  private String ctel;
  private String ctime;

  public RepConversation(long cid, long ccost, String ctel, String ctime) {
    this.cid = cid;
    this.ccost = ccost;
    this.ctel = ctel;
    this.ctime = ctime;
  }

  public long getCid() {
    return cid;
  }

  public void setCid(long cid) {
    this.cid = cid;
  }


  public long getCcost() {
    return ccost;
  }

  public void setCcost(long ccost) {
    this.ccost = ccost;
  }


  public String getCtel() {
    return ctel;
  }

  public void setCtel(String ctel) {
    this.ctel = ctel;
  }


  public String getCtime() {
    return ctime;
  }

  public void setCtime(String ctime) {
    this.ctime = ctime;
  }

}
