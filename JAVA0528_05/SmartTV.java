package JAVA0528_05;

public class SmartTV implements RemoteControl,InternetSearch{
                       //여러개의 클래스 인터페이스가능!!
	//필드 선언
	int volume;
	
	@Override
	public void search(String url) {
		System.out.println(url + "을 검색합니다.");
		
	}

	@Override
	public void turnOn() {
		System.out.println("스마트 TV를 켭니다.");
		
	}

	@Override
	public void turnOff() {
		System.out.println("스마트 TV를 끕니다.");
		
	}

	@Override
	public void setVolume(int volume) {
		if(volume > RemoteControl.MAX_VOLUME){
			this.volume = RemoteControl.MAX_VOLUME;
		}else if(volume < RemoteControl.MIN_VOLUME){
			this.volume = RemoteControl.MIN_VOLUME;
		}else {
			this.volume = volume;
		}
		System.out.println("현재 스마트 TV의 볼륨은" + " "+ this.volume);
	}
	
	//defalt메소드 재정의
		@Override
		public void setMute(boolean mute) {
			if(mute) {
	       	 System.out.println("스마트TV 음소거 합니다");
	        }else {
	       	 System.out.println("스마트 TV 음소거 해제 합니다");
	        }
		}
     
	 
	
	                 

}
