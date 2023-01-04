<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/demo.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="${pageContext.request.contextPath}/resources/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${pageContext.request.contextPath}/resources/js/config.js"></script>
      <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
</head>
<style>
    body{
      background-color: white;
    }
    .outerarea{
        width: 70%;
        margin-top: 200px;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
margin-top : 100px;
  margin-bottom : 100px;
    }

    .contentarea{
  width: 1100px;
  margin: 0 auto;
  margin-bottom : 100px;


    }

    table {
    width: 600px;
    height: 500px;
    padding: 50px;
    margin-left: 100px;
    }

 table tr td{
    height: 30px;
 }

 .row1{
   height: 50px;
 }

 .row3{
    height: 5%;
 }
 .row6{
    height:5%;
 }
 
 .row7{
    height: 5%;
 }

 .row9{
    height: 5%;
 }

 .row10{
    height: 5%;
 }

 .row12{
    height: 5%;
 }

 .boothSelect{
    width: 100%;
    height: 100%;
    border-radius: 5%;
    border: none;
    background-color: #DCF3F3;
    cursor: pointer;
    color: #22264e;
 }

 .boothSelect:hover{
    background-color: #ffbaba;
   transition-duration: 0.5s;
 }

 .boothSelect:focus{
   border: 5px solid red;
   transition-duration: 0.5s;
 }

 .boothSelect:disabled{
    background-color: rgb(233, 233, 233);
    cursor: default;
 }


#listarea{
  border: #d6dadb 1px solid;
  border-radius: 10px;
  width: 100%;
  padding: 17px;
  height: 580px;
}

.btnA{
  float: right;
  margin: 5px;
  width: 80px;
}

.premium{
  background-color: #dad4f0;
}

.deruxe{
  background-color: bisque;
}

.Boothprice{
padding: 10px;
margin-left: 80px;
}

.Boothprice div{
margin-left: 20px;
}




