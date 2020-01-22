package hwarang.artg.common.model;

import lombok.Data;

@Data
public class AirportCodeDTO {
	private String cityCode;	//도시코드	3	필수	KWJ	도시코드
	private String cityKor;	//도시명(한국어)	40	옵션	광주	도시명(한국어)
	private int numOfRows;	//열 숫자	4	필수	10	열 숫자
	private int pageNo;	//페이지 번호	4	필수	1	페이지 번호
	private int totalCount;	//데이터 총계	5	필수	48	데이터 총계
}
