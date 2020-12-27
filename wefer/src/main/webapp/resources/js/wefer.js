$(document).ready(function() {
		$(".list-group-item").click(function() {
			var alert = document.getElementById('.list-group-item');
			var dot = $(this).childNodes;
			$(this).children('.dot').hide();
		});
	});

var change = function() {
	var elem = document.getElementById("work");
	if (elem.value == "출근") {
		alert("출근 확인되었습니다.");
		elem.value = "퇴근";
	} else {
		var conf = confirm("퇴근하시겠습니까 현재시간은 TO_CHAR(SYSDATE, 'HH:MI:SS') 입니다.");
		if (conf)
			elem.value = "출근";
		else
			elem.value = "퇴근";
	}
}