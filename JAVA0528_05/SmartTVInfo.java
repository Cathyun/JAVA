package JAVA0528_05;

public class SmartTVInfo {
      void  SmartTVInfo(RemoteControl sin, int volume, boolean mute) {
    	  sin.turnOn();
    	  sin.setVolume(volume);
    	  sin.setMute(mute);
    	  sin.turnOff();
      }
      
      //Smart TV에 대한 다형성 메소드
      void Info(SmartTV sin,InternetSearch is,String url,boolean mute,int volume) {
    	  sin.turnOn();
    	  is.search("url");
    	  sin.setVolume(volume);
    	  sin.setMute(mute);
    	  sin.turnOff();
    	  
      }
}
