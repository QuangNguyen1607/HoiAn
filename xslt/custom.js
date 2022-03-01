$(document).ready(function() {
	if ($("body").is(".homepage, .product-detail-page")) {
		$( ".btn-booking" ).on( "click", function(e) {
			e.preventDefault();
			// console.log("Start date: " + $("#dpStartDate").val());	
			// console.log("End date: " + $("#dpEndDate").val());	
			var checkInDate = '';
			var checkOutDate = '';
			var sepa = '?'
			
			if($("#dpStartDate").val())
			{
				checkInDate = sepa + 'checkInDate=' + moment($("#dpStartDate").val(), 'DD/MM/yyyy').format('yyyy-MM-DD');
				sepa = '&';
			}
			if($("#dpEndDate").val())
			{
				checkOutDate = sepa + 'checkOutDate=' + moment($("#dpEndDate").val(), 'DD/MM/yyyy').format('yyyy-MM-DD');	
				sepa = '&';			
			}		
			
			var redirectUrl = 'https://book-directonline.com/properties/maichauhideawaydirect' + checkInDate + checkOutDate;
			var win = window.open(redirectUrl, '_blank');
			if (win) {
				//Browser has allowed it to be opened
				win.focus();
			} else {
				//Browser has blocked it
				alert('Please allow popups for this website');
			}
		});	
	}
	
	if ($("body").hasClass("product-detail-page"))
	{
		$(".commentpanel").appendTo(".comment-on-site .wrap-cm-2")
		
	}
});
