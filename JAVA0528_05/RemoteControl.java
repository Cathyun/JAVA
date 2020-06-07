package JAVA0528_05;

public interface RemoteControl {
	  
	
    //상수 필드
	int MAX_VOLUME = 10;
	int MIN_VOLUME = 0;
	
	//추상메소드 
	void turnOn();
	void turnOff();
	void setVolume(int volume);
	
	//default메소드
	default void setMute(boolean mute) {
         if(mute) {
        	 System.out.println("음소거 합니다");
         }else {
        	 System.out.println("음소거 해제 합니다");
         }
	}  
	//정적(static)메소드
    static void changeBettery() {
        	 System.out.println("건전지를 교체해주세요");
         }
	
}















