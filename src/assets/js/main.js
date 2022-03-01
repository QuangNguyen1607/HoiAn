const observer = lozad(".lozad", {
	threshold: 0.1,
	enableAutoReload: true,
	load: function (el) {
		el.src = el.getAttribute("data-src");
	},
});

observer.observe();

$(function () {
	showPrice();
	$(".page-uu-dai-product .table-select-order .button-readmore").click(
		function (o) {
			// o.preventDefault(),
			let titleTour = $(this)
				.parents(".box-content")
				.find(".title-product")
				.text();
			let priceTour = $(this)
				.parents(".box-content")
				.find(".show-price")
				.text();
			let pointNumPriceTour = priceTour.replace(" ₫", "");
			let countGuests = $(this)
				.parents(".box-content")
				.find(".amount")
				.val();
			setCookie("titleTour", titleTour, 30);
			setCookie("pointNumPriceTour", pointNumPriceTour, 30);
			setCookie("countGuests", countGuests, 30);
		}
	);
	let openStateTitleTour = getCookie("titleTour");
	let openStatePriceTour = getCookie("pointNumPriceTour");
	let openStateCountGuests = getCookie("countGuests");

	if (openStateTitleTour != null) {
		$(".tour-name input").val(openStateTitleTour);
	}
	if (openStatePriceTour != null) {
		$(".total-money input").val(openStatePriceTour);
	}
	if (openStateCountGuests != null) {
		$(".guests-number input").val(openStateCountGuests);
	}
});

function setCookie(cname, cvalue, exdays) {
	var d = new Date();
	d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
	var expires = "expires=" + d.toGMTString();
	document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
	var name = cname + "=";
	var decodedCookie = decodeURIComponent(document.cookie);
	var ca = decodedCookie.split(";");
	for (var i = 0; i < ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == " ") {
			c = c.substring(1);
		}
		if (c.indexOf(name) == 0) {
			return c.substring(name.length, c.length);
		}
	}
	return "";
}

function showPrice() {
	let priceDefault = $(".page-uu-dai-product .wrap-price-main ins").text();
	let replacePrice = priceDefault
		.replace(".", "")
		.replace(".", "")
		.replace(" ₫", "");
	var pointNum = parseFloat(replacePrice);
	$(".page-uu-dai-product .input-amount a").on("click", function (e) {
		let countNumber = $(this).parent().find("input").val();
		let totalPrice = countNumber * pointNum;
		let formatTotalPrice = new Intl.NumberFormat("vi-VN", {
			style: "currency",
			currency: "VND",
		}).format(totalPrice);
		$(".page-uu-dai-product .table-select-order .price-se .show-price").html(formatTotalPrice);
	});
}
function height(el) {
	var height = 0;
	$(el).each(function () {
		var thisHeight = $(this).height();
		if (thisHeight > height) {
			height = thisHeight;
		}
		setTimeout(() => {
			$(el).height(height);
		}, 100);
	});
}
let header = {
	scrollActive: function () {
		let height = $("header").height();
		if ($(window).width() > 768) {
			if ($(window).scrollTop() > height) {
				$("header").addClass("active");
				$("header .top-bar").slideUp(300);
				$("header .logo").addClass("small-img");
				$("header .main-menu-mobile").css("top", "64px");
			} else {
				$("header").removeClass("active");
				$("header .top-bar").slideDown(300);
				$("header .logo").removeClass("small-img");
				$("header .main-menu-mobile").css("top", "100px");
			}
		}
	},
};
$(document).on("scroll", function () {
	header.scrollActive();
});
const checkLayoutBanner = () => {
	const pagesBanner = $("#pagebanner");
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#home-banner");
	if (mainBanner.length >= 1) {
		// $("main").css("padding-top", heightHeader);
	} else if (pagesBanner.length >= 1) {
		$("main").css("padding-top", heightHeader);
	} else {
		$("main").css("padding-top", heightHeader);
	}
};
const StickyMenu = () => {
	// $("header").sticky({
	// 	zIndex: 999,
	// 	className: "header-scroll",
	// });
	// // $(".category-page").sticky({
	// // 	topSpacing: 100,
	// // 	zIndex: 999,
	// // });
	// if ($(window).width() > 768) {
	// 	$(window).scroll(function () {
	// 		let checkscroll = $(this).scrollTop();
	// 		console.log(checkscroll);
	// 		if (checkscroll < 300) {
	// 		} else {
	// 			$("header .top-bar").slideUp(300);
	// 		}
	// 	});
	// }
	// if ($(window).width() > 768) {
	// 	$("header").on("sticky-end", function () {
	// 		$("header .top-bar").slideDown(300);
	// 		$("header .logo").removeClass("small-img");
	// 		$("header .main-menu-mobile").css("top", "100px");
	// 	});
	// 	$("header").on("sticky-start", function () {
	// 		$("header .top-bar").slideUp(300);
	// 		$("header .logo").addClass("small-img");
	// 		$("header .main-menu-mobile").css("top", "64px");
	// 	});
	// }
	// if ($(window).width() < 1280) {
	// 	// $(".category-page").on("sticky-end", function () {
	// 	// 	$(".category-page .title-header").removeClass("active");
	// 	// });
	// 	// $(".category-page").on("sticky-start", function () {
	// 	// 	$(".category-page .title-header").addClass("active");
	// 	// });
	// }
};
function setBackgroundElement() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		var bgMobile = $(this).attr("setBackgroundMobile");
		var breakpoint = $(this).attr("breakpoint");
		if (typeof bgMobile != "undefined") {
			if ($(window).width() <= breakpoint) {
				$(this).css({
					"background-size": "cover",
					"background-position": "center center",
					"background-image": "url(" + bgMobile + ")",
				});
			} else {
				$(this).css({
					"background-size": "cover",
					"background-position": "center center",
					"background-image": "url(" + background + ")",
				});
			}
		} else {
			$(this).css({
				"background-size": "cover",
				"background-position": "center center",
				"background-image": "url(" + background + ")",
			});
		}
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
	// if ($(window).width() < 376) {
	// 	$("[setBackgroundMobile]").each(function () {
	// 		var backgroundMobile = $(this).attr("setBackgroundMobile");
	// 		$(this).css({
	// 			"background-image": "url(" + backgroundMobile + ")",
	// 			"background-size": "cover",
	// 			"background-position": "center center",
	// 		});
	// 	});
	// }
}
function mappingMenu() {
	let MenuLeft = $("header .main-menu .wrap-main-menu .wrap-left .list-menu").mapping({
		mobileWrapper: "header .main-menu .main-menu-mobile",
		mobileMethod: "prependTo",
		desktopWrapper: "header .main-menu .wrap-main-menu .wrap-left",
		desktopMethod: "appendTo",
		breakpoint: 1280,
	});
	let MenuRight = $("header .main-menu .wrap-main-menu .wrap-right .list-menu").mapping({
		mobileWrapper: "header .main-menu .main-menu-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .main-menu .wrap-main-menu .wrap-right",
		desktopMethod: "prependTo",
		breakpoint: 1280,
	});
	let changeLang = $("header .top-bar .wrap-top-bar .change-lang").mapping({
		mobileWrapper: "header .wrap-main-menu .wrap-right .l-search-box",
		mobileMethod: "insertBefore",
		desktopWrapper: "header .top-bar .wrap-top-bar .change-lang",
		desktopMethod: "appendTo",
		breakpoint: 768,
	});
	let searchBox = $("header .top-bar .wrap-top-bar .search-box").mapping({
		mobileWrapper: "header .wrap-main-menu .wrap-right .l-search-box",
		mobileMethod: "appendTo",
		desktopWrapper: "header .top-bar .wrap-top-bar .wrap-right .list-menu",
		desktopMethod: "appendTo",
		breakpoint: 768,
	});
	let MoveMenuFile = $(".file-nav-1 .list-menu li").mapping({
		mobileWrapper: ".file-nav-1 .category-page .list-menu-page",
		mobileMethod: "appendTo",
		desktopWrapper: ".file-nav-1 .list-menu",
		desktopMethod: "appendTo",
		breakpoint: 768,
	});
}

