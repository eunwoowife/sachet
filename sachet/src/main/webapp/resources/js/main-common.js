(function($) {
	$(document).ready(function () {

		// main menu
        $('.headerWrap .gnbList>li').on('mouseenter', function () {
            $('.headerWrap, .overlayBg').addClass('active');
            $('.headerWrap .gnbList>li').removeClass('hover').find('div').removeAttr('style');
            $(this).addClass('hover').find('div').show();
        });
        $('.headerWrap').on({
            'mouseleave': function () {
                $('.headerWrap, .overlayBg').removeClass('active');
                $('.headerWrap .gnbList>li').removeClass('hover').find('div').removeAttr('style');
            }
        });
		$('.headerWrap .gnbList>li>a').on('focus', function () {
			$('.headerWrap, .overlayBg').addClass('active');
            $('.headerWrap .gnbList>li').removeClass('hover').find('div').removeAttr('style');
            $(this).siblings('div').show();
            $(this).parent('li').addClass('hover');
		});
		$('.navSearch').on('focus', function () {
			$('#header, .headerWrap, .overlayBg').removeClass('active');
            $('.headerWrap .gnbList>li').find('div').removeAttr('style');
		});
		$(document).find(':focusable').focus(function (e) {
			if ($('.gnbList').has(e.target).length === 0) {
				$('#header, .headerWrap, .overlayBg').removeClass('active');
                $('.headerWrap .gnbList>li').removeClass('hover').find('div').removeAttr('style');
			}
		});

		$('.totalMenu').on('click', function () {
			$('#header, .gnbList, .overlayBg').addClass('active');
			$('.gnbList').off('mouseleave');
			$('.gnbList>li:first-child>a').focus();
		});
		$('.totalClose').on('click', function () {
			$('#header, .gnbList, .overlayBg').removeClass('active');
			$('.gnbList').on({
				'mouseleave': function () {
					$('.gnbList, .overlayBg').removeClass('active');
				}
			});
		});

		// mobile Menu
		$('#moMenu .gnbList>li>a').click(function () {
			$(this).find('.iconPlus').toggleClass('active');
			$(this).siblings('.subMenu').slideToggle();
			return false;
		});
		$('#moMenu .subMenu>ul>li').each(function () {
			if ($(this).children().is('div')) {
				$(this).children('a').click(function () {
					$(this).find('.iconPlus').toggleClass('active');
					$(this).siblings('div').slideToggle();
					return false;
				});
			}
		});
		$('.moTrigger').on('click', function () {
			$('body').addClass('open');
		});
		$('.moSearch').on('focus', function () {
			$('body').removeClass('open');
		});
		$('.moSearch').on('click', function() {
			var seView = $('.moSearchForm').css('display');
			if(seView !== 'block') {
				$('.moSearchForm').show();
			} else {
				$('.moSearchForm').hide();
			}
		});
		$(document).find(':focusable').focus(function (e) {
			if ($('.open #moMenu').has(e.target).length === 0) {
				$('body').removeClass('open');
			}
		});

		// mobile Menu Icon
		$.fn.mobileIcon = function () {
			//1depth plusIcon
			$('.gnbList>li').each(function () {
				var gnbLenth = $(this).find('.subMenu').length;
				if (gnbLenth > 0) {
					$(this).children('a').append('<span class="iconPlus"></span>');
				}
			});
			//2depth plusIcon
			$('.subMenu>ul>li').each(function () {
				if ($(this).children().is('div')) {
					$(this).children('a').append('<span class="iconPlus"></span>');
				}
			});
		}
		$.fn.mobileIcon();

		$('.gnbClose').on('click', function () {
			$('body').removeClass('open');
		});
		$('.overlayBg').on('click', function () {
			$('body').removeClass('open');
			$('#header, .gnbList, .overlayBg').removeClass('active');
			$('.gnbList').on({
				'mouseleave': function () {
					$('.gnbList, .overlayBg').removeClass('active');
				}
			});
		});

		var width = $(window).width();
		$(window).resize(function () {
			if ($(window).width() != width) {
				width = $(window).width();
				$('body').removeClass('open');
				$('.subMenu, .subMenu div').removeAttr('style');
				$('.iconPlus').removeClass('active');
			}
		});


		var option = {
			ellipsis: '...',
			wrap: 'word',
			fallbackToLetter: true,
			after: null,
			watch: true,
			tolerance: 0
		};
		$('.dottxt').dotdotdot(option);
		$(window).resize(function (e) {
			$('.dottxt').trigger('update.dot');
		});

		/* 온라인 전시 스크립트 */
		/*
		var topPoint;
		$('.slickView .topSlide').on('init', function(event, slick) {
			topPoint = $('.slickView .topSlide').offset().top;
		});
		*/
		$('.slickView .topSlide').slick({
			infinite: false,
			//lazyLoad: 'ondemand',
			slidesToShow: 1,
			slidesToScroll: 1,
			fade: true,
			asNavFor: '.botSlide',
			adaptiveHeight: true
		});
		$('.slickView .botSlide').slick({
			infinite: false,
			//lazyLoad: 'ondemand',
			slidesToShow: 5,
			slidesToScroll: 1,
			asNavFor: '.topSlide',
			arrows: true,
			dots: false,
			focusOnSelect: true,
			responsive: [
				{
				  breakpoint: 960,
				  settings: {
					slidesToShow: 3,
					arrows: false
				  }
				},
				{
				  breakpoint: 640,
				  settings: {
					slidesToShow: 2,
					arrows: false
				  }
				}
			]
		});
		$('.slickView .topSlide').on('lazyLoaded', function(event, slick, image, imageSource){
			$('.slickView .topSlide').slick('setPosition');
			$('.slickView .botSlide').slick('setPosition');
		});
		/*
		$('.slickView .topSlide').on('afterChange', function(slick, currentSlide){
			$('html,body').animate({scrollTop:topPoint}, '500');
		});
		*/
		/* //온라인 전시 스크립트 */
		// topBtn
		$(document).on('click', '.btnTop', function () {
			$('html, body').animate({
				scrollTop: 0
			}, 600);
		});
		$(window).scroll(function () {
			if ($(this).scrollTop() > 90) {
				$('.btnTop').addClass('on');
			} else {
				$('.btnTop').removeClass('on');
			}
		});
        // faqList
        $('.faqList').find('a').on('click', function () {
            $(this).parent().next('div').slideToggle();
        });

	});
})(jQuery);


// ------------
// 팝업창
// ------------
function notice_getCookie(name)
{
	var nameOfCookie = name + "=";
	var x = 0;
	while( x <= document.cookie.length )
	{
		var y = (x+nameOfCookie.length);
		if( document.cookie.substring( x, y ) == nameOfCookie )
		{
			if( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
			{
				endOfCookie = document.cookie.length;
			}
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
		{
			break;
		}
	}
	return "";
}
function notice_setCookie(name, value, expiredays)
{
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays );
    document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toGMTString() + ';'
}
function notice_layer_closeWin(frm)
{
    var popfrm = eval("document.popfrm_"+frm);
    if ( popfrm.Notice1.checked )
    notice_setCookie(frm, 'done', 2); // 1 = 하룻동안 공지창 열지 않음
    document.getElementById(frm).style.display = 'none'
}
