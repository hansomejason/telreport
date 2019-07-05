package neusoft.hrsys.entity;


public class RepFlow {

  private long fid;
  private long fflow;
  private String ftime;
  private String ftel;

  public RepFlow(long fid, long fflow, String ftime, String ftel) {
    this.fid = fid;
    this.fflow = fflow;
    this.ftime = ftime;
    this.ftel = ftel;
  }

  public long getFid() {
    return fid;
  }

  public void setFid(long fid) {
    this.fid = fid;
  }


  public long getFflow() {
    return fflow;
  }

  public void setFflow(long fflow) {
    this.fflow = fflow;
  }


  public String getFtime() {
    return ftime;
  }

  public void setFtime(String ftime) {
    this.ftime = ftime;
  }


  public String getFtel() {
    return ftel;
  }

  public void setFtel(String ftel) {
    this.ftel = ftel;
  }

}
