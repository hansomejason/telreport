package neusoft.hrsys.entity;


public class UserBalance {

  private String mtel;
  private double mbal;
  private double mflow;

  public UserBalance(String mtel, double mbal, double mflow) {
    this.mtel = mtel;
    this.mbal = mbal;
    this.mflow = mflow;
  }

  public String getMtel() {
    return mtel;
  }

  public void setMtel(String mtel) {
    this.mtel = mtel;
  }


  public double getMbal() {
    return mbal;
  }

  public void setMbal(double mbal) {
    this.mbal = mbal;
  }


  public double getMflow() {
    return mflow;
  }

  public void setMflow(double mflow) {
    this.mflow = mflow;
  }

}
