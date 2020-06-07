package JAVA0528_05;

public class Audio implements RemoteControl{
	
       private int volume;

	@Override
	public void turnOn() {
		System.out.println("Audio를 켭니다.");
		
	}

	@Override
	public void turnOff() {
		System.out.println("Audio를 끕니다.");
		
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
		System.out.println("현재 TV의 볼륨은" + " "+ this.volume);
	}
	   public void setMute(boolean mute) {
		if(mute) {
       	 System.out.println("TV 음소거 합니다");
        }else {
       	 System.out.println("TV 음소거 해제 합니다");
        }
	}
	
	
	
	
	} 
       

