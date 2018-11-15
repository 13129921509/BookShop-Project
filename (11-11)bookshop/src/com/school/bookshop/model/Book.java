package com.school.bookshop.model;

public class Book {
	private int bookId;
	private String bookImgUrl;
	private String bookTitle;
	private String bookAuthor;
	private String bookPublishTime;
	private String bookPubliser;
	private String bookSellPrice;
	private String bookDiscount;
	private String bookOrignalPrice;
	private String bookRecolagu;
	private String bookDetailedUrl;
	private String bookBookOpenBook;
	private String bookPageNumber;
	private String bookIsbn;
	private String bookBarcode;
	private String bookBinding;
	private String bookKind;
	private String bookKingText;
	private String bookSpeciaList;
	private String bookBrief;
	private String bookCatalog;
	private String bookExcerpt;
	private String bookXiangguan;
	private String bookZuoZheJianJie;
	private int bookCateGoryId;
	
	public Book(){
		
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookImgUrl() {
		return bookImgUrl;
	}
	public void setBookImgUrl(String bookImgUrl) {
		this.bookImgUrl = bookImgUrl;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookPublishTime() {
		return bookPublishTime;
	}
	public void setBookPublishTime(String bookPublishTime) {
		this.bookPublishTime = bookPublishTime;
	}
	public String getBookPubliser() {
		return bookPubliser;
	}
	public void setBookPubliser(String bookPubliser) {
		this.bookPubliser = bookPubliser;
	}
	public String getBookSellPrice() {
		return bookSellPrice;
	}
	public void setBookSellPrice(String bookSellPrice) {
		this.bookSellPrice = bookSellPrice;
	}
	public String getBookDiscount() {
		return bookDiscount;
	}
	public void setBookDiscount(String bookDiscount) {
		this.bookDiscount = bookDiscount;
	}
	public String getBookOrignalPrice() {
		return bookOrignalPrice;
	}
	public void setBookOrignalPrice(String bookOrignalPrice) {
		this.bookOrignalPrice = bookOrignalPrice;
	}
	public String getBookRecolagu() {
		return bookRecolagu;
	}
	public void setBookRecolagu(String bookRecolagu) {
		this.bookRecolagu = bookRecolagu;
	}
	public String getBookDetailedUrl() {
		return bookDetailedUrl;
	}
	public void setBookDetailedUrl(String bookDetailedUrl) {
		this.bookDetailedUrl = bookDetailedUrl;
	}
	public String getBookBookOpenBook() {
		return bookBookOpenBook;
	}
	public void setBookBookOpenBook(String bookBookOpenBook) {
		this.bookBookOpenBook = bookBookOpenBook;
	}
	public String getBookPageNumber() {
		return bookPageNumber;
	}
	public void setBookPageNumber(String bookPageNumber) {
		this.bookPageNumber = bookPageNumber;
	}
	public String getBookIsbn() {
		return bookIsbn;
	}
	public void setBookIsbn(String bookIsbn) {
		this.bookIsbn = bookIsbn;
	}
	public String getBookBarcode() {
		return bookBarcode;
	}
	public void setBookBarcode(String bookBarcode) {
		this.bookBarcode = bookBarcode;
	}
	public String getBookBinding() {
		return bookBinding;
	}
	public void setBookBinding(String bookBinding) {
		this.bookBinding = bookBinding;
	}
	public String getBookKind() {
		return bookKind;
	}
	public void setBookKind(String bookKind) {
		this.bookKind = bookKind;
	}
	public String getBookKingText() {
		return bookKingText;
	}
	public void setBookKingText(String bookKingText) {
		this.bookKingText = bookKingText;
	}
	public String getBookSpeciaList() {
		return bookSpeciaList;
	}
	public void setBookSpeciaList(String bookSpeciaList) {
		this.bookSpeciaList = bookSpeciaList;
	}
	public String getBookBrief() {
		return bookBrief;
	}
	public void setBookBrief(String bookBrief) {
		this.bookBrief = bookBrief;
	}
	public String getBookCatalog() {
		return bookCatalog;
	}
	public void setBookCatalog(String bookCatalog) {
		this.bookCatalog = bookCatalog;
	}
	public String getBookExcerpt() {
		return bookExcerpt;
	}
	public void setBookExcerpt(String bookExcerpt) {
		this.bookExcerpt = bookExcerpt;
	}
	public String getBookXiangguan() {
		return bookXiangguan;
	}
	public void setBookXiangguan(String bookXiangguan) {
		this.bookXiangguan = bookXiangguan;
	}
	public String getBookZuoZheJianJie() {
		return bookZuoZheJianJie;
	}
	public void setBookZuoZheJianJie(String bookZuoZheJianJie) {
		this.bookZuoZheJianJie = bookZuoZheJianJie;
	}
	public int getBookCateGoryId() {
		return bookCateGoryId;
	}
	public void setBookCateGoryId(int bookCateGoryId) {
		this.bookCateGoryId = bookCateGoryId;
	}
	public Book(int bookId, String bookImgUrl, String bookTitle,
			String bookAuthor, String bookPublishTime, String bookPubliser,
			String bookSellPrice, String bookDiscount, String bookOrignalPrice,
			String bookRecolagu, String bookDetailedUrl,
			String bookBookOpenBook, String bookPageNumber, String bookIsbn,
			String bookBarcode, String bookBinding, String bookKind,
			String bookKingText, String bookSpeciaList, String bookBrief,
			String bookCatalog, String bookExcerpt, String bookXiangguan,
			String bookZuoZheJianJie, int bookCateGoryId) {
		super();
		this.bookId = bookId;
		this.bookImgUrl = bookImgUrl;
		this.bookTitle = bookTitle;
		this.bookAuthor = bookAuthor;
		this.bookPublishTime = bookPublishTime;
		this.bookPubliser = bookPubliser;
		this.bookSellPrice = bookSellPrice;
		this.bookDiscount = bookDiscount;
		this.bookOrignalPrice = bookOrignalPrice;
		this.bookRecolagu = bookRecolagu;
		this.bookDetailedUrl = bookDetailedUrl;
		this.bookBookOpenBook = bookBookOpenBook;
		this.bookPageNumber = bookPageNumber;
		this.bookIsbn = bookIsbn;
		this.bookBarcode = bookBarcode;
		this.bookBinding = bookBinding;
		this.bookKind = bookKind;
		this.bookKingText = bookKingText;
		this.bookSpeciaList = bookSpeciaList;
		this.bookBrief = bookBrief;
		this.bookCatalog = bookCatalog;
		this.bookExcerpt = bookExcerpt;
		this.bookXiangguan = bookXiangguan;
		this.bookZuoZheJianJie = bookZuoZheJianJie;
		this.bookCateGoryId = bookCateGoryId;
	}
	
}