function menuMobile() {
	let hamburger = $(".button-hambuger .burger-bt-inner");
	let menuMobile = $(".mobile-wrap");
	hamburger.on("click", function () {
		$(this).toggleClass("active");
		menuMobile.toggleClass("active");
	});
}

function swiperInit() {
	var bannerHome = new Swiper(".banner-home .swiper-container", {
		slidesPerView: 1,
		loop: true,
		speed: 2000,
		effect: "fade",
		grabCursor: true,
		// autoplay: {
		// 	delay: 3000,
		// 	disableOnInteraction: false,
		// },
		fadeEffect: {
			crossFade: true,
		},
		slidesPerColumnFill: "row",
		pagination: {
			el: ".banner-home .swiper-pagination",
			clickable: true,
		},
		navigation: {
			nextEl: ".banner-home .button-next",
			prevEl: ".banner-home .button-prev",
		},
	});
	var slideProduct = new Swiper(".slide-product-main .swiper-container", {
		slidesPerView: 1,
		spaceBetween: 30,
		breakpoints: {
			575: {
				slidesPerView: 2,
			},
			1024: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 4,
			},
		},
		navigation: {
			nextEl: ".slide-product-main .button-next",
			prevEl: ".slide-product-main .button-prev",
		},
	});
	var Slidehome6 = new Swiper(".home-6 .post-1 .swiper-container", {
		slidesPerView: 1,
		spaceBetween: 10,
		breakpoints: {
			1024: {
				slidesPerView: 1,
			},
		},
		navigation: {
			nextEl: ".home-6 .post-1 .button-next-2",
			prevEl: ".home-6 .post-1 .button-prev-2",
		},
	});
	var Slidehome6_2 = new Swiper(".home-6 .post-2 .swiper-container", {
		slidesPerView: 1,
		spaceBetween: 10,
		breakpoints: {
			1024: {
				slidesPerView: 1,
			},
		},
		navigation: {
			nextEl: ".home-6 .post-2 .button-next-2",
			prevEl: ".home-6 .post-2 .button-prev-2",
		},
	});

	var Slidehome6_3 = new Swiper(".post-uu-dai-slide .swiper-container", {
		slidesPerView: 1,
		spaceBetween: 30,
		breakpoints: {
			1024: {
				slidesPerView: 3,
			},
			768: {
				slidesPerView: 2,
			},
		},
		navigation: {
			nextEl: ".post-uu-dai-slide .button-next",
			prevEl: ".post-uu-dai-slide .button-prev",
		},
	});
	var slideProduct = new Swiper(".page-uu-dai-product .swiper-container", {
		slidesPerView: 1,
		spaceBetween: 0,
		navigation: {
			nextEl: ".page-uu-dai-product .button-next-in",
			prevEl: ".page-uu-dai-product .button-prev-in",
		},
		pagination: {
			el: ".page-uu-dai-product .swiper-pagination",
			clickable: true,
		},
	});
	var slideOtherNews = new Swiper(".swiper-other-news .swiper-container", {
		slidesPerView: 1,
		centeredSlides: true,
		spaceBetween: 0,
		speed: 1000,
		observer: true,
		loop: true,
		observeParents: true,
		navigation: {
			nextEl: ".swiper-other-news .button-next",
			prevEl: ".swiper-other-news .button-prev",
		},
		breakpoints: {
			460: {
				spaceBetween: 10,
				slidesPerView: 2,
				centeredSlides: false,
			},
			768: {
				spaceBetween: 10,
				slidesPerView: 3,
				centeredSlides: false,
			},
			1024: {
				spaceBetween: 30,
				slidesPerView: 3,
				centeredSlides: false,
			},
		},
	});
	var slideWhyMe = new Swiper(".swiper-why-me .swiper-container", {
		slidesPerView: 1,
		centeredSlides: true,
		spaceBetween: 15,
		speed: 1000,
		observer: true,
		loop: true,
		observeParents: true,
		navigation: {
			nextEl: ".swiper-why-me .button-next",
			prevEl: ".swiper-why-me .button-prev",
		},
		breakpoints: {
			460: {
				spaceBetween: 10,
				slidesPerView: 2,
				centeredSlides: false,
			},
			768: {
				spaceBetween: 10,
				slidesPerView: 3,
				centeredSlides: false,
			},
			1024: {
				spaceBetween: 30,
				slidesPerView: 3,
				centeredSlides: false,
			},
		},
	});
	var slideIntro = new Swiper(".swiper-intro-5 .swiper-container", {
		spaceBetween: 10,
		loop: true,
		centeredSlides: true,
		speed: 1000,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".swiper-intro-5 .button-next",
			prevEl: ".swiper-intro-5 .button-prev",
		},
		breakpoints: {
			320: {
				slidesPerView: 1.5,
			},
			1280: {
				slidesPerView: 2.3,
			},
		},
	});
	var slideIntro_3 = new Swiper(".intro-3 .swiper-container", {
		slidesPerView: 1,
		spaceBetween: 30,
		speed: 1000,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".intro-3 .button-next-2",
			prevEl: ".intro-3 .button-prev-2",
		},
	});
	var slideRecruit = new Swiper(".swiper-recruit .swiper-container", {
		slidesPerView: 1,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".swiper-recruit .button-next-2",
			prevEl: ".swiper-recruit .button-prev-2",
		},
	});
}

