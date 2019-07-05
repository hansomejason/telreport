package neusoft.hrsys.entity;


public class Client {

  private String id;
  private String cadress;
  private String asex;
  private long cage;
  private String cname;
  private String ctel;

  public Client(String id, String cadress, String asex, long cage, String cname, String ctel) {
    this.id = id;
    this.cadress = cadress;
    this.asex = asex;
    this.cage = cage;
    this.cname = cname;
    this.ctel = ctel;
  }


  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }


  public String getCadress() {
    return cadress;
  }

  public void setCadress(String cadress) {
    this.cadress = cadress;
  }


  public String getAsex() {
    return asex;
  }

  public void setAsex(String asex) {
    this.asex = asex;
  }


  public long getCage() {
    return cage;
  }

  public void setCage(long cage) {
    this.cage = cage;
  }


  public String getCname() {
    return cname;
  }

  public void setCname(String cname) {
    this.cname = cname;
  }


  public String getCtel() {
    return ctel;
  }

  public void setCtel(String ctel) {
    this.ctel = ctel;
  }

}
