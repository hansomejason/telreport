package neusoft.hrsys.entity;


public class UserBusiness {

  private String utel;
  private String utype;
  private String ukind;

  public UserBusiness(String utel, String utype, String ukind) {
    this.utel = utel;
    this.utype = utype;
    this.ukind = ukind;
  }

  public String getUtel() {
    return utel;
  }

  public void setUtel(String utel) {
    this.utel = utel;
  }


  public String getUtype() {
    return utype;
  }

  public void setUtype(String utype) {
    this.utype = utype;
  }


  public String getUkind() {
    return ukind;
  }

  public void setUkind(String ukind) {
    this.ukind = ukind;
  }

}
