<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>login success</title>
<style>
div.Bar {
    background-color: #233140;
    overflow: hidden;
    border: 1px solid #ccc;
    font-family: 'Comic Sans MS';
}
div.Bar button {
    color: white;
    background-color: #233140;
    float: left;
    border: none;
    outline: none;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
    cursor: pointer;
    font-weight: bold;
}
.Menu{
    font-family: 'Comic Sans MS';
}
/* Menu bar End */

/* Main Start */

/* IMAGE */
.menuicon1, .menuicon2, .menuicon3 {
    width: 35px;
    height: 5px;
    margin: 3px 0;
    transition: 0.4s;
    background-color: #FFF;  
}
.change .menuicon1 {
    -webkit-transform: rotate(-45deg) translate(-9px, 6px) ;             
    transform: rotate(-45deg) translate(-9px, 6px) ;
}
.change .menuicon2 {
    opacity: 0;
}
.change .menuicon3 {
    -webkit-transform: rotate(45deg) translate(-8px, -8px) ;
    transform: rotate(45deg) translate(-8px, -8px) ;
}
.dropdown-content {
    margin-top: 48px;
    display: none;
    position: absolute;
    background-color: #233140;
    width: 99%;
    height: 44px;
}
.dropbtn{
    left: 100px;
}
.dropmenu{
    margin-left: 74%;
}
.dropdown-content a {
    padding: 12px 16px;
    font-weight: bold;
    text-decoration: none;
    color: white;
    display: block;
    background-color: #233140;
}
.show {
    display:block;
    transition: 0.4s;
}
.dot {
  display: inline-block;
  cursor:pointer;
  height: 13px;
  width: 13px;
  background-color: #bbb;
  border-radius: 50%;
}
#prev{
    margin-top: 150px;
    margin-left: 20px;
    float: left;
    cursor: pointer;
}
#next{
    margin-right: 20px;
    margin-top: 150px;
    float: right;
    cursor:pointer;
}
#image{
    height: 380px; 
    width: 70%;
}
/* Introduce */
div.ImageSlide, div.Gallery {
    background-color : white;
    outline : none;
    width : 100%;
    height : 100%;
}
div.Introduce, div.Guestbook {
    background-color : #D9DAD8;
    outline : none;
    width : 100%;
    height : 100%;
}
#tablehead{
    text-align: center;
    font-family: 'Comic Sans MS';
}
#tablebody{
    font-family: 'Comic Sans MS';
}
#tablefoot{
    font-weight: bold;
    text-align: center;
}
/*gallery*/
.party{
    display: inline-block;
    width: 19%;
    height: 100%;
}
.partyimg{
    width: 100%; 
    height: 100%;
}
.close-icon{
    background-position: left top;
    position: absolute; 
    width: 15px; 
    height: 15px;
}
#popup{
    display: none;
    position: fixed;
    background-color: black;
    opacity: 0.8;
    width: 100%;
    height: 100%;
}
#popimage{
    width: 500px;
    height: 500px;
}
#popprev{
    margin-top: 170px;
    margin-left: 130px;
    float: left;
    cursor: pointer;
}
#popnext{
    margin-right: 130px;
    margin-top: 170px;
    float: right;
    cursor:pointer;
}
.explain{
    text-align: center;
    display: none;
    margin-left: 100px;
    background-color: red;
}
/*guest book*/
#guest{
    width: 80%;
    height: 100%;
}
.guest2{
    font-weight: bold;
    text-align: center;
}
.text{
    width: 95%;
    height: 60px;
}
#guest td{
    border: 1px solid;
}
.newguest{
    width: 80%;
    height: 140px;
}
.newguest td{
    border: 1px solid;
}
.writer{
    text-align: center;
    width: 50%;
    height: 100%;
    font-weight: bold;
}
.story{
    width: 50%;
    height: 100%;
}
.reviewcolor{
    background-color: #9E9E9E;
}

/* Main End */

