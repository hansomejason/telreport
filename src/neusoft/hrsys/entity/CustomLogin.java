package neusoft.hrsys.entity;


public class CustomLogin {

  private String custel;
  private String cuspwd;

  public CustomLogin(String custel, String cuspwd) {
    this.custel = custel;
    this.cuspwd = cuspwd;
  }

  public CustomLogin() {
	    
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
    this.cuspwd = cuspwd;
  }

}
