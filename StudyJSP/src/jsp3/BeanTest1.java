package jsp3;

public class BeanTest1 {
	//자바빈
	//insert할 데이터를 저장해서 =>디비작업하는 자바파일로 전달
	//디비에서 회원조회한 데이터를 저장해서 =>jsp화면에 전달
	
	//자바빈 구성요소 - 멤버변수 생성자 메서드 
	//데이터를 빈에 담아서 db로 가감. 아무나 접근 할수 없도록 provate사용
	private String name;

	//set get
	private String age;

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		
		return this.name;
	}
	
	
	
	
	
	
}