/* Footer Start */
footer { 
    height: 50px;
    display: block;
    background-color: #233140; 
    color: white;
    text-align: center;
}
footer span{
    text-decoration: underline;
    color: black;
}
/* Footer End */
</style>
</head>
<body>

	<%
		String userid = request.getParameter("id");      //넘어온 아이디와 비밀번호를 해당 변수에 입력
		String password = request.getParameter("pw");

		File dir = new File("C:\\homework1");     //회원정보가 있는 디렉토리의 리스트를 filenames배열에 입력
		String filenames[] = dir.list();
		boolean flag = false;   //아이디와 비밀번호가 맞는지 틀린지를 구별하기 위한 boolean변수

		for (int i = 0; i < filenames.length; i++) {    //회원정보들의 개수만큼 반복

			if ((userid + ".txt").equals(filenames[i])) {   //입력한 아이디가 맞을 경우
				FileReader fr = new FileReader("C:\\homework1\\" + filenames[i]);   //해당 아이디의 텍스트를 읽어옴
				BufferedReader br = new BufferedReader(fr);
				if (password.equals(br.readLine())) {   //readline함수로 비밀번호를 읽어오고 입력한 비밀번호와 일치하면 flag를 true로 설정
					flag = true;
				}
			}

		}
		if(flag){   //아이디와 비밀번호가 일치하면 홈페이지를 띄운다.
			%>
			
			<div id="popup">                                      <!-- 모달창에 해당하는 div태그-->
		<div align="center" style="margin-top: 250px;">
				<img id="popprev" src="popleft.png"><img id="popimage" src="더불어민주당.png"><img id="popnext" src="popright.png"> <!--모달창에 띄워질 이미지들 -->
		</div>  
	</div>
	<!-- 레이아웃은 HTML5 엘리먼트를 사용할 것 -->
	<header>
		<!-- Header (Menu bar) -->
		<a name="1"></a>   <!-- 위치이동을 위한 a태그로의 name설정 -->
		<div class="Bar">  <!-- 메뉴바에 해당 하는 div태그 -->
			<!-- 각각 메뉴에 해당하는 텍스트를 button태그와 a태그로 감싸고 마우스오버와 마우스아웃 효과를 준다 -->
			<a href="#1"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'" style="margin-left: 30%">HOME</button></a>
			<a href="#2"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">IMAGE SLIDE</button></a>
			<a href="#3"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">INTRODUCE</button></a>
			<a href="#4"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">GALLERY</button></a>
			<a href="#4"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">GUEST BOOK</button></a>
			<button onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'"> <!-- 마우스오버, 마우스아웃 효과를 준다 --> 
			<div class="dropbtn">	<!-- 드롭다운 메뉴아이콘을 나타내는 div태그 -->
				<div class="menuicon1"></div>
				<div class="menuicon2"></div>
	 			<div class="menuicon3"></div>			
	 		</div>
			</button>
			<div class="dropdown">    <!-- 드롭다운을 통해 밑으로 내려올 메뉴들을 나타내는 div태그 -->
				<div id="myDropdown" class="dropdown-content">
				<!-- 여기 메뉴들 역시 위치이동을 위해 a태그로 감싸고 span태그로 묶고 마우스오버, 마우스아웃 효과를 준다 -->
    				<a href="#1" ><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">· HOME</span></a>
    				<a href="#2"><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">· IMAGE SLIDE</span></a>
    				<a href="#3"><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">· INTRODUCE</span></a>
    				<a href="#4"><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">· GALLERY</span></a>
    				<a href="#5"><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">· GUEST BOOK</span></a>
  				</div>
			</div>
		</div>
	</header>
	
	<main>
	<!-- 이미지 슬라이드 -->
	<a name="2"></a>  <!-- 이미지 슬라이드 위치로의 위치이동을 위한 a태그 -->
		<div class = "ImageSlide" align="center">  <!-- 이미지슬라이드를 나타내는 div태그  -->
			<div align="center">      <!-- 처음화면에 보일 이미지들을 나타내고 있는 div태그 -->
				<img id="prev" src="left.png"><img id="image" src="1.png" /><img id="next" src="right.png">
			</div>  
			<span class="dot" style="background-color: #717171"></span>   <!-- 하단 이미지 버튼을 나타내는 span태그 -->
  				<span class="dot"></span> 
  				<span class="dot"></span>
  				<span class="dot"></span> 
  				<span class="dot"></span> 
  				<span class="dot"></span>
			
		</div>
		<a name="3"></a>   <!-- Introduce 위치로의 위치이동을 위한 a태그 -->
		<div class = "Introduce">
			<table border="1px solid" width="100%" height="100%">   <!-- 전체 테이블 설정 -->
				<thead id="tablehead">    <!-- 첫번째 줄에 해당하는 thead태그 -->
					<tr>
						<td colspan="2"><h1>2017년 대선</h1></td>  
					</tr>
				</thead>
				<tbody id="tablebody">    <!-- 두번째 줄에 해당하는 tbody태그 -->
					<tr>
						<td><canvas id="myChart" width="400" height="400"></canvas></td>   <!-- chart가 들어갈 canvas태그 -->
						<!-- 주제 설명에 해당하는 내용 -->
						<td width=50% style="word-break:break-all">조사에서 <span style="text-decoration: underline; color: red;">문 후보는 6%포인트 하락한 40.2%, 안 후보는 1.4%포인트 상승한 21.8%, 홍 후보는 5.1%포인트 상승한 22.7%, 심 후보는 1.3%포인트 하락한 7.3%, 유 후보는 0.4%포인트 상승한 5.0%포인트를 기록했다.</span> 

						바른정당 집단 탈당 사태와 맞물린 홍 후보의 갑작스러운 상승세는, 비록 일간 추세지만 <프레시안> 리서치뷰 공동 조사에서 처음으로 '실버 크로스'를 기록한 결과로 나타났다. 하루 만에 홍 후보가 안 후보를 오차범위 내에서 앞선 것이다. 정당 지지도를 살펴봐도, 자유한국당이 4월 30일~5월 1일 조사에서 16.4%를 기록했던 것이, 5월 2일 조사에서 21.4%로 하루 만에 4%포인트 상승한 것으로 나타났다. 

						관련해 리서치뷰 <span style="color: blue; font-weight: bold;">안일원 대표는 "사퇴는 없다"고 주장하고 있는 유 후보의 입장과 별개로, 유 후보 사퇴 가능성 등에 있어서 "(홍 후보 지지층의) 기대감 상승에 따른 '샤이 보수층'이 여론조사 적극 참여하기 시작한 듯하다"고 분석했다.</span> 

						안 대표는 "문재인 후보 관련 악재는 거의 없었고, 대체로 긍정적인 이슈가 많았던 점, 5월 1일부터 바른정당 13명 집단 탈당설 및 유승민 중도 하차 가능성 관련 이슈가 전방위적으로 확산된 점 등을 고려할 때 그동안 위축되어 있던 '샤이 보수층'의 일정한 기대감이 상승하면서 2일 조사부터 이전보다 적극적으로 여론조사에 참여한 것으로 추정된다"고 분석했다. 

						<span style="font-weight: bold;">정당 지지도는 더불어민주당이 39.8%, 자유한국당이 18.9%, 국민의당이 17.4%, 정의당이 10.6%, 바른정당이 5.7%를 기록했다. 지지정당 없음/기타 의견은 6.5%였다. 자유한국당은 전주보다 4.0%포인트 상승했고, 국민의당은 전주보다 0.3%포인트 하락해 정당 지지율 순위 2위와 3위가 뒤바뀌었다.</span><br><br>
						외국에 대하여 국가를 대표하고, 행정권의 수반이 되는 최고의 통치권자인 공화국의 대통령을 뽑는 선거를 말한다. 그러나 정부 형태에 따라 대통령을 선출하는 대통령선거기관과 선거 방식도 다양하다. 예를 들어 1962년 헌법개정 후의 프랑스에서는 국민의 직접선거로 대통령을 선출하였고, 미국의 경우는 선거인단이, 터키에서는 의회에서 대통령을 선출하는 등 국가에 따라 선출 방식이 각기 다르다. 또 대통령제를 채택한 국가에서도 시기에 따라 선거 방식이 다를 수 있는데, 한국에서도 국회에 의한 간접선거와 국민 직접선거, 통일주체국민회의에 의한 간접선거 등 선거 방식에 변화가 있었다.

						즉 <span style="text-decoration: underline; font-weight: bold;"> 한국에서는 2012년 제18대 대통령선거 때까지 국민의 직접선출이 12회, 국회·통일주체국민회·대통령선거인단에 의한 간접선출이 5회, 의원내각제하에서 국회에 의한 간접선출이 2회로, 총 19회의 대통령선거가 실시되었다. 제1대 대통령선거는 1948년 7월 20일 국회의 간접선거로 치러졌고, 제2대와 제3대는 직접선거로 치러졌다.</span> 1960년 3월 15일 치러진 제4대 대통령선거도 직접선거였으나 이른바 3·15부정선거로 인하여 무효 처리됨으로써 같은 해 8월 12일 민의원과 참의원 양원합동회의에 의한 간접선거로 대통령을 선출하였다. 이후 제7대까지는 직접선거로 치러졌으며, 제1대부터 제7대까지는 임기가 모두 4년이었다.
						대통령선거 [大統領選擧]

 						</td>
					</tr>
				</tbody>
				<tfoot id="tablefoot">  <!-- 세번째 줄에 해당하는 태그 -->    
					<tr>
						<td colspan="2">출처) Naver Google</td>
					</tr>
				</tfoot>
			</table>
		</div>
		<a name="4"></a>  <!-- 갤러리 위치로의 이동을 위한 a태그 -->
		<div class = "Gallery">      <!-- 갤러리를 나타내는 div태그 -->
		<!-- 각 그림을 삽입 -->
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">더불어민주당</div><img class="partyimg" src="더불어민주당.png"></div>
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">자유한국당</div><img class="partyimg" src="자유한국당.png"></div>
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">국민의당</div><img class="partyimg" src="국민의당.png"></div>
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">바른정당</div><img class="partyimg" src="바른정당.png"></div>
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">정의당</div><img class="partyimg" src="정의당.png"></div>
		</div>

		<a name="5"></a>   <!-- 방명록 위치로의 이동을 위한 a태그 -->
		<div class="Guestbook" align="center">  <!-- 방명록에 해당하는 div태그 -->   
			<div id="guestTable" align="center"></div>   
			<table id="guest" align="center">  <!-- 방명록을 위한 테이블 생성 -->
				<thead>
					<tr class="guest1">
						<td colspan="2" align="center"><h1>방명록</h1></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="guest2">작성자</td><td><input type="text" id="text1" class="text" ></td>
					</tr>
					<tr>
						<td class="guest2">내용</td><td><input type="text" id="text2" class="text" ></td>
					</tr>
				</tbody>
				<tfoot>
					<tr class="guest3">
						<td colspan="2" align="center"><input id="register" type="button" value="등록하기"></td>
					</tr>
				</tfoot>
			</table>
		</div>
	</main>
	<footer>
		<span>Chungnam.univ   201302362</span>  권오윤   oyoon33@gmail.com
	</footer>
	<script type="text/javascript">

	var dropbtn = document.getElementsByClassName("dropbtn");            //dropdown메뉴
	    dropbtn[0].addEventListener('click',function(){                   //dropbtn클래스의 태그를 클릭하면 함수실행
	    document.getElementById('myDropdown').classList.toggle("show");   //myDropdown id를 갖는 태그의 클래스에 'show'를 추가
	    dropbtn[0].classList.toggle("change");                            //dropbtn의 0번째 태그의 클래스에 'change'를 추가
	});

	//사진슬라이드
	var dot = document.getElementsByClassName('dot');   //하단 이미지인 점들을 dot라는 객체로 설정
	var image = document.getElementById('image'); //이미지 슬라이드 사진
	var imageArray = ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png"];  //슬라이드이미지
	var imageIndex = 0;   //슬라이드 인덱스

	function slide(){                                  //슬라이드를 실행할 함수
	  for(var i=0; i<imageArray.length; i++){          //하단 이미지들 색 설정
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  image.src = imageArray[imageIndex];                //이미지 변경을 위해 이미지의 src값 새로 설정 
	  dot[imageIndex].style.backgroundColor = '#717171';  
	  imageIndex++;  //슬라이드 인덱스 중가
	  if(imageIndex>=imageArray.length){
	    imageIndex=0;                              //cycle을 위해서 이미지의 개수가 넘어가면 인덱스를 0으로 설정
	  }
	}
	setInterval(slide, 5000);   //slide함수 5초마다 실행

	//화살표
	var prev = document.getElementById('prev');  //이전 화살표
	var next = document.getElementById('next');  //이후 화살표
	prev.addEventListener('click', function(){       //이전 화살표 클릭시 실행
	  imageIndex--;
	  if(imageIndex<0){
	    imageIndex=5;
	  }
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  image.src = imageArray[imageIndex];           //이미지 변경
	  dot[imageIndex].style.backgroundColor = '#717171';
	})
	next.addEventListener('click', function(){   //이후 화살표 클릭시 실행
	  imageIndex++;
	  if(imageIndex>=imageArray.length){
	    imageIndex=0;
	  }
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  image.src = imageArray[imageIndex];           //이미지 변경
	  dot[imageIndex].style.backgroundColor = '#717171';
	});

	//dot    

	dot[0].addEventListener('click', function(){                //하단이미지에 해당하는 각 점을 클릭시 실행
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  imageIndex = 0;
	  image.src = imageArray[imageIndex];
	  dot[imageIndex].style.backgroundColor = '#717171';
	})
	dot[1].addEventListener('click', function(){
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  imageIndex=1;
	  image.src = imageArray[imageIndex];
	  dot[imageIndex].style.backgroundColor = '#717171';
	})
	dot[2].addEventListener('click', function(){
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  imageIndex =2;
	  image.src = imageArray[imageIndex];
	  dot[imageIndex].style.backgroundColor = '#717171';
	})
	dot[3].addEventListener('click', function(){
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  imageIndex =3;
	  image.src = imageArray[imageIndex];
	  dot[imageIndex].style.backgroundColor = '#717171';
	})
	dot[4].addEventListener('click', function(){
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  imageIndex=4;
	  image.src = imageArray[imageIndex];
	  dot[imageIndex].style.backgroundColor = '#717171';
	})
	dot[5].addEventListener('click', function(){
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  imageIndex=5;
	  image.src = imageArray[imageIndex];
	  dot[imageIndex].style.backgroundColor = '#717171';
	})

	//introduce

	//gallery
	var close = document.getElementsByClassName('close-icon');      //x버튼 
	var partyimg = document.getElementsByClassName('partyimg');   //정당 이미지 갤러리 이미지 

	close[0].addEventListener('click', function(){            //x버튼 클릭시 이미지를 삭제하는 메소드
	  close[0].style.visibility = 'hidden';                   //x버튼의 visibility값을 hidden으로 하여 화면에서 안보이게 한다.
	  partyimg[0].style.visibility = 'hidden';                //해당 이미지의 visibility값을 hidden으로 하여 화면에서 안보이게 한다.
	  sessionStorage.setItem(0, 'hidden');                     //storage에 값을 저장 
	});                                                                     
	                                                          //5개의 이미지에 대해 같은 함수 실행
	close[1].addEventListener('click', function(){
	  close[1].style.visibility = 'hidden';
	  partyimg[1].style.visibility = 'hidden';
	  sessionStorage.setItem(1, 'hidden');
	});


	close[2].addEventListener('click', function(){
	  close[2].style.visibility = 'hidden';
	  partyimg[2].style.visibility = 'hidden';
	  sessionStorage.setItem(2, 'hidden');
	});


	close[3].addEventListener('click', function(){
	  close[3].style.visibility = 'hidden';
	  partyimg[3].style.visibility = 'hidden';
	  sessionStorage.setItem(3, 'hidden');
	});


	close[4].addEventListener('click', function(){
	  close[4].style.visibility = 'hidden';
	  partyimg[4].style.visibility = 'hidden';
	  sessionStorage.setItem(4, 'hidden');
	});

	function reload(){                                             //새로고침시에 삭제한 이미지를 안나오게 하기 위한 함수
	  var close = document.getElementsByClassName('close-icon');   //x버튼과 이미지에 대한 객체 설정
	  var partyimg = document.getElementsByClassName('partyimg'); 
	  for(var i=0; i<close.length; i++){                           //그림의 개수만 만큼 for문을 돌린다
	    if(sessionStorage.getItem(i)=="hidden"){                   //storage의 값을 hidden인지 확인
	      close[i].style.visibility = sessionStorage.getItem(i);   //hidden이면 해당인덱스의 x버튼과 이미지의 visibility값을 hidden으로 설정
	      partyimg[i].style.visibility = sessionStorage.getItem(i); 
	    }
	  }
	}
	var party = document.getElementsByClassName('party');       //정당사진 
	var explain = document.getElementsByClassName('explain');   //마우스 오버시 정당 설명

	party[0].addEventListener('mouseover', function(){           //마우스 오버시 효과
	  party[0].style.opacity = '0.5';
	  if(partyimg[0].style.visibility != 'hidden'){
	  explain[0].style.display = 'inline-block';                //부연설명 출력
	}
	});

	party[0].addEventListener('mouseout', function(){            //마우스 아웃시 효과
	  party[0].style.opacity = '1';
	  explain[0].style.display = 'none';                        //부연설명 삭제
	})

	party[1].addEventListener('mouseover', function(){          //5개의 이미지에 대해 같은 방식으로 함수 실행
	  party[1].style.opacity = '0.5';
	  if(partyimg[1].style.visibility != 'hidden'){
	  explain[1].style.display = 'inline-block';
	}
	});

	party[1].addEventListener('mouseout', function(){
	  party[1].style.opacity = '1';
	  explain[1].style.display = 'none';
	});
	party[2].addEventListener('mouseover', function(){
	  party[2].style.opacity = '0.5';
	  if(partyimg[2].style.visibility != 'hidden'){
	  explain[2].style.display = 'inline-block';
	}
	});

	party[2].addEventListener('mouseout', function(){
	  party[2].style.opacity = '1';
	  explain[2].style.display = 'none';
	})
	party[3].addEventListener('mouseover', function(){
	  party[3].style.opacity = '0.5';
	  if(partyimg[3].style.visibility != 'hidden'){
	  explain[3].style.display = 'inline-block';
	}
	});

	party[3].addEventListener('mouseout', function(){
	  party[3].style.opacity = '1';
	  explain[3].style.display = 'none';
	})
	party[4].addEventListener('mouseover', function(){
	  party[4].style.opacity = '0.5';
	  if(partyimg[4].style.visibility != 'hidden'){
	  explain[4].style.display = 'inline-block';
	}
	})

	party[4].addEventListener('mouseout', function(){
	  party[4].style.opacity = '1';
	  explain[4].style.display = 'none';
	})

	//popimage

	var popimageArray = ["더불어민주당.png", "자유한국당.png", "국민의당.png", "바른정당.png", "정의당.png"];  //pop이미지
	var popimage = document.getElementById('popimage');                                         //정당 사진
	var popimageIndex = 0;                                                                      //팝업창 인덱스 전역변수
	var popprev = document.getElementById('popprev');                                           //팝업창 이전 
	var popnext = document.getElementById('popnext');                                           //팝업창 다음
	var party = document.getElementsByClassName('party');                                       //정당 사진 디브 
	var popup = document.getElementById('popup');                                               //전체 화면

	partyimg[0].addEventListener('click', function(){                                           //클릭시에 팝업창이 나오게 하는 함수
	  popimageIndex = 0;
	  popup.style.display = 'block';
	  popimage.src = popimageArray[popimageIndex];
	});

	partyimg[1].addEventListener('click', function(){
	  popimageIndex = 1;
	  popup.style.display = 'block';
	  popimage.src = popimageArray[popimageIndex];
	});

	partyimg[2].addEventListener('click', function(){
	  popimageIndex = 2;
	  popup.style.display = 'block';
	  popimage.src = popimageArray[popimageIndex];
	});

	partyimg[3].addEventListener('click', function(){
	  popimageIndex = 3;
	  popup.style.display = 'block';
	  popimage.src = popimageArray[popimageIndex];
	});

	partyimg[4].addEventListener('click', function(){
	  popimageIndex = 4;
	  popup.style.display = 'block';
	  popimage.src = popimageArray[popimageIndex];
	});

	popimage.addEventListener('click', function(){    //팝업창 그림 클릭하면 다시 원상 복귀
	  popup.style.display = 'none';
	})

	popprev.addEventListener('click', function(){     //이전버튼눌러서 그 전 이미지를 보이게 하는 함수
	  popimageIndex--;
	  if(popimageIndex<0){
	      popimageIndex=4;
	    }
	   while(partyimg[popimageIndex].style.visibility=='hidden'){     //이미지가 삭제된 상황이면 건너 뛰게 하는 조건
	    popimageIndex--;
	    if(popimageIndex<0){
	      popimageIndex=4;
	    }
	  }
	  popimage.src = popimageArray[popimageIndex];                          //이미지 src를 그 전 이미지로 설정
	  });

	popnext.addEventListener('click', function(){     //다음버튼 눌러서 그 다음 이미지를 보이게 하는 함수
	  popimageIndex++;
	  if(popimageIndex>=popimageArray.length){         //이미지의 개수를 넘어가면 인덱스를 0으로 설정해서 cycle이 가능하게함
	      popimageIndex=0;
	    }
	  while(partyimg[popimageIndex].style.visibility=='hidden'){        //이미지가 삭제된 상황이면 건너 뛰게 하는 조건
	    popimageIndex++;                                              
	    if(popimageIndex>=popimageArray.length){                        //이미지의 개수가 넘어가면 인덱스를 0으로 설정해서 cycle이 가능하게함    
	      popimageIndex=0;
	    }
	  }
	  popimage.src = popimageArray[popimageIndex];                          //이미지 src를 그 다음 이미지로 설정
	});

	//table
	var register = document.getElementById('register');    //등록하기 버튼
	var set = document.getElementById('guestTable');        //방명록테이블과 작성자와 내용에 해당하는 객체를 가져옴
	var writertext = document.getElementById('text1');
	var storytext = document.getElementById('text2');
	var reviewnum = 0;  //답글 개수

	register.addEventListener('click', function(){       //클릭시에 방명록 기록하는 메소드
	  var table = document.createElement('table');       //작성한 내용을 출력할 테이블 태그 새로 생성
	  table.className = 'newguest';             
	  
	  //첫줄
	  var tr1 = document.createElement('tr');             //첫번째 tr생성
	  var td1_1 = document.createElement('td');           //첫째 줄에 첫번째 td태그 생성
	  td1_1.className = 'writer';                         //첫번째 td의 클래스이름과 작성자란에 입력한 내용을 innerHTML을 통해 td태그에 입력
	  td1_1.innerHTML = "작성자 : "+writertext.value;
	  var td1_2 = document.createElement('td');           //첫번째 줄에 두번째 td태그 생성
	  td1_2.className = 'story';                          //두번째 td의 클래스이름과 내용란에 입력한 내용을 innrHTML을 통해 td태그에 입력
	  td1_2.innerHTML = storytext.value;
	  tr1.appendChild(td1_1);                             //appendChild함수를 통해서 tr태그에 td1_1과 td1_2를 추가한다
	  tr1.appendChild(td1_2);

	  //두번째줄
	  var tr2 = document.createElement('tr');              //두번째 tr생성
	  var td2 = document.createElement('td');              //두번째 줄에 철번째 td태그 생성
	  td2.setAttribute('colspan', '2');                    //td의 속성에 colspan과 align 추가
	  td2.setAttribute('align', 'right');
	  var input = document.createElement('input');         //답글등록하기 버튼을 만들기 위한 input태그 추가하고 id, class, type, value속성을 추가 
	  input.setAttribute('id', 'reaction'+reviewnum);
	  input.setAttribute('class', 'reaction');
	  input.setAttribute('type', 'button');
	  input.setAttribute('value', '답글 등록하기');
	  tr2.appendChild(td2);                                //tr에 td와 input태그 추가
	  td2.appendChild(input);                                    

	  table.appendChild(tr1);                               //마지막으로 전체 테이블에 tr1태그와 tr2태그를 추가한다
	  table.appendChild(tr2);

	  set.appendChild(table);

	  if(reviewnum<=0){                                                  //작성자 내용란에 입력을 통해 생성된 테이블마다 답글을 달기를 하기위해서 if문에 인덱스를 넣어 구분을 해준다.
	  var review0 = document.getElementById('reaction0');                //해당 답글달기 버튼을 눌렀을 때 prompt함수를 통해 답글을 입력받고 답글란 속성과 클래스이름을 설정한다.
	  review0.addEventListener('click', function(){                      //입력받은 내용을 interview에 저장하고 innerHTML을 통해서 review의 부모노드인 td태그에 내용을 추가한다.
	    var interview = prompt("답글을 입력하세요.");                         //그리고 답글달기 버튼을 삭제한다.
	    review0.parentNode.setAttribute('align', 'left');
	    review0.parentNode.className = 'reviewcolor';
	    review0.parentNode.innerHTML = "답변 : "+interview; 
	    review0.remove();
	  });
	}
	  else if(reviewnum<=1){
	    var review1 = document.getElementById('reaction1');
	    review1.addEventListener('click', function(){
	    var interview = prompt("답글을 입력하세요.");
	    review1.parentNode.setAttribute('align', 'left');
	    review1.parentNode.className = 'reviewcolor';
	    review1.parentNode.innerHTML = "답변 : "+interview; 
	    review1.remove();  
	  });  
	  }
	  
	  else if(reviewnum<=2){
	    var review2 = document.getElementById('reaction2');
	    review2.addEventListener('click', function(){
	    var interview = prompt("답글을 입력하세요.");
	    review2.parentNode.setAttribute('align', 'left');
	    review2.parentNode.className = 'reviewcolor';
	    review2.parentNode.innerHTML = "답변 : "+interview; 
	    review2.remove();  
	  });
	  }

	  else if(reviewnum<=3){
	    var review3 = document.getElementById('reaction3');
	    review3.addEventListener('click', function(){
	    var interview = prompt("답글을 입력하세요.");
	    review3.parentNode.setAttribute('align', 'left');
	    review3.parentNode.className = 'reviewcolor';
	    review3.parentNode.innerHTML = "답변 : "+interview; 
	    review3.remove();  
	  });
	  }
	  
	  else if(reviewnum<=4){
	    var review4 = document.getElementById('reaction4');
	    review4.addEventListener('click', function(){
	    var interview = prompt("답글을 입력하세요.");
	    review4.parentNode.setAttribute('align', 'left');
	    review4.parentNode.className = 'reviewcolor';
	    review4.parentNode.innerHTML = "답변 : "+interview; 
	    review4.remove();  
	  });
	  }
	  reviewnum++;
	});

	 //차트
	var ctx = document.getElementById("myChart");                          //Chart.js 라이브러리를 실행하는 부분
	var myChart = new Chart(ctx, {                                         //차트를 새로 생성
	    type: 'bar',                                                       //타입을 bar로 설정
	    data: {
	        labels: ["문재인", "홍준표", "안철수", "유승민", "심상정"],              //차트에 필요한 후보자들 이름과 나타내는 내용인 지지율을 설정하고 데이터들을 입력
	        datasets: [{
	            label: '지지율',
	            data: [40.2, 22.7, 21.8, 5.0, 7.3],
	            backgroundColor: [                                         //해당 후보자에 대한 그래프 색 설정
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)'
	            ],
	            borderWidth: 3                                           //너비 설정
	        }]
	    },
	    options: {
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});
			</script>
	<script>reload();</script>
			
			<%
		}
		else{          //일치하지 않는다면 로그인 실패라는 문구와 다시 로그인하는 버튼을 띄운다.
			%>
			<div style="font-weight: bold; font-size: 50pt; text-align: center; margin: auto;">Login Failed~</div><br>
			<input type="button" value="다시 로그인 하기" style="margin-left: 48%;" onclick="location.href='login.jsp'">
			
		<%
		}
	%>
</body>
</html>