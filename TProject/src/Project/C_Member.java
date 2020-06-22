package Project;

public class C_Member {
	private String ID;
	private int PW;
	private String NAME;
	private int AGE;
	private String PHONE;
	private String ADR;
	private String E_MAIL;
	private String ACOUNTNUMBER;
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public int getPW() {
		return PW;
	}
	public void setPW(int pW) {
		PW = pW;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public int getAGE() {
		return AGE;
	}
	public void setAGE(int aGE) {
		AGE = aGE;
	}
	public String getPHONE() {
		return PHONE;
	}
	public void setPHONE(String pHONE) {
		PHONE = pHONE;
	}
	public String getADR() {
		return ADR;
	}
	public void setADR(String aDR) {
		ADR = aDR;
	}
	public String getE_MAIL() {
		return E_MAIL;
	}
	public void setE_MAIL(String e_MAIL) {
		E_MAIL = e_MAIL;
	}
	public String getACOUNTNUMBER() {
		return ACOUNTNUMBER;
	}
	public void setACOUNTNUMBER(String aCOUNTNUMBER) {
		ACOUNTNUMBER = aCOUNTNUMBER;
	}
	public C_Member() {
		super();
	}
	public C_Member(String iD, int pW, String nAME, int aGE, String pHONE, String aDR, String e_MAIL,
			String aCOUNTNUMBER) {
		super();
		ID = iD;
		PW = pW;
		NAME = nAME;
		AGE = aGE;
		PHONE = pHONE;
		ADR = aDR;
		E_MAIL = e_MAIL;
		ACOUNTNUMBER = aCOUNTNUMBER;
	}
}