function pageBanner() {
	var pageBanner = new Swiper(".pages-banner .swiper-container", {
		slidesPerView: 1,
		loop: true,
		// autoplay: {
		// 	delay: 3000,
		// },
		lazy: true,
		parallax: true,
		speed: 300,
		effect: "fade",
	});
}

function scrollToDiv() {
	$(".pages-banner-arrow").on("click", function (event) {
		var hash = this.hash;
		$("html,body").animate(
			{
				scrollTop: $(".pages-banner").outerHeight(),
			},
			"slow"
		);
	});
}

function Acordition() {
	$(".faq-list .faq-item").click(function (e) {
		var t = $(this).closest(".faq-item").find(".content");
		$(this).closest(".faq-list").find(".content").not(t).slideUp();
		$(this).hasClass("active")
			? $(this).removeClass("active")
			: ($(this)
					.closest(".faq-list")
					.find(".faq-item.active")
					.removeClass("active"),
			  $(this).addClass("active")),
			t.stop(!1, !0).slideToggle(),
			e.preventDefault();
	});
}

const selectDis = () => {
	$(".select-item .title-select").click(function () {
		var t = $(this).closest(".select-item").find(".content");
		$(this).closest(".wrap-select").find(".content").not(this).slideUp();
		if ($(this).hasClass("active")) {
			$(this).removeClass("active");
		} else {
			$(this)
				.closest(".wrap-select")
				.find(".title-select.active")
				.removeClass("active");
			$(this).addClass("active");
			t.stop(!1, !0).slideToggle(), e.preventDefault();
		}
	});
};
// const tabAcordition = () => {
// 	$(".list-faq .title").click(function (e) {
// 		var t = $(this).closest(".list-faq").find(".content");
// 		$(this).closest(".wrap-card ").find(".content").not(t).slideUp();
// 		$(this).hasClass("active")
// 			? $(this).removeClass("active")
// 			: ($(this)
// 					.closest(".wrap-card")
// 					.find(".title.active")
// 					.removeClass("active"),
// 			  $(this).addClass("active")),
// 			t.stop(!1, !0).slideToggle(),
// 			e.preventDefault();
// 	});
// };

