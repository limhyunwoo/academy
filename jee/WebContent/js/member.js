/**
 * @ Date: 2015-06-18 @ Author: JTJ @ Story: member.jsp, memberForm.jsp 관련 js 파일
 */
var searchId = function(url) { /* 팝업창 searchid,pass */
		window.open(
						url,
						"searchId",
						"scrollbars,toolbar=no,location=no,directories=no,status=no,menu=yes,resizable=yes,width=600,height=400,top=200,left=400");
	}

	var searchPass = function(url) {
		window.open(
						url,
						"searchPass",
						"scrollbars,toolbar=no,location=no,directories=no,status=no,menu=yes,resizable=yes,width=600,height=400,top=200,left=400");
	}

var join =function() {
	document.frmJoin.submit();
}

var login =function() {
	document.frmLogin.submit();
}