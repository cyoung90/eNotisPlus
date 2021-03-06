<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style>
	    #btn_writeMail {
	      position: fixed;
	      display: block;
	      right: 0;
	      bottom: 0;
	      margin-right: 20px;
	      margin-bottom: 20px;
	      z-index: 900;
	    }
	</style>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
</head>
<body>
<!-- The drawer is always open in large screens. The header is always shown, even in small screens. -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header mdl-layout--fixed-tabs">
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
    <span class="mdl-layout-title">메일</span>
      <div class="mdl-layout-spacer"></div>
      <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right">
        <label class="mdl-button mdl-js-button mdl-button--icon" for="fixed-header-drawer-exp">
          <i class="material-icons">search</i>
        </label>
        <div class="mdl-textfield__expandable-holder">
          <input class="mdl-textfield__input" type="text" name="sample" id="fixed-header-drawer-exp">
        </div>
      </div>
    </div>
	<jsp:include page="../../include/tabs.jsp"/>
  </header>

<jsp:include page="../../include/leftMenu.jsp"/>
  <main class="mdl-layout__content">
	<div class="page-content">
		<section class="mdl-layout__tab-panel is-active" id="fixed-tab-1">
		    <div class="page-content">
		    	<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp" width="100%">
					<colgroup>
						<col width="10%" />
						<col width="*" />
						<col width="20%" />
						<col width="15%" />
						<col width="5%" />
					</colgroup>
					<thead>
				    <tr>
				      <th class="mdl-data-table__cell--non-numeric">제목</th>
				      <th>보낸사람</th>
				      <th>받은시간</th>
				      <th></th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var="item" begin="1" end="10" step="1" varStatus="vs">
					    <tr id="idx_${vs.index}" name="index">
					      <td class="mdl-data-table__cell--non-numeric">메일_${vs.index} 제목입니다.</td>
					      <td>보낸 사람 이름</td>
					      <td>10:54 AM</td>
					      <td></td>
					    </tr>
				  	</c:forEach>
				  </tbody>
				</table>
		    </div>
		</section>
		<section class="mdl-layout__tab-panel" id="fixed-tab-2">
		  <div class="page-content">
		  	<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp" width="100%">
		  	  <colgroup>
		  	  	<col width="10%"/>
		  	  	<col width="*"/>
		  	  	<col width="20%"/>
		  	  	<col width="15%"/>
		  	  	<col width="5%"/>
		  	  </colgroup>
			  <thead>
			    <tr>
			      <th class="mdl-data-table__cell--non-numeric">제목</th>
			      <th>받는사람</th>
			      <th>보낸시간</th>
			      <th></th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="item" begin="1" end="10" step="1" varStatus="vs">
				    <tr id="idx_${vs.index}" name="index">
				      <td class="mdl-data-table__cell--non-numeric">발송한 메일_${vs.index} 제목입니다.</td>
				      <td>받는 사람 이름</td>
				      <td>2:54 PM</td>
				      <td></td>
				    </tr>
			  	</c:forEach>
			  </tbody>
			</table>
		  </div>
		</section>
		<section class="mdl-layout__tab-panel" id="fixed-tab-3">
		  <div class="page-content"><!-- Your content goes here --></div>
		</section>
	</div>
  </main>
</div>
	<button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" id="btn_writeMail">
	  <i class="material-icons">edit</i>
	</button>
<!-- 본문 끝 -->
<jsp:include page="/WEB-INF/include/include-body.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			if (!navigator.onLine){ alert("OFFLINE"); return false;}	// network Check
			
            $("tr[name='index']").on("click", function(e){ //row 클릭
                e.preventDefault();
                fn_openMailDetail($(this));
            });
			
			$("#btn_writeMail").click(function(){
				common.openWriteMail();
			});
        });
         
/*         function fn_openBoardWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardWrite.do' />");
            comSubmit.submit();
        } */
         
        function fn_openMailDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/mail/viewDetail.do'/>");
            comSubmit.addParam("idx", obj.attr("id"));
            comSubmit.submit();
        }
        
        var common = {
				// edit 버튼 클릭
				openWriteMail : function(obj){
					var comSubmit = new ComSubmit();
		            comSubmit.setUrl("<c:url value='/mail/writeMail.do'/>");
		            comSubmit.submit();
				}
		}
	</script>
</body>
</html>