const datePicker = () => {
	$.datepicker.regional["vi-VN"] = {
		closeText: "Đóng",
		prevText: "Trước",
		nextText: "Sau",
		currentText: "Hôm nay",
		monthNames: [
			"Tháng một",
			"Tháng hai",
			"Tháng ba",
			"Tháng tư",
			"Tháng năm",
			"Tháng sáu",
			"Tháng bảy",
			"Tháng tám",
			"Tháng chín",
			"Tháng mười",
			"Tháng mười một",
			"Tháng mười hai",
		],
		monthNamesShort: [
			"Một",
			"Hai",
			"Ba",
			"Bốn",
			"Năm",
			"Sáu",
			"Bảy",
			"Tám",
			"Chín",
			"Mười",
			"Mười một",
			"Mười hai",
		],
		dayNames: [
			"Chủ nhật",
			"Thứ hai",
			"Thứ ba",
			"Thứ tư",
			"Thứ năm",
			"Thứ sáu",
			"Thứ bảy",
		],
		dayNamesShort: ["CN", "Hai", "Ba", "Tư", "Năm", "Sáu", "Bảy"],
		dayNamesMin: ["CN", "T2", "T3", "T4", "T5", "T6", "T7"],
		weekHeader: "Tuần",
		dateFormat: "dd/mm/yy",
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: "",
	};

	$.datepicker.setDefaults($.datepicker.regional["vi-VN"]);
	$(".date-input input").datepicker();
};
const ClickMenuMobile = () => {
	$(".hambuger").click(function () {
		$(this).toggleClass("active");
		$("header .main-menu-mobile").toggleClass("active");
	});
};
const clickSearchForm = () => {
	$(".search-box").click(function () {
		$(".search-wrap").addClass("active");
	});
	$(".close-btn").click(function () {
		$(".search-wrap").removeClass("active");
	});
};
const checkScrollDatPhong = () => {
	var lastScrollTop = 0;
	// $(".box-menu-left .panel-header").addClass("show");
	$(window).scroll(function (event) {
		var checkScroll = $(this).scrollTop();
		if (checkScroll > 150) {
			$("header .btn-book").addClass("show");
			if (checkScroll > lastScrollTop) {
				$("header .btn-book").addClass("show");
			} else {
				$("header .btn-book").removeClass("show");
			}
			lastScrollTop = checkScroll;
		} else {
			$("header .btn-book").removeClass("show");
		}
	});
};
const clickMenuScroll = () => {
	$(".file-nav-1 .category-page .title-header").click(function () {
		$(this).parent().toggleClass("active");
	});
	let heightBanner = 100;
	$(window).scroll(function () {
		let checkScroll = $(this).scrollTop();
		if (checkScroll > heightBanner) {
			$(".category-page").addClass("show-p");
		} else {
			$(".category-page").removeClass("show-p");
		}
	});
};
const binhLuan = () => {
	$(".show-comment .button-expand").click(function () {
		$(this).css("display", "none");
		$(".show-comment .button-rut").css("display", "flex");
		// $(".show-comment .wrap-bl").addClass("active");
		$(".show-comment .journalItems").css("min-height", "100%");
	});
	$(".show-comment .button-rut").click(function () {
		$(this).css("display", "none");
		$(".show-comment .button-expand").css("display", "flex");
		$(".show-comment .journalItems").removeClass("active");
		let count = 0;
		let totalHeight = 0;
		$(".cmt-item").each(function (i) {
			if (i < 4) {
				totalHeight += $(this).outerHeight();
			}
			$(".show-comment .journalItems").css("min-height", totalHeight);
		});
	});
	$(".button-tra-loi").click(function () {
		$(this).closest(".content").find(".box-binh-luan").slideToggle();
	});
	$(".button-cate").click(function () {
		$(".box-comment").slideToggle();
	});
	$(".icon-close").click(function () {
		$(".journalTools").slideUp();
	});
};
function adjustProductAmount() {
	$(".btn-dec").click(function (e) {
		e.preventDefault();
		let amountInput = $(this).next();
		let amountVal = parseInt(amountInput.val());
		if (amountVal <= 0) {
			amountVal = 0;
		} else {
			amountVal--;
		}
		amountInput.val(amountVal);
	});

	$(".btn-inc").click(function (e) {
		e.preventDefault();
		let amountInput = $(this).prev();
		let amountVal = parseInt(amountInput.val());
		amountVal++;
		amountInput.val(amountVal);
	});
}
const scrollTopTool = () => {
	if ($(window).scrollTop() > 300) {
		$(".list-tool-menu").addClass("active");
	} else {
		$(".list-tool-menu").removeClass("active");
	}
};
const clickToTop = () => {
	$(".buttonToTop").click(function () {
		$("html, body").animate(
			{
				scrollTop: 0,
			},
			300
		);
	});
};
const scrollActiveGt = () => {
	$(".file-nav-1").sticky({
		topSpacing: 63.98,
		zIndex: 999,
	});
	$(".intro_page .file-nav-1").activescroll({
		scroll: "scroll",
		active: "active",
		offset: 126,
	});
	$(".file-nav-1").on("sticky-start", function () {
		$(this).addClass("active");
	});
	$(".file-nav-1").on("sticky-end", function () {
		$(this).removeClass("active");
	});
};
const InsertBody = () => {
	if ($(".page-uu-dai-product.dich-vu-combo-ct-1").length == 1) {
		$("body").addClass("dich-vu-tour-ct");
	}
	if ($(".page-uu-dai-product.dich-vu-hd-khac").length == 1) {
		$("body").addClass("dich-vu-hoat-dong-khac-ct");
	}
	if ($(".page-uu-dai-product.tien-ich-nha-hang-ct-1").length == 1) {
		$("body").addClass("page-nha-hang-ct");
	}
	if ($(".page-uu-dai-product.dich-vu-tour-ct-1").length == 1) {
		$("body").addClass("dich-vu-tour-ct");
	}
	if ($(".page-uu-dai-product.phong-ct-1").length == 1) {
		$("body").addClass("page-phong-ct");
	}
};
function phantrang() {
	$(".modulepager")
		.find(".pagination")
		.find("li>a.NextPage, li>a.LastPage, li>a.BackPage, li>a.FirstPage")
		.parent()
		.hide();
}
const disablePagination = () => {
	if (
		$(".page-uu-dai-product").length == 1 ||
		$(".page-recruit").length == 1
	) {
		$(".pagination").hide();
	}
};
const MovePagination = () => {
	$(".pagination").appendTo(".home-2");
	if ($(".uu-dai_page").length == 1) {
		$(".pagination").appendTo(".page-uu-dai");
	}
};
const CheckMenuSubMB = () => {
	if ($(window).width() < 1280) {
		$(".list-menu li a").click(function () {
			if ($(this).next().hasClass("active")) {
				return true;
			} else if ($(this).next().hasClass("dropdown-menu")) {
				$(this).next().addClass("active");
				$(this).next().slideToggle();
				return false;
			} else {
				return true;
			}
			return false;
		});
	}
};
const hiddenBanneCt = () => {
	if ($(".page-uu-dai-product").length == 1) {
		$(".page-banner").hide();
	}
};
const insertPlaceHolder = () => {
	$("#ctl00_mainContent_ctl02_txtCaptcha").attr(
		"placeholder",
		"Nhập mã captcha"
	);
};
const AppendAttr = () => {
	$(".img-small").each(function () {
		let img_main = $(this).find(".main-img").attr("data-fancybox");
		$(this).find(".hidden a").attr("data-fancybox", img_main);
	});
};
const paginationAppendTo = () => {
	if ($(".page-news-list").length == 1) {
		$(".pagination").appendTo(".page-news-list");
	}
};
function EditLinkBt(e) {
	if ($(".product-detail-page.en").length >= 1) {
		$(".page-uu-dai-product .button-readmore").attr(
			"href",
			"/en/book-tour"
		);
	}
}
function TransBinhLuan(e) {
	if ($(".product-detail-page.en").length >= 1) {
		$(".comment-on-site .wrap-cm-2 .journalEditor .box-text textarea").attr(
			"placeholder",
			"Content"
		);
		$(
			".comment-on-site .wrap-cm-2 .journalEditor .journalInfo .txtFullName"
		).attr("placeholder", "Full Name");
		$(
			".comment-on-site .wrap-cm-2 .journalEditor .journalInfo .txtPhone"
		).attr("placeholder", "Phone");
		$(".comment-on-site .show-comment .section-title").text("All Comment");
		$(
			".comment-on-site .wrap-cm-2 .journalEditor .journalInfo .rating-star-number label"
		).text("Rate");
		$(
			".comment-on-site .wrap-cm-2 .journalEditor .journalInfo .btnShare"
		).text("Send");
	}
}
function EditImage360(e) {
	// let imageUrl = $(".home-5 .box-img-wrap .img-big .div-img-360").attr(
	// 	"image-360"
	// );
	// var tabView = pannellum.viewer("tab1", {
	// 	type: "equirectangular",
	// 	panorama: imageUrl,
	// 	autoLoad: true,
	// });
	$("#modal-360-new").addClass("visual-hidden");
}

