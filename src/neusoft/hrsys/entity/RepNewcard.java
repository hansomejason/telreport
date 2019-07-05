package neusoft.hrsys.entity;


public class RepNewcard {

  private long newId;
  private String newTel;
  private String newTime;
  private String newType;

  public RepNewcard(long newId, String newTel, String newTime, String newType) {
    this.newId = newId;
    this.newTel = newTel;
    this.newTime = newTime;
    this.newType = newType;
  }

  public long getNewId() {
    return newId;
  }

  public void setNewId(long newId) {
    this.newId = newId;
  }


  public String getNewTel() {
    return newTel;
  }

  public void setNewTel(String newTel) {
    this.newTel = newTel;
  }


  public String getNewTime() {
    return newTime;
  }

  public void setNewTime(String newTime) {
    this.newTime = newTime;
  }


  public String getNewType() {
    return newType;
  }

  public void setNewType(String newType) {
    this.newType = newType;
  }

}
