package neusoft.hrsys.entity;


public class WorkerLogin {

  private String workerid;
  private String workerpwd;

  public WorkerLogin(String workerid, String workerpwd) {
    this.workerid = workerid;
    this.workerpwd = workerpwd;
  }

  public String getWorkerid() {
    return workerid;
  }

  public void setWorkerid(String workerid) {
    this.workerid = workerid;
  }


  public String getWorkerpwd() {
    return workerpwd;
  }

  public void setWorkerpwd(String workerpwd) {
    this.workerpwd = workerpwd;
  }

}
