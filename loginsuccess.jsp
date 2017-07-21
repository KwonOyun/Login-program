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
		String userid = request.getParameter("id");      //�Ѿ�� ���̵�� ��й�ȣ�� �ش� ������ �Է�
		String password = request.getParameter("pw");

		File dir = new File("C:\\homework1");     //ȸ�������� �ִ� ���丮�� ����Ʈ�� filenames�迭�� �Է�
		String filenames[] = dir.list();
		boolean flag = false;   //���̵�� ��й�ȣ�� �´��� Ʋ������ �����ϱ� ���� boolean����

		for (int i = 0; i < filenames.length; i++) {    //ȸ���������� ������ŭ �ݺ�

			if ((userid + ".txt").equals(filenames[i])) {   //�Է��� ���̵� ���� ���
				FileReader fr = new FileReader("C:\\homework1\\" + filenames[i]);   //�ش� ���̵��� �ؽ�Ʈ�� �о��
				BufferedReader br = new BufferedReader(fr);
				if (password.equals(br.readLine())) {   //readline�Լ��� ��й�ȣ�� �о���� �Է��� ��й�ȣ�� ��ġ�ϸ� flag�� true�� ����
					flag = true;
				}
			}

		}
		if(flag){   //���̵�� ��й�ȣ�� ��ġ�ϸ� Ȩ�������� ����.
			%>
			
			<div id="popup">                                      <!-- ���â�� �ش��ϴ� div�±�-->
		<div align="center" style="margin-top: 250px;">
				<img id="popprev" src="popleft.png"><img id="popimage" src="���Ҿ���ִ�.png"><img id="popnext" src="popright.png"> <!--���â�� ����� �̹����� -->
		</div>  
	</div>
	<!-- ���̾ƿ��� HTML5 ������Ʈ�� ����� �� -->
	<header>
		<!-- Header (Menu bar) -->
		<a name="1"></a>   <!-- ��ġ�̵��� ���� a�±׷��� name���� -->
		<div class="Bar">  <!-- �޴��ٿ� �ش� �ϴ� div�±� -->
			<!-- ���� �޴��� �ش��ϴ� �ؽ�Ʈ�� button�±׿� a�±׷� ���ΰ� ���콺������ ���콺�ƿ� ȿ���� �ش� -->
			<a href="#1"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'" style="margin-left: 30%">HOME</button></a>
			<a href="#2"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">IMAGE SLIDE</button></a>
			<a href="#3"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">INTRODUCE</button></a>
			<a href="#4"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">GALLERY</button></a>
			<a href="#4"><button class="Menu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">GUEST BOOK</button></a>
			<button onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'"> <!-- ���콺����, ���콺�ƿ� ȿ���� �ش� --> 
			<div class="dropbtn">	<!-- ��Ӵٿ� �޴��������� ��Ÿ���� div�±� -->
				<div class="menuicon1"></div>
				<div class="menuicon2"></div>
	 			<div class="menuicon3"></div>			
	 		</div>
			</button>
			<div class="dropdown">    <!-- ��Ӵٿ��� ���� ������ ������ �޴����� ��Ÿ���� div�±� -->
				<div id="myDropdown" class="dropdown-content">
				<!-- ���� �޴��� ���� ��ġ�̵��� ���� a�±׷� ���ΰ� span�±׷� ���� ���콺����, ���콺�ƿ� ȿ���� �ش� -->
    				<a href="#1" ><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">�� HOME</span></a>
    				<a href="#2"><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">�� IMAGE SLIDE</span></a>
    				<a href="#3"><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">�� INTRODUCE</span></a>
    				<a href="#4"><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">�� GALLERY</span></a>
    				<a href="#5"><span class="dropmenu" onmouseover="this.style.background='#235F5F'" onmouseout="this.style.background='#233140'">�� GUEST BOOK</span></a>
  				</div>
			</div>
		</div>
	</header>
	
	<main>
	<!-- �̹��� �����̵� -->
	<a name="2"></a>  <!-- �̹��� �����̵� ��ġ���� ��ġ�̵��� ���� a�±� -->
		<div class = "ImageSlide" align="center">  <!-- �̹��������̵带 ��Ÿ���� div�±�  -->
			<div align="center">      <!-- ó��ȭ�鿡 ���� �̹������� ��Ÿ���� �ִ� div�±� -->
				<img id="prev" src="left.png"><img id="image" src="1.png" /><img id="next" src="right.png">
			</div>  
			<span class="dot" style="background-color: #717171"></span>   <!-- �ϴ� �̹��� ��ư�� ��Ÿ���� span�±� -->
  				<span class="dot"></span> 
  				<span class="dot"></span>
  				<span class="dot"></span> 
  				<span class="dot"></span> 
  				<span class="dot"></span>
			
		</div>
		<a name="3"></a>   <!-- Introduce ��ġ���� ��ġ�̵��� ���� a�±� -->
		<div class = "Introduce">
			<table border="1px solid" width="100%" height="100%">   <!-- ��ü ���̺� ���� -->
				<thead id="tablehead">    <!-- ù��° �ٿ� �ش��ϴ� thead�±� -->
					<tr>
						<td colspan="2"><h1>2017�� �뼱</h1></td>  
					</tr>
				</thead>
				<tbody id="tablebody">    <!-- �ι�° �ٿ� �ش��ϴ� tbody�±� -->
					<tr>
						<td><canvas id="myChart" width="400" height="400"></canvas></td>   <!-- chart�� �� canvas�±� -->
						<!-- ���� ���� �ش��ϴ� ���� -->
						<td width=50% style="word-break:break-all">���翡�� <span style="text-decoration: underline; color: red;">�� �ĺ��� 6%����Ʈ �϶��� 40.2%, �� �ĺ��� 1.4%����Ʈ ����� 21.8%, ȫ �ĺ��� 5.1%����Ʈ ����� 22.7%, �� �ĺ��� 1.3%����Ʈ �϶��� 7.3%, �� �ĺ��� 0.4%����Ʈ ����� 5.0%����Ʈ�� ����ߴ�.</span> 

						�ٸ����� ���� Ż�� ���¿� �¹��� ȫ �ĺ��� ���۽����� ��¼���, ��� �ϰ� �߼����� <�����þ�> ����ġ�� ���� ���翡�� ó������ '�ǹ� ũ�ν�'�� ����� ����� ��Ÿ����. �Ϸ� ���� ȫ �ĺ��� �� �ĺ��� �������� ������ �ռ� ���̴�. ���� �������� �������, �����ѱ����� 4�� 30��~5�� 1�� ���翡�� 16.4%�� ����ߴ� ����, 5�� 2�� ���翡�� 21.4%�� �Ϸ� ���� 4%����Ʈ ����� ������ ��Ÿ����. 

						������ ����ġ�� <span style="color: blue; font-weight: bold;">���Ͽ� ��ǥ�� "����� ����"�� �����ϰ� �ִ� �� �ĺ��� ����� ������, �� �ĺ� ���� ���ɼ� � �־ "(ȫ �ĺ� ��������) ��밨 ��¿� ���� '���� ������'�� �������� ���� �����ϱ� ������ ���ϴ�"�� �м��ߴ�.</span> 

						�� ��ǥ�� "������ �ĺ� ���� ����� ���� ������, ��ü�� �������� �̽��� ���Ҵ� ��, 5�� 1�Ϻ��� �ٸ����� 13�� ���� Ż�缳 �� ���¹� �ߵ� ���� ���ɼ� ���� �̽��� ������������ Ȯ��� �� ���� ����� �� �׵��� ����Ǿ� �ִ� '���� ������'�� ������ ��밨�� ����ϸ鼭 2�� ������� �������� ���������� �������翡 ������ ������ �����ȴ�"�� �м��ߴ�. 

						<span style="font-weight: bold;">���� �������� ���Ҿ���ִ��� 39.8%, �����ѱ����� 18.9%, �����Ǵ��� 17.4%, ���Ǵ��� 10.6%, �ٸ������� 5.7%�� ����ߴ�. �������� ����/��Ÿ �ǰ��� 6.5%����. �����ѱ����� ���ֺ��� 4.0%����Ʈ ����߰�, �����Ǵ��� ���ֺ��� 0.3%����Ʈ �϶��� ���� ������ ���� 2���� 3���� �ڹٲ����.</span><br><br>
						�ܱ��� ���Ͽ� ������ ��ǥ�ϰ�, �������� ������ �Ǵ� �ְ��� ��ġ������ ��ȭ���� ������� �̴� ���Ÿ� ���Ѵ�. �׷��� ���� ���¿� ���� ������� �����ϴ� ����ɼ��ű���� ���� ��ĵ� �پ��ϴ�. ���� ��� 1962�� ������� ���� ������������ ������ �������ŷ� ������� �����Ͽ���, �̱��� ���� �����δ���, ��Ű������ ��ȸ���� ������� �����ϴ� �� ������ ���� ���� ����� ���� �ٸ���. �� ��������� ä���� ���������� �ñ⿡ ���� ���� ����� �ٸ� �� �ִµ�, �ѱ������� ��ȸ�� ���� �������ſ� ���� ��������, ������ü����ȸ�ǿ� ���� �������� �� ���� ��Ŀ� ��ȭ�� �־���.

						�� <span style="text-decoration: underline; font-weight: bold;"> �ѱ������� 2012�� ��18�� ����ɼ��� ������ ������ ���������� 12ȸ, ��ȸ��������ü����ȸ������ɼ����δܿ� ���� ���������� 5ȸ, �ǿ��������Ͽ��� ��ȸ�� ���� ���������� 2ȸ��, �� 19ȸ�� ����ɼ��Ű� �ǽõǾ���. ��1�� ����ɼ��Ŵ� 1948�� 7�� 20�� ��ȸ�� �������ŷ� ġ������, ��2��� ��3��� �������ŷ� ġ������.</span> 1960�� 3�� 15�� ġ���� ��4�� ����ɼ��ŵ� �������ſ����� �̸��� 3��15�������ŷ� ���Ͽ� ��ȿ ó�������ν� ���� �� 8�� 12�� ���ǿ��� ���ǿ� ����յ�ȸ�ǿ� ���� �������ŷ� ������� �����Ͽ���. ���� ��7������� �������ŷ� ġ��������, ��1����� ��7������� �ӱⰡ ��� 4���̾���.
						����ɼ��� [����������]

 						</td>
					</tr>
				</tbody>
				<tfoot id="tablefoot">  <!-- ����° �ٿ� �ش��ϴ� �±� -->    
					<tr>
						<td colspan="2">��ó) Naver Google</td>
					</tr>
				</tfoot>
			</table>
		</div>
		<a name="4"></a>  <!-- ������ ��ġ���� �̵��� ���� a�±� -->
		<div class = "Gallery">      <!-- �������� ��Ÿ���� div�±� -->
		<!-- �� �׸��� ���� -->
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">���Ҿ���ִ�</div><img class="partyimg" src="���Ҿ���ִ�.png"></div>
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">�����ѱ���</div><img class="partyimg" src="�����ѱ���.png"></div>
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">�����Ǵ�</div><img class="partyimg" src="�����Ǵ�.png"></div>
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">�ٸ�����</div><img class="partyimg" src="�ٸ�����.png"></div>
		 <div class="party"><img src="x.png" class="close-icon"><div class="explain">���Ǵ�</div><img class="partyimg" src="���Ǵ�.png"></div>
		</div>

		<a name="5"></a>   <!-- ���� ��ġ���� �̵��� ���� a�±� -->
		<div class="Guestbook" align="center">  <!-- ���Ͽ� �ش��ϴ� div�±� -->   
			<div id="guestTable" align="center"></div>   
			<table id="guest" align="center">  <!-- ������ ���� ���̺� ���� -->
				<thead>
					<tr class="guest1">
						<td colspan="2" align="center"><h1>����</h1></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="guest2">�ۼ���</td><td><input type="text" id="text1" class="text" ></td>
					</tr>
					<tr>
						<td class="guest2">����</td><td><input type="text" id="text2" class="text" ></td>
					</tr>
				</tbody>
				<tfoot>
					<tr class="guest3">
						<td colspan="2" align="center"><input id="register" type="button" value="����ϱ�"></td>
					</tr>
				</tfoot>
			</table>
		</div>
	</main>
	<footer>
		<span>Chungnam.univ   201302362</span>  �ǿ���   oyoon33@gmail.com
	</footer>
	<script type="text/javascript">

	var dropbtn = document.getElementsByClassName("dropbtn");            //dropdown�޴�
	    dropbtn[0].addEventListener('click',function(){                   //dropbtnŬ������ �±׸� Ŭ���ϸ� �Լ�����
	    document.getElementById('myDropdown').classList.toggle("show");   //myDropdown id�� ���� �±��� Ŭ������ 'show'�� �߰�
	    dropbtn[0].classList.toggle("change");                            //dropbtn�� 0��° �±��� Ŭ������ 'change'�� �߰�
	});

	//���������̵�
	var dot = document.getElementsByClassName('dot');   //�ϴ� �̹����� ������ dot��� ��ü�� ����
	var image = document.getElementById('image'); //�̹��� �����̵� ����
	var imageArray = ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png"];  //�����̵��̹���
	var imageIndex = 0;   //�����̵� �ε���

	function slide(){                                  //�����̵带 ������ �Լ�
	  for(var i=0; i<imageArray.length; i++){          //�ϴ� �̹����� �� ����
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  image.src = imageArray[imageIndex];                //�̹��� ������ ���� �̹����� src�� ���� ���� 
	  dot[imageIndex].style.backgroundColor = '#717171';  
	  imageIndex++;  //�����̵� �ε��� �߰�
	  if(imageIndex>=imageArray.length){
	    imageIndex=0;                              //cycle�� ���ؼ� �̹����� ������ �Ѿ�� �ε����� 0���� ����
	  }
	}
	setInterval(slide, 5000);   //slide�Լ� 5�ʸ��� ����

	//ȭ��ǥ
	var prev = document.getElementById('prev');  //���� ȭ��ǥ
	var next = document.getElementById('next');  //���� ȭ��ǥ
	prev.addEventListener('click', function(){       //���� ȭ��ǥ Ŭ���� ����
	  imageIndex--;
	  if(imageIndex<0){
	    imageIndex=5;
	  }
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  image.src = imageArray[imageIndex];           //�̹��� ����
	  dot[imageIndex].style.backgroundColor = '#717171';
	})
	next.addEventListener('click', function(){   //���� ȭ��ǥ Ŭ���� ����
	  imageIndex++;
	  if(imageIndex>=imageArray.length){
	    imageIndex=0;
	  }
	  for(var i=0; i<imageArray.length; i++){
	    dot[i].style.backgroundColor = '#bbb';
	  }
	  image.src = imageArray[imageIndex];           //�̹��� ����
	  dot[imageIndex].style.backgroundColor = '#717171';
	});

	//dot    

	dot[0].addEventListener('click', function(){                //�ϴ��̹����� �ش��ϴ� �� ���� Ŭ���� ����
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
	var close = document.getElementsByClassName('close-icon');      //x��ư 
	var partyimg = document.getElementsByClassName('partyimg');   //���� �̹��� ������ �̹��� 

	close[0].addEventListener('click', function(){            //x��ư Ŭ���� �̹����� �����ϴ� �޼ҵ�
	  close[0].style.visibility = 'hidden';                   //x��ư�� visibility���� hidden���� �Ͽ� ȭ�鿡�� �Ⱥ��̰� �Ѵ�.
	  partyimg[0].style.visibility = 'hidden';                //�ش� �̹����� visibility���� hidden���� �Ͽ� ȭ�鿡�� �Ⱥ��̰� �Ѵ�.
	  sessionStorage.setItem(0, 'hidden');                     //storage�� ���� ���� 
	});                                                                     
	                                                          //5���� �̹����� ���� ���� �Լ� ����
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

	function reload(){                                             //���ΰ�ħ�ÿ� ������ �̹����� �ȳ����� �ϱ� ���� �Լ�
	  var close = document.getElementsByClassName('close-icon');   //x��ư�� �̹����� ���� ��ü ����
	  var partyimg = document.getElementsByClassName('partyimg'); 
	  for(var i=0; i<close.length; i++){                           //�׸��� ������ ��ŭ for���� ������
	    if(sessionStorage.getItem(i)=="hidden"){                   //storage�� ���� hidden���� Ȯ��
	      close[i].style.visibility = sessionStorage.getItem(i);   //hidden�̸� �ش��ε����� x��ư�� �̹����� visibility���� hidden���� ����
	      partyimg[i].style.visibility = sessionStorage.getItem(i); 
	    }
	  }
	}
	var party = document.getElementsByClassName('party');       //������� 
	var explain = document.getElementsByClassName('explain');   //���콺 ������ ���� ����

	party[0].addEventListener('mouseover', function(){           //���콺 ������ ȿ��
	  party[0].style.opacity = '0.5';
	  if(partyimg[0].style.visibility != 'hidden'){
	  explain[0].style.display = 'inline-block';                //�ο����� ���
	}
	});

	party[0].addEventListener('mouseout', function(){            //���콺 �ƿ��� ȿ��
	  party[0].style.opacity = '1';
	  explain[0].style.display = 'none';                        //�ο����� ����
	})

	party[1].addEventListener('mouseover', function(){          //5���� �̹����� ���� ���� ������� �Լ� ����
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

	var popimageArray = ["���Ҿ���ִ�.png", "�����ѱ���.png", "�����Ǵ�.png", "�ٸ�����.png", "���Ǵ�.png"];  //pop�̹���
	var popimage = document.getElementById('popimage');                                         //���� ����
	var popimageIndex = 0;                                                                      //�˾�â �ε��� ��������
	var popprev = document.getElementById('popprev');                                           //�˾�â ���� 
	var popnext = document.getElementById('popnext');                                           //�˾�â ����
	var party = document.getElementsByClassName('party');                                       //���� ���� ��� 
	var popup = document.getElementById('popup');                                               //��ü ȭ��

	partyimg[0].addEventListener('click', function(){                                           //Ŭ���ÿ� �˾�â�� ������ �ϴ� �Լ�
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

	popimage.addEventListener('click', function(){    //�˾�â �׸� Ŭ���ϸ� �ٽ� ���� ����
	  popup.style.display = 'none';
	})

	popprev.addEventListener('click', function(){     //������ư������ �� �� �̹����� ���̰� �ϴ� �Լ�
	  popimageIndex--;
	  if(popimageIndex<0){
	      popimageIndex=4;
	    }
	   while(partyimg[popimageIndex].style.visibility=='hidden'){     //�̹����� ������ ��Ȳ�̸� �ǳ� �ٰ� �ϴ� ����
	    popimageIndex--;
	    if(popimageIndex<0){
	      popimageIndex=4;
	    }
	  }
	  popimage.src = popimageArray[popimageIndex];                          //�̹��� src�� �� �� �̹����� ����
	  });

	popnext.addEventListener('click', function(){     //������ư ������ �� ���� �̹����� ���̰� �ϴ� �Լ�
	  popimageIndex++;
	  if(popimageIndex>=popimageArray.length){         //�̹����� ������ �Ѿ�� �ε����� 0���� �����ؼ� cycle�� �����ϰ���
	      popimageIndex=0;
	    }
	  while(partyimg[popimageIndex].style.visibility=='hidden'){        //�̹����� ������ ��Ȳ�̸� �ǳ� �ٰ� �ϴ� ����
	    popimageIndex++;                                              
	    if(popimageIndex>=popimageArray.length){                        //�̹����� ������ �Ѿ�� �ε����� 0���� �����ؼ� cycle�� �����ϰ���    
	      popimageIndex=0;
	    }
	  }
	  popimage.src = popimageArray[popimageIndex];                          //�̹��� src�� �� ���� �̹����� ����
	});

	//table
	var register = document.getElementById('register');    //����ϱ� ��ư
	var set = document.getElementById('guestTable');        //�������̺�� �ۼ��ڿ� ���뿡 �ش��ϴ� ��ü�� ������
	var writertext = document.getElementById('text1');
	var storytext = document.getElementById('text2');
	var reviewnum = 0;  //��� ����

	register.addEventListener('click', function(){       //Ŭ���ÿ� ���� ����ϴ� �޼ҵ�
	  var table = document.createElement('table');       //�ۼ��� ������ ����� ���̺� �±� ���� ����
	  table.className = 'newguest';             
	  
	  //ù��
	  var tr1 = document.createElement('tr');             //ù��° tr����
	  var td1_1 = document.createElement('td');           //ù° �ٿ� ù��° td�±� ����
	  td1_1.className = 'writer';                         //ù��° td�� Ŭ�����̸��� �ۼ��ڶ��� �Է��� ������ innerHTML�� ���� td�±׿� �Է�
	  td1_1.innerHTML = "�ۼ��� : "+writertext.value;
	  var td1_2 = document.createElement('td');           //ù��° �ٿ� �ι�° td�±� ����
	  td1_2.className = 'story';                          //�ι�° td�� Ŭ�����̸��� ������� �Է��� ������ innrHTML�� ���� td�±׿� �Է�
	  td1_2.innerHTML = storytext.value;
	  tr1.appendChild(td1_1);                             //appendChild�Լ��� ���ؼ� tr�±׿� td1_1�� td1_2�� �߰��Ѵ�
	  tr1.appendChild(td1_2);

	  //�ι�°��
	  var tr2 = document.createElement('tr');              //�ι�° tr����
	  var td2 = document.createElement('td');              //�ι�° �ٿ� ö��° td�±� ����
	  td2.setAttribute('colspan', '2');                    //td�� �Ӽ��� colspan�� align �߰�
	  td2.setAttribute('align', 'right');
	  var input = document.createElement('input');         //��۵���ϱ� ��ư�� ����� ���� input�±� �߰��ϰ� id, class, type, value�Ӽ��� �߰� 
	  input.setAttribute('id', 'reaction'+reviewnum);
	  input.setAttribute('class', 'reaction');
	  input.setAttribute('type', 'button');
	  input.setAttribute('value', '��� ����ϱ�');
	  tr2.appendChild(td2);                                //tr�� td�� input�±� �߰�
	  td2.appendChild(input);                                    

	  table.appendChild(tr1);                               //���������� ��ü ���̺� tr1�±׿� tr2�±׸� �߰��Ѵ�
	  table.appendChild(tr2);

	  set.appendChild(table);

	  if(reviewnum<=0){                                                  //�ۼ��� ������� �Է��� ���� ������ ���̺��� ����� �ޱ⸦ �ϱ����ؼ� if���� �ε����� �־� ������ ���ش�.
	  var review0 = document.getElementById('reaction0');                //�ش� ��۴ޱ� ��ư�� ������ �� prompt�Լ��� ���� ����� �Է¹ް� ��۶� �Ӽ��� Ŭ�����̸��� �����Ѵ�.
	  review0.addEventListener('click', function(){                      //�Է¹��� ������ interview�� �����ϰ� innerHTML�� ���ؼ� review�� �θ����� td�±׿� ������ �߰��Ѵ�.
	    var interview = prompt("����� �Է��ϼ���.");                         //�׸��� ��۴ޱ� ��ư�� �����Ѵ�.
	    review0.parentNode.setAttribute('align', 'left');
	    review0.parentNode.className = 'reviewcolor';
	    review0.parentNode.innerHTML = "�亯 : "+interview; 
	    review0.remove();
	  });
	}
	  else if(reviewnum<=1){
	    var review1 = document.getElementById('reaction1');
	    review1.addEventListener('click', function(){
	    var interview = prompt("����� �Է��ϼ���.");
	    review1.parentNode.setAttribute('align', 'left');
	    review1.parentNode.className = 'reviewcolor';
	    review1.parentNode.innerHTML = "�亯 : "+interview; 
	    review1.remove();  
	  });  
	  }
	  
	  else if(reviewnum<=2){
	    var review2 = document.getElementById('reaction2');
	    review2.addEventListener('click', function(){
	    var interview = prompt("����� �Է��ϼ���.");
	    review2.parentNode.setAttribute('align', 'left');
	    review2.parentNode.className = 'reviewcolor';
	    review2.parentNode.innerHTML = "�亯 : "+interview; 
	    review2.remove();  
	  });
	  }

	  else if(reviewnum<=3){
	    var review3 = document.getElementById('reaction3');
	    review3.addEventListener('click', function(){
	    var interview = prompt("����� �Է��ϼ���.");
	    review3.parentNode.setAttribute('align', 'left');
	    review3.parentNode.className = 'reviewcolor';
	    review3.parentNode.innerHTML = "�亯 : "+interview; 
	    review3.remove();  
	  });
	  }
	  
	  else if(reviewnum<=4){
	    var review4 = document.getElementById('reaction4');
	    review4.addEventListener('click', function(){
	    var interview = prompt("����� �Է��ϼ���.");
	    review4.parentNode.setAttribute('align', 'left');
	    review4.parentNode.className = 'reviewcolor';
	    review4.parentNode.innerHTML = "�亯 : "+interview; 
	    review4.remove();  
	  });
	  }
	  reviewnum++;
	});

	 //��Ʈ
	var ctx = document.getElementById("myChart");                          //Chart.js ���̺귯���� �����ϴ� �κ�
	var myChart = new Chart(ctx, {                                         //��Ʈ�� ���� ����
	    type: 'bar',                                                       //Ÿ���� bar�� ����
	    data: {
	        labels: ["������", "ȫ��ǥ", "��ö��", "���¹�", "�ɻ���"],              //��Ʈ�� �ʿ��� �ĺ��ڵ� �̸��� ��Ÿ���� ������ �������� �����ϰ� �����͵��� �Է�
	        datasets: [{
	            label: '������',
	            data: [40.2, 22.7, 21.8, 5.0, 7.3],
	            backgroundColor: [                                         //�ش� �ĺ��ڿ� ���� �׷��� �� ����
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
	            borderWidth: 3                                           //�ʺ� ����
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
		else{          //��ġ���� �ʴ´ٸ� �α��� ���ж�� ������ �ٽ� �α����ϴ� ��ư�� ����.
			%>
			<div style="font-weight: bold; font-size: 50pt; text-align: center; margin: auto;">Login Failed~</div><br>
			<input type="button" value="�ٽ� �α��� �ϱ�" style="margin-left: 48%;" onclick="location.href='login.jsp'">
			
		<%
		}
	%>
</body>
</html>