</style>
<body>
<jsp:include page="../common/header.jsp" />
    <div class="outerarea">

        <div class="contentarea">
        
        <form action="boothFormInsert.boo" method="post" enctype="multipart/form-data">
            
              <div class="card-body">
                <div class="d-flex align-items-start align-items-sm-center gap-4">
                  <label class="col-sm-2 col-form-label" for="basic-default-name">부스 썸네일</label>
                  <img
                    src="https://pbs.twimg.com/profile_images/1523892825481392128/rO3aJYod_400x400.jpg"
                    alt="user-avatar"
                    class="d-block rounded"
                    height="100"
                    width="100"
                    id="preview"
                  />
                  <div class="button-wrapper">
                    <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                      <span class="d-none d-sm-block">Upload new photo</span>
                      <i class="bx bx-upload d-block d-sm-none"></i>
                      <input
                        type="file"
                        id="upload"
                        hidden
                        name="upfile2"
                        class="account-file-input"
                        onchange="readURL(this);"
                      />
                    </label>
                    <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                      <i class="bx bx-reset d-block d-sm-none"></i>
                      <span class="d-none d-sm-block">Reset</span>
                    </button>

                    <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                  </div>
                </div>
              </div>
              
              
                  <div class="row mb-3">
                    <label class="col-sm-2 col-form-label" for="basic-default-name">부스 이름</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="basic-default-name" name="boothName"/>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <label class="col-sm-2 col-form-label" for="basic-default-company">기업 이름</label>
                    <div class="col-sm-10">
                      <input
                        type="text"
                        class="form-control"
                        id="basic-default-company"
                        placeholder='${c.userName}'
                        disabled
                      />
                    </div>
                  </div>
                  <div class="row mb-3">
                    <label class="col-sm-2 col-form-label" for="basic-default-phone">기업 번호</label>
                    <div class="col-sm-10">
                      <input
                        type="text"
                        id="basic-default-phone"
                        class="form-control phone-mask"
                        placeholder='${c.comBrnum}'
                        aria-describedby="basic-default-phone"
                        disabled
                      />
                    </div>
                  </div>
                  <div class="row mb-3">
                    <label class="col-sm-2 col-form-label" for="basic-default-message">부스 상세 설명</label>
                    <div class="col-sm-10">
                      <textarea
                        id="basic-default-message"
                        class="form-control"
                        placeholder="부스 소개 글을 입력해주세요."
                        aria-describedby="basic-icon-default-message2"
                        name="boothDetail"
                      ></textarea>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label class="col-sm-2 col-form-label" for="basic-default-message">부스 위치 선택</label>
                    <div class="col-sm-10">
                      <div id="listarea">
                        <table>
                              <tr class="row1">
                                <td colspan="4" rowspan="2" width=""><input type="button" name="b1" class="boothSelect premium" value="A1" onclick="selectNo(1);"></td>

                                <td></td>
                                <td colspan="7" rowspan="2" width=""><input type="button" name="b2" class="boothSelect premium" value="B1" onclick="selectNo(2);"></td>
                                <td width="8%"></td>
                                <td colspan="2" rowspan="2" width="20%"><input type="button" name="b5" class="boothSelect deruxe" value="C1" onclick="selectNo(5);"></td>
                              </tr>
                              <tr class="row2">
                                <td width="3%"></td>
                                <td></td>
                              </tr>
                              <tr class="row3">
                                <td width="100px"></td>
                                <td width="5%"></td>
                                <td width="5%"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td width="2%"></td>
                                <td width="5%"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row4">
                                <td rowspan="7"><input type="button" name="b3" class="boothSelect premium" value="A2" onclick="selectNo(3);"></td>
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b8" class="boothSelect" value="A4" onclick="selectNo(8);"></td>
                                <td></td>
                                <td colspan="5" rowspan="2"><input type="button" name="b9" class="boothSelect" value="B2" onclick="selectNo(9);"></td>
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b10" class="boothSelect" value="A6" onclick="selectNo(10);" ></td>
                                <td></td>
                                <td rowspan="2"><input type="button" name="b11" class="boothSelect" value="C2" value="A6" onclick="selectNo(11);"></td>
                              </tr>
                              <tr class="row5">
                                <td></td>
                                <td></td>

                                <td width="3%"></td>
                                <td></td>
                              </tr>
                              <tr class="row6">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row7">
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b12" class="boothSelect" value="A5" onclick="selectNo(12);"></td>
                                <td></td>
                                <td></td>
                                <td colspan="3" rowspan="2" width="15%"><input type="button" name="b13" class="boothSelect" value="B3" onclick="selectNo(13);"></td>
                                <td colspan="3" rowspan="2"><input type="button" name="b14" class="boothSelect" value="A8" onclick="selectNo(14);"></td>
                                <td></td>
                                <td></td>
                                <td rowspan="7"><input type="button" name="b4" class="boothSelect premium" value="a14" onclick="selectNo(4);"></td>
                              </tr>
                              <tr class="row8">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td width="3%"></td>
                              </tr>
                              <tr class="row9">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row10">
                                
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b15" class="boothSelect" value="A6" onclick="selectNo(15);"></td>
                                <td></td>
                                <td rowspan="2"></td>
                                <td colspan="3" rowspan="2"><input type="button" name="b16" class="boothSelect" value="B4" onclick="selectNo(16);"></td>
                                <td colspan="3" rowspan="2"><input type="button" name="b17" class="boothSelect" value="A9" onclick="selectNo(17);"></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row11">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row12">
                                <td rowspan="3" ><input type="button" name="b6" class="boothSelect deruxe" value="A3" onclick="selectNo(6);"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                    
                              </tr>
                              <tr class="row13">
                                <td></td>
                                
                                <td colspan="2" rowspan="2"><img width="50px;" src="${pageContext.request.contextPath}/resources/images/exit.png" alt=""></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b18" class="boothSelect deruxe" value="B5" onclick="selectNo(7);"></td>
                                <td></td>
                                <td></td>
                                <td colspan="2" rowspan="2"><img width="50px;" src="${pageContext.request.contextPath}/resources/images/entrance.png" alt=""></td>
                                <td></td>
                                
                              </tr>
                              <tr class="row14">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row15">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                    
                            </table>
  							
  							<div class="Boothprice" style="float:left; display:inline-block">
  							
	  							<div style="color: #dad4f0; display:inline-block">
	  							■ 
	  							</div>Premium ₩ 7,000,000
	                    		<div style="color: bisque; display:inline-block">
	                    		■ 
	                    		</div>Deluxe ₩ 4,000,000 
	                    		<div style="color: #DCF3F3; display:inline-block">
	                    		■ 
	                    		</div>Standard ₩ 3,000,000

	                        </div>
	                        </div>
                    </div>
                  </div>
                  
                  
                                    
                  <div class="row mb-3">
                    <label class="col-sm-2 col-form-label" for="basic-default-message">부스 신청 약관</label>
                    <div class="col-sm-10">
                      <textarea rows="5" cols="110" style="resize: none;" disabled>[제1조 용어의 정의]
- ‘전시자’라 함은 본 전시회 참가를 위하여 참가신청서를 제출한 개인, 사업자(개인,법인), 조합 및 단체를 말한다.
- ‘전시회’라 함은 SACHET 2023를 말한다.
- ‘주관자’라 함은 전시회를 주관하는 “SACHET”를 말한다. 

[제2조 참가신청]
- 전시회 참가 신청을 원하는 자는 소정의 참가신청서를 작성하여 주관자에게 제출함으로써 본 전시회 참가 계약이 성립한다.
- 전시자는 참가 신청 후 2주이내 참가비 총액의 50%를 납입하여야 한다.
- 전시자는 이미 신청한 부스 및 부대시설 신청내용에 변동사항이 발생한 경우 즉시 주관자에게 이를 통보하여야 하며, 미 통보로 인한 불이익에 대해서는 전시자가책임을 진다. 

