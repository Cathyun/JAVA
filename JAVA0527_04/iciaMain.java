package JAVA0527_04;

public class iciaMain {

	public static void main(String[] args) {
		
		iciaInfo info = new iciaInfo();//객체를 확인하기 위해 info 객체를 형성
		
		iciaPerson icia = new iciaPerson();//부모
		
		iciaStudent student = new iciaStudent();//자식
		iciaTeacher teacher = new iciaTeacher();//자식
		iciaWorker worker = new iciaWorker();//자식
		

		info.finishType(icia);//다형성을 위해서 finishType으로 만들어준다.
		
		info.finishType(student);
		info.finishType(teacher);
		info.finishType(worker);
		
//		icia.finish();
//		student.finish();
//		teacher.finish();
//		worker.finish();
		
		
		
	}

}
