# servlet-practices

### 1. Maven War project 만들기
1.	maven project 생성:  packaging =>  war
2.	project 선택(오른쪽메뉴)-> java EE Tools -> generate Deployment Descriptor Stub(web.xml)
3.	web.xml 에서 xmlns="http://JAVA.sun.com/xml/ns/javaee" 수정
4.	pom.xml 설정(helloweb 참고)


### 2. applications
1. model1: model + jsp(controller,view)
	-	emaillist01         
	-	guestbook01
	
2.	model2: mvc, Model + View(jsp)  + Controller(servlet)
	-	emaillist02
	-	guestbook02

3. mysite
	-	mysite02
	 
	