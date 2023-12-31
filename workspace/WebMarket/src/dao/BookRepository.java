package dao;

import java.util.ArrayList;

import vo.BookVO;

public class BookRepository {
	private ArrayList<BookVO> listOfBooks = new ArrayList<BookVO>();

	// 싱글톤 객체 
	private static BookRepository instance = new BookRepository();
	public static BookRepository getInstance() {return instance;}
	
	public BookRepository() {
		BookVO book1 = new BookVO("A001", "비가 오면 열리는 상점", 16800);
		book1.setAuthor("유영광");
		book1.setDescription("불행을 파는 대신 원하는 행복을 살 수 있는 가게가 있다면? 듣기만 해도 방문하고 싶어지는, 비가 오면 열리는 수상한 상점에 초대된 여고생 세린이 안내묘 잇샤, 사람의 마음을 훔치는 도깨비들과 함께 펼치는 감동 모험 판타지.");
		book1.setPublisher("클레이하우스");
		book1.setCategory("소설");
		book1.setUnitsInStock(1000L);
		book1.setTotalPages(328L);
		book1.setReleaseDate("06/23");
		book1.setCondition("E-book");
		//------------------------------------------------------
		BookVO book2 = new BookVO("A002", "따님이 기가 세요", 15000);
		book2.setAuthor("하말넘많");
		book2.setDescription("구독자 16.5만 명, 누적 조회 수 830만 회에 달하는 여성 미디어 유튜브 채널 ‘하말넘많’을 운영하는 강민지와 서솔의 이야기를 담았다.");
		book2.setPublisher("포르체");
		book2.setCategory("에세이");
		book2.setUnitsInStock(1000L);
		book2.setTotalPages(232L);
		book2.setReleaseDate("05/21");
		book2.setCondition("신규 도서");
		//------------------------------------------------------
		BookVO book3 = new BookVO("A003", "당연한 것을 당연하지 않게", 14000);
		book3.setAuthor("허휘수");
		book3.setDescription("춤을 사랑하는 댄서이자, 사람들로부터 주목받는 상황을 선호하는 유튜버이며, 영상 보는 시간을 진정으로 즐기는 미디어 기업 대표이기도 하고, 술의 매력을 아는 칵테일 바 사장 및 옷에 미쳐 있는 의류 브랜드 사장인 허휘수의 첫 번째 에세이이다.");
		book3.setPublisher("알에이치코리아");
		book3.setCategory("에세이");
		book3.setUnitsInStock(1000L);
		book3.setTotalPages(232L);
		book3.setReleaseDate("03/21");
		book3.setCondition("신규 도서");
		//-------------------------------------------------------------
		listOfBooks.add(book1);
	    listOfBooks.add(book2);
	    listOfBooks.add(book3);
	}
	
	public BookVO getBookById(String bookId) {
		BookVO bookById = null;
		// 상품목록(listOfBooks)반복 
		for(BookVO book : listOfBooks) {
			if(book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	
	public ArrayList<BookVO> getAllBooks() {
		return listOfBooks;
	}
	
	
}
