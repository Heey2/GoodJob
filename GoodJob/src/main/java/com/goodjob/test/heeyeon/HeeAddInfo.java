package com.goodjob.test.heeyeon;

import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import lombok.Data;

public class HeeAddInfo {

	public static void main(String[] args) {
		HeeTestDAO dao = new HeeTestDAO();

		ArrayList<HeeCompany> list = dao.list();
		
		//ArrayList<Company> result = new ArrayList<>();
		int end= 0;
		int cnt= 0;
		try {
			String filePath = "C:\\GoodJob_Heey\\CORPCODE.xml";

			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();

			Document doc = dBuilder.parse(filePath);
			// <list> 태그 가져오기
			NodeList listNodes = doc.getElementsByTagName("list");
			// 각 <list> 태그 안에서 <corp_code>와 <corp_name> 태그 데이터 추출
			for (HeeCompany search : list) {
				ArrayList<HeeCompany> temp = new ArrayList<>();
				
				for (int i = 0; i < listNodes.getLength(); i++) {
					Element listElement = (Element) listNodes.item(i);
					String corpCode = listElement.getElementsByTagName("corp_code").item(0).getTextContent();
					String corpName = listElement.getElementsByTagName("corp_name").item(0).getTextContent();

					if(!corpName.equals(search.getName()) && corpName.contains(search.getName())) {
						  HeeCompany com = new HeeCompany(); 
						  com.setCode(corpCode);
						  com.setName(corpName);
						  com.setSeq(search.getSeq());
						  temp.add(com);
					}
				}
				System.out.println(temp.size());
				
				
				  if(temp.size()==1) { 
					  end = dao.addCode(temp.get(0)); 
					  System.out.println(end);
					  cnt++;
				  }
			}
			System.out.println(cnt);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}


}