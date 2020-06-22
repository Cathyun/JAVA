package Project;

import java.util.Scanner;

public class CarMain {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		boolean run = true;
		boolean run2 = true;

		Client client = new Client();
		C_Member member = new C_Member();
		CarSQL sql = new CarSQL();
		BankSQL bsql = new BankSQL();
		int menu = 0;
		int menu2 = 0;
		int menu3 = 0;
		

		sql.DBConnect();
		bsql.DBConnect();

		while (run) {
			System.out.println("\t           서현형재 중고차 사이트에 오신걸 환영합니다.             ");
			System.out.println("==========================================================");
			System.out.println("       \t            1.로그인       2.회원가입              ");
			System.out.println("==========================================================");
			System.out.print("메뉴선택 >> ");
			menu = sc.nextInt();

			switch (menu) {
			case 1:
				System.out.println("로그인할 아이디와 비밀번호를 입력해주세요!");
				System.out.println();

				System.out.print("아이디 >> ");
				String id1 = sc.next();

				System.out.print("비밀번호 >> ");
				int pw1 = sc.nextInt();

				boolean check = sql.idCheck(id1, pw1);

				if (check) {
					System.out.println();
					System.out.println("로그인에 성공하였습니다!");
					System.out.println();

					while (run2) {

						System.out.println("==========================================================");
						System.out.println("  1.판매자       2.구매자       3.차량용품       4.회원정보수정       5.로그아웃    ");
						System.out.println("==========================================================");
						System.out.print("메뉴선택 >> ");
						menu = sc.nextInt();

						switch (menu) {
						case 1:

							System.out.println("==========================================================");
							System.out.println("  \t   1.차량등록      2.등록한 차량조회   3. 뒤로가기 ");
							System.out.println("==========================================================");
							System.out.print("메뉴선택 >> ");
							menu2 = sc.nextInt();

							switch (menu2) {
							case 1:
								// 판매자 차량등록
								System.out.println("차량등록 메뉴를 선택하셨습니다!");
								System.out.println("차량을 등록할 회원님의 이름을 입력해주세요!");
								System.out.print(">> ");
								String seller = sc.next();
								System.out.println("차량의 모델명을 입력해주세요!");
								System.out.print(">> ");
								String s_name = sc.next();
								System.out.println("차량의 가격을 입력해주세요!");
								System.out.print(">> ");
								int s_price = sc.nextInt();
								System.out.println("차량의 주행거리를 입력해주세요!");
								System.out.print(">> ");
								int s_run = sc.nextInt();
								System.out.println("차량의 연식을 입력해주세요!");
								System.out.print(">> ");
								int s_date = sc.nextInt();
								System.out.println("차량의 유종과 변속기종을 입력해주세요!  ex)가솔린,오토");
								System.out.print(">> ");
								String s_oil = sc.next();
								System.out.println("차량의 배기량을 입력해주세요!");
								System.out.print(">> ");
								int s_cc = sc.nextInt();
								System.out.println("차량의 색상을 입력해주세요!");
								System.out.print(">> ");
								String s_color = sc.next();
								System.out.println("차량번호를 입력해주세요!");
								System.out.print(">> ");
								String s_number = sc.next();
								System.out.println("구매자에게 연락받을 전화번호를 입력해주세요!");
								System.out.print(">> ");
								String s_phone = sc.next();

								client = new Client(seller, s_name, s_price, s_run, s_date, s_oil, s_cc, s_color,
										s_number, s_phone);

								sql.carJoin(client);

								break;
							case 2:
								// 판매자 차량이 잘 등록이 되었는지 확인
								System.out.println("차량을 등록한 회원님의 이름을 입력해주세요!");
								System.out.print(">> ");
								seller = sc.next();
								client.setSeller(seller);
								sql.checkInfo(client);
								break;
							case 3:
								System.out.println("처음으로 돌아갑니다.");
								break;

							default:
								System.out.println("잘못 선택하셨습니다.");
								break;
							}
							break;

						case 2:
							System.out.println("==========================================================");
							System.out.println("  \t    1.모델명으로 검색             2.연식으로 검색   ");
							System.out.println("  \t    3.가격으로 검색                4.주행거리로 검색   ");
							System.out.println("  \t    5.배기량으로 검색             6.뒤로가기");
							System.out.println("==========================================================");
							System.out.print("메뉴선택 >> ");
							menu3 = sc.nextInt();

							switch (menu3) {
							case 1:
								System.out.println("검색할 차량의 모델명을 입력해주세요!");
								System.out.print(">> ");
								String s_name = sc.next();
								sql.nameSearch(s_name);

								break;
							case 2:
								System.out.println("검색할 차량의 연식을 입력해주세요!");
								System.out.print(">> ");
								int s_date = sc.nextInt();

								sql.dateSearch(s_date);
								break;
							case 3:
								System.out.println("검색할 차량의 가격을 입력해주세요!");
								System.out.print("최소 가격 >> ");
								int s_price = sc.nextInt();
								System.out.print("최대 가격 >> ");
								int s_price1 = sc.nextInt();

								sql.priceSearch(s_price, s_price1);

								break;
							case 4:
								System.out.println("검색할 차량의 주행거리를 입력해주세요!");
								System.out.print("최소 주행거리 >> ");
								int a = sc.nextInt();
								System.out.print("최대 주행거리 >> ");
								int b = sc.nextInt();

								sql.runSearch(a, b);
								break;
							case 5:
								System.out.println("검색할 차량의 배기량을 입력해주세요!");
								System.out.println("최저 배기량 >> ");
								int s_cc = sc.nextInt();
								System.out.println("최고 배기량 >> ");
								int s_cc1 = sc.nextInt();

								sql.ccSearch(s_cc, s_cc1);
								break;
							case 6:
								System.out.println("처음으로 돌아갑니다.");
								break;
							default:
								System.out.println("잘못 선택하셨습니다.");
								break;
							}

							break;
						case 3:
				
							// 배열을 이용하여 상품판매
							System.out.println("==========================================================");
							System.out.println("              \t원하는 상품을 선택후 결제해주세요!               ");
							System.out.println("==========================================================");
							System.out.println(" 1. 논슬립 대쉬보드 커버     2. 무선충전 거치대        3. 사이드미러 방수필름 ");
							System.out.println("   (35000원)         (30000원)       (10000원) ");
							System.out.println(" 4. 코일 매트                     5. 헤드업 디스플레이     6. 차량용 목쿠션          ");
							System.out.println("   (23000원)         (50000원)       (12000원)    ");
							System.out.println(" 7. 스웨이드 핸들커버         8. 논슬립 패드              9. 차량용 디퓨저          ");
							System.out.println("   (18000원)         (5000원)        (40000원) ");
							System.out.println(" 10.세차 타월                     11.차량용 방향제           12.차량용 가습기          ");
							System.out.println("   (9900원)          (29000원)       (15000원) ");
							System.out.println(" 13.도어 가드                     14.차량용 가죽클리너     15.에탄올 워셔액          ");
							System.out.println("   (2500원)          (20000원)       (1100원) ");
							System.out.println(" 16.차량용 청소기               17.무드등, 풋등           18.컴파운드                 ");
							System.out.println("   (29900원)         (15000원)       (18000원) ");
							System.out.println("              \t   19. 뒤로가기               ");
							System.out.println("==========================================================");
							
							// 몇가지 상품을 구매할건지 선택
							System.out.println("몇가지 상품을 구매하시겠습니까?");
							System.out.print(">> ");
							int goodsHowmany = sc.nextInt();
							
							// 뒤로가기 메뉴
							if (goodsHowmany == 19) {
								break;
							}
							
							// 상품명, 가격 , 수량 배열생성
							String goods[] = { "논슬립 대쉬보드 커버", "무선충전 거치대", "사이드미러 방수필름 ", "코일 매트 ", "헤드업 디스플레이",
									"차량용 목쿠션", "스웨이드 핸들커버", "논슬립 패드 ", "차량용 디퓨저", "세차 타월 ", "차량용 방향제 ", "차량용 가습기",
									"도어 가드", "차량용 가죽클리너", "에탄올 워셔액", "차량용 청소기 ", "무드등, 풋등", "컴파운드 " };
							int goodsPrice[] = { 35000, 30000, 10000, 23000, 50000, 12000, 18000, 5000, 40000, 9900,
									29000, 15000, 2500, 20000, 1100, 29900, 15000, 18000 };
							int goodsAmount[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
							if (run) {
								// 입력받을 상품의 상품명, 가격, 수량을 담을 새로운 배열생성
								String goodsSelect[] = new String[18];
								int goodsPriceSelect[] = new int[18];
								int goodsAmountSelect[] = new int[9];
								
								// for문을 이용하여 상품명, 가격, 수량을 입력받고 저장 
								for (int i = 0; i < goodsHowmany; i++) {
									System.out.println();
									System.out.print((i + 1) + " 번째 상품을 선택해주세요 >>");
									int goodsNumber = sc.nextInt();

									System.out.println("상품수량을 입력해주세요 (최대 9개)");
									int goodsAmountNumber = sc.nextInt();


									System.out.println(goods[goodsNumber - 1] + " 을(를)"
											+ goodsAmount[goodsAmountNumber - 1] + "개를 선택하셨습니다.\n");
									
									// 새로만든 배열에 입력한 값을 저장 (장바구니 기능)
									goodsSelect[i] = goods[goodsNumber - 1];
									goodsPriceSelect[i] = goodsPrice[goodsNumber - 1];
									goodsAmountSelect[i] = goodsAmount[goodsAmountNumber - 1];

								}
								
								System.out.println("주문하신 상품은");
								System.out.println();
								
								// 새로운 for문을 이용 (어떤 상품을 구매했고, 몇가지를 선택했는지) 
								for (int i = 0; i < goodsHowmany; i++) {
									System.out.println(i + 1 + "." + goodsSelect[i] + goodsAmountSelect[i] + "개" + ",  ");
								}
								System.out.println();
								System.out.println("입니다.");
								System.out.println();
								System.out.println("주문하신 상품의 총 가격은 ");
								int sum = 0;
								
								// for문을 이용하여 가격,수량 배열끼리의 곱을 sum값에 저장(sum = 상품 총 가격)
								for (int i = 0; i < goodsHowmany; i++) {
									sum += goodsPriceSelect[i] * goodsAmountSelect[i];
													// 상품 가격 X 상품수량
								}
								System.out.println(sum + "원입니다.");
								System.out.println();
								System.out.println("결제 하시겠습니까?");
								
								// 결제 단계 (회원등록할때 등록한 계좌번호로 결제)
								System.out.println("회원가입 시 등록된 계좌에서 상품 가격이 자동으로 출금됩니다.");
								System.out.println("1. 등록된 계좌로 결제  2. 결제 취소 ");
								
								System.out.print(">> ");
								int menu5 = sc.nextInt();
								
								
								switch (menu5) {
								case 1:
									// 비밀번호를 입력받아서 맞으면 결제완료 틀리면 결제실패
									System.out.println();
									System.out.println("결제를 위해 비밀번호를 다시 확인합니다.");
									System.out.print("비밀번호 입력 >> ");
									int pw2 = sc.nextInt();
									
									// sql.idCheck 메소드 사용
									boolean check1 = sql.idCheck(id1, pw2);
									
									// check1이 true일때 if문 실행
									if (check1) {
										System.out.println();
										System.out.println("비밀번호 확인 완료!");
										System.out.println();
										int p1 = sum;	// 상품 총 가격
										int b1 = bsql.checkBalnce(id1, pw2);	// 계좌에 남은 돈
										
										// if문을 사용하여 계좌에 남은 돈이 총 가격보다 클 때 결제가 완료
										if (b1 > p1) {	
											bsql.withdraw(sum, id1, pw2);

										} else {	// 돈이 부족할때 else문이 작동
											System.out.println("결제 오류 ···. 잔액 부족 TnT");
											System.out.println();
											System.out.println("출금액이 " + (p1 - b1) + "원 부족합니다.");
											System.out.println();

										}

									} else {// false일때 else문 실행
										System.out.println("비밀번호가 틀렸습니다.");
									}

									break;
								case 2:
									System.out.println("결제가 취소되었습니다.");
									break;
								default:
									break;
								}

							}

							break;
						case 4:
							System.out.println("==========================================================");
							System.out.println("    1. 전화번호 수정     2. 주소 수정     3. 계좌번호 수정     4.뒤로가기      ");
							System.out.println("==========================================================");
							System.out.print("메뉴선택 >> ");
							menu = sc.nextInt();

							switch (menu) {
							case 1:
								System.out.println("회원정보 수정을 위해 비밀번호를 다시 확인합니다.");
								System.out.print(">> ");
								int pw2 = sc.nextInt();

								boolean check1 = sql.idCheck(id1, pw2);

								if (check1) {
									System.out.println("비밀번호 확인 완료!");
									System.out.println();
									System.out.println("변경할 전화번호를 입력해주세요!");
									System.out.print(">> ");
									String phone = sc.next();

									sql.modify_ph(phone, id1);
								} else {
									System.out.println("비밀번호가 틀렸습니다.");
								}

								break;
							case 2:
								System.out.println("회원정보 수정을 위해 비밀번호를 다시 확인합니다.");
								System.out.print(">> ");
								pw2 = sc.nextInt();

								check1 = sql.idCheck(id1, pw2);

								if (check1) {
									System.out.println("비밀번호 확인 완료!");
									System.out.println();
									System.out.println("변경할 주소를 입력해주세요!");
									System.out.print(">> ");
									sc.nextLine();
									String adr = sc.nextLine();

									sql.modify_ad(adr, id1);
								} else {
									System.out.println("비밀번호가 틀렸습니다.");
								}
								break;
							case 3:
								System.out.println("회원정보 수정을 위해 비밀번호를 다시 확인합니다.");
								System.out.print(">> ");
								pw2 = sc.nextInt();

								check1 = sql.idCheck(id1, pw2);

								if (check1) {
									System.out.println("비밀번호 확인 완료!");
									System.out.println();
									System.out.println("변경할 계좌번호를 입력해주세요!");
									System.out.print(">> ");
									String ac = sc.next();

									sql.modify_ac(ac, id1);
									bsql.modify_ac(ac, id1);
								} else {
									System.out.println("비밀번호가 틀렸습니다.");
								}
								break;
							case 4:

								break;
							default:
								break;
							}
							break;
						case 5:
							System.out.println();
							System.out.println("로그아웃 합니다.");
							System.out.println();
							run2 = false;
							break;
						default:
							System.out.println("잘못 선택하셨습니다.");
							break;
						}

					}

				} else {
					System.out.println();
					System.out.println("로그인에 실패하였습니다 TnT");
					System.out.println();
				}

				break;
			case 2:
				System.out.println("회원정보를 입력해주세요.");
				System.out.println();
				System.out.print("아이디 >> ");
				String id = sc.next();
				System.out.println();
				System.out.println("비밀번호는 4자리의 숫자로만 구성되어야 합니다.");
				System.out.print("비밀번호 >> ");
				int pw = sc.nextInt();
				int length = (int) (Math.log10(pw) + 1);

				if (length == 4) {
					System.out.println();
					System.out.print("이름 >> ");
					String name = sc.next();
					System.out.println();
					System.out.print("나이 >> ");
					int age = sc.nextInt();
					System.out.println();
					System.out.print("전화번호 >> ");
					String phone = sc.next();
					System.out.println();
					System.out.print("주소 >> ");
					sc.nextLine();
					String adr = sc.nextLine();
					System.out.println();
					System.out.print("메일주소 >> ");
					String e_mail = sc.next();
					System.out.println();
					System.out.println("차량용품 구매시 결제를 위한 계좌번호");
					System.out.print(">> ");
					String acn = sc.next();

					member = new C_Member(id, pw, name, age, phone, adr, e_mail, acn);

					sql.memberJoin(member);

				} else {
					System.out.println();
					System.out.println("비밀번호는 4자리 숫자여야합니다.");
					System.out.println();
				}
				break;

			default:
				System.out.println("잘못 선택하셨습니다.");
				break;
			}
		}

	}
}
