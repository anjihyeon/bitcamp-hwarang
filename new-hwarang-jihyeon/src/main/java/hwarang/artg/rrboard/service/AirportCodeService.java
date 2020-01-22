package hwarang.artg.rrboard.service;

import java.io.BufferedInputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import hwarang.artg.common.model.AirportCodeDTO;

@Service
public class AirportCodeService {
	public static final String CALLBACKURL = "http://openapi.airport.co.kr/service/rest/AirportCodeList/getAirportCodeList";
	public static final String SERVICEKEY = "Td3kPWtrJnZxn1TkpcPhyrZj%2BdB%2FpRl1AKuvGw1mUHS63Lp4Dga90IvSn8SEsax%2F9QvvBmXfCE5TfOaaw0lCMA%3D%3D";
	
	public List<AirportCodeDTO> airportcodeList() throws Exception{
		String urlStr = CALLBACKURL + "?ServiceKey=" + SERVICEKEY + "&pageNo=1";
		URL url = new URL(urlStr);
		
		AirportCodeDTO portCode;
		
		XmlPullParserFactory xmlFactory = XmlPullParserFactory.newInstance();
		xmlFactory.setNamespaceAware(true);
		XmlPullParser xpp = xmlFactory.newPullParser();
		BufferedInputStream bis = new BufferedInputStream(url.openStream());
		xpp.setInput(bis,"utf-8");
		
		String tag = null;
		int event_type = xpp.getEventType();
		List<AirportCodeDTO> list = new ArrayList<AirportCodeDTO>();
		portCode = new AirportCodeDTO();
		
		while(event_type != XmlPullParser.END_DOCUMENT) {
			if(event_type == XmlPullParser.START_TAG) {
				tag = xpp.getName();
			}else if(event_type == XmlPullParser.TEXT) {
				if(tag.equals("cityCode")) {
					portCode.setCityCode(xpp.getText());
				}
				if(tag.equals("cityKor")) {
					portCode.setCityKor(xpp.getText());
				}
				if(tag.equals("numOfRows")) {
					portCode.setNumOfRows(Integer.parseInt(xpp.getText()));
				}
				if(tag.equals("pageNo")) {
					portCode.setPageNo(Integer.parseInt(xpp.getText()));
				}
				if(tag.equals("totalCount")) {
					portCode.setTotalCount(Integer.parseInt(xpp.getText()));
				}
				
			}else if(event_type == XmlPullParser.END_TAG) {
				tag = xpp.getName();
				if(tag.equals("item")) {
					list.add(portCode);
				}
			}
			event_type = xpp.next();
		}
		return list;
		
	}
}