[제3조 참가비 납입]
- 기본 참가비는 독립부스일 경우 부스당 700,000원으로 하고 조립 부스일 경우 부스당 1,000,000원으로 하며 부가세는 별도로 지급한다.
- 전시자는 참가신청서 제출 시 참가비총액의 50%를 계약금으로 납부하여야 하며, 잔금은 2020년 7월 31일까지 납부하여야한다.
- 전시자가 부스비 및 부대시설 사용료 등 전시회와 관련된 제반 비용을 미납할 경우 주관자는 완납시까지 참가를 유보하거나 선택적으로 그 전시자의 전시품을 유치할 수 있다.

[제4조 참가비 내역]
- 참가비에는 전시장소, 전시회 진행, 홍보, 전시장 보안 및 경호 등이 포함된다. 단, 부대시설 사용료는 별도로 한다. 제5조 전시부스 배정
- 주관자는 신청 규모, 전 시품목, 계 약금 입금 순 및 참 가신청 접수순, 국적 등 합리 적인 방 법과 주 관자의 전시회 전 체 기획 방향에 의거 전 시면적 및 위치를 배정하고, 전 시자는 이에 이의 를 제기할 수 없다.
- 특별한 사정이 있는 경우 주 관자는 전시회 준 비기간 이 전이면 언 제든지 전 시자에 할당된 전시 면적을 변경 할 수 있다. 이같은 변경은 주관자 의 재량이 며, 전 시자는 보상 을 청 구할 수 없다.

[제6조 설치 및 철거]
-설치 및 철거는 주관측이 규정한 기간 내에 완료되어야 하며, 전시자는 지연에 따른 손실이나 전시장에 대한 손상에 대하여 주관자에게 보상하여야 한다.

[제7조 주관자에 대한 정보제공]
-전시자는 주관자가 부스내 장치 및 활동이 규정에 부합되는지를 파악할 수 있도록 전시품 및 전시부스 설치 등에 관한 자료는 물론 전시회의 홍보에 필요한 정보를 주관자에게 제공하여야 한다.

[제8조 전시부스 관리]
-전시자는 명시한 전시품을 전시하고 상주요원을 배치하여 자사 부스관리에 안전을 기하여야 한다. 전시자가 참가신청서에 명시한 전시품과 상이한 물품을 전시하거나 전시회 성격에 부합하지 않는 물품을 전시할 경우 주관자는 즉시 중지, 철거 또는 반출을 명할 수 있다. 이경우 참가비는 반환되지 않고 전시자는 이에 따른 배상을 청구할 수 없다. 전시자는 전시부스 내 바닥, 천장, 벽면등에 페인트칠, 접착제 등으로 원상 변경을 할 수 없으며, 전시장의 손상에 대해서는 주관자의 원상복구 요청 등에
따라 적정한 손해 배상을 해야 한다. 전시자의 활동은 할당된 전시면적을 벗어날 수 없다.

[제9조 보험, 보안 및 안전]
전시자는 전시기간, 설치 및 철거기간동안 모든 자재 및 전시품에 대하여 보험에 부보하여야 한다. 주관자는 전시자 및 관람객의 권익을 보호하기 위하여 적절한 경계조치를 강구할 것이나, 전시자의 모든 물품에 관한 궁극적인 책임은 전시자가 부담한다. 전시부스 및 전시장치의 모든 자재는 소방 및 안전법규에 따라 적절한 불연처리가 되어야 하며, 주관자는 필요시 시공작업 
실연을 제한할 수 있다.

[제10조 위험부보]
전시자는 전시기간, 설치 및 철거 기간 중 발생되는 배정부스 면적 내의 전시품 및 장치물에 대한 훼손 및 도난에 대하여 전적인 책임을 부담하고 주관자에게 이에 대한 보상을 청구할 수 없다.
                      </textarea>
                    </div>
                  </div>
                  
                  
                  
                  
                  
                  <div class="row mb-3">
                    <label class="col-sm-2 col-form-label" for="basic-default-message">신청 후 <br>주의사항</label>
                    <div class="col-sm-10">
                      <div>
	- <b>참가비 납입방법</b> : 계좌 입금 및 신용카드 납부  참가신청계약시 참가비의 50% 납부(부가세 포함 금액) <br>
	※ 참가신청금이 납입되지 않은 신청서는 정식계약서로 인정하지 않음 <br>
	- <b>잔금 납입</b> : 아래 행사별 기한 참조 <br>
	- <b>입금 계좌</b> : 우리은행 1005-302-026248 (예금주 : (주)이엑스스포테인먼트) <br>
	※ 온라인 입금시 업체명을 필히 명기하시기 바람
                      </div>
                    </div>
                  </div>

                  <div class="row justify-content-end">
                    <div class="btnarea">
                      <button type="submit" class="btn btn-primary btnA">다음</button>
                      <button type="reset" class="btn btn-outline-secondary account-image-reset mb-4 btnA">취소</button>
                    </div>
                  </div>
                  
                  
                  <input type="hidden" id="boothSection" name="boothSection" value="">
                  
                  
                </form>
              </div>
           


            </div>

    
    <script>
      function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      document.getElementById('preview').src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
  } else {
    document.getElementById('preview').src = "";
  }
}
    
      
      function selectNo(number){
    	  $("#boothSection").val(number);
      }
      
      
      
      </script>
</body>
</html>