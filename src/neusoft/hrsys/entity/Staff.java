package neusoft.hrsys.entity;


public class Staff {

  private long snum;
  private long sid;
  private String position;
  private String level;
  private String sname;

  public Staff(long snum, long sid, String position, String level, String sname) {
    this.snum = snum;
    this.sid = sid;
    this.position = position;
    this.level = level;
    this.sname = sname;
  }

  public long getSnum() {
    return snum;
  }

  public void setSnum(long snum) {
    this.snum = snum;
  }


  public long getSid() {
    return sid;
  }

  public void setSid(long sid) {
    this.sid = sid;
  }


  public String getPosition() {
    return position;
  }

  public void setPosition(String position) {
    this.position = position;
  }


  public String getLevel() {
    return level;
  }

  public void setLevel(String level) {
    this.level = level;
  }


  public String getSname() {
    return sname;
  }

  public void setSname(String sname) {
    this.sname = sname;
  }

}