$(document).ready(function () {
	$(
		"#ctl00_mainContent_ctl02_ctlb20a91e6e4624f56a537f573a0da5eaa_txtb20a91e6e4624f56a537f573a0da5eaa"
	).attr("readonly", "");
	setBackgroundElement();
	// header
	menuMobile();
	Acordition();
	// swiper
	swiperInit();
	pageBanner();
	scrollToDiv();
	selectDis();
	StickyMenu();
	ClickMenuMobile();
	clickSearchForm();
	checkScrollDatPhong();
	binhLuan();
	clickMenuScroll();
	disablePagination();
	adjustProductAmount();
	checkLayoutBanner();
	$(document).on("scroll", function () {
		scrollTopTool();
	});
	clickToTop();
	InsertBody();
	phantrang();
	MovePagination();
	CheckMenuSubMB();
	hiddenBanneCt();
	insertPlaceHolder();
	AppendAttr();
	EditLinkBt();
	$(document).on("click", ".cmreply", function () {
		// $(this).closest(".cmt-item").find(".cmteditarea").addClass("active");
	});
	setTimeout(() => {
		if ($(".cmt-item").length <= 4) {
			$(".wrap-button-comment").addClass("hidden");
		}
	}, 500);
	// bình luận
	setTimeout(() => {
		let totalHeight = 0;
		$(".cmt-item").each(function (i) {
			if (i < 4) {
				totalHeight += $(this).outerHeight();
			}
			$(".show-comment .journalItems").css("min-height", totalHeight);
		});
	}, 500);
	// Hidden
	if (
		$(".page-uu-dai-product").length == 1 ||
		$(".product-detail-page").length == 1
	) {
		$("#page-banner").hide();
	}
	$("#ctl00_mdl219_ctl00_subscribe1_btnSubscribe").text("Gửi");
	$("#ctl00_mdl219_ctl00_subscribe1_txtEmail").attr(
		"placeholder",
		"Địa chỉ email..."
	);
	paginationAppendTo();
	datePicker();
	scrollActiveGt();
	mappingMenu();
	$("[data-fancybox]").fancybox({
		thumbs: {
			autoStart: true,
		},
		touch: false,
	});
	$("#modal-home").fancybox().trigger("click");
	setTimeout(() => {
		TransBinhLuan();
	}, 1500);
	if ($("#modal-360-new").length == 1) {
		EditImage360();
	}
	$("[data-fancybox]").on("click", function () {
		let imageUrl = $(".home-5 .box-img-wrap .img-big .div-img-360").attr(
			"image-360"
		);
		var tabView = pannellum.viewer("tab1", {
			type: "equirectangular",
			panorama: imageUrl,
			autoLoad: true,
		});
		$("#modal-360-new").removeClass("visual-hidden");
	});
});
