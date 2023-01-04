var rollingTime = true;
$(document).ready(function () {
    $('#fullpage').fullpage({
        navigation: false,
        menu: "#pageNav",
        anchors: ['homePage', 'firstPage', 'secondPage', '3rdPage', '4rdPage', '5rdPage'],
        normalScrollElements: '.screeningList',
        css3: true,
        verticalCentered: true,
        sectionsColor: ['#f8f7f7', '#003257', '#f7f7f7'],
        responsiveWidth: 1270,
        responsiveHeight: 791,
        afterResponsive: function (isResponsive) {
            if (isResponsive != true) {
                // 슬라이드 상태임
                $('body').removeClass('resFalse');

            } else {
                // 슬라이드 아님
                $('body').addClass('resFalse');
            }
        },
        onLeave: function (index, nextIndex, direction) {
            var popup = $('.layerPopup');
            var cookiedata = document.cookie;
            if (popup.length != 0) {
                if (nextIndex != 1) {
                    $('body').removeClass('layerOpen');
                } else {
                    if (!$('body').hasClass('layerClose')) {
                        if (cookiedata.indexOf("close=Y") < 0) {
                            $('body').addClass('layerOpen');
                        } else {
                            $('body').removeClass('layerOpen');
                        }
                    }
                }
            }
        },
		afterLoad: function(origin, destination, direction){
			/*
			if(rollingTime) {
				var visualRolling = setInterval(function() {
					if($('.mainSection').is(':hidden')) {
						$('.mainPager').find('button.next').click();
					} else {
						clearInterval(visualRolling);
						rollingTime = false;
					}
				}, 5000);
			}
			*/
		},
        paddingTop: '88px'
    });

    var $btnPager = $('.mainPager').find('button');
	$('.mainTop:first-child').show();
	var mainCount = 0;
    $btnPager.on('click',function(){
		var count = $('.mainTop').length;
		if($(this).hasClass('next')) {
			mainCount = mainCount + 1;
			if(mainCount >= count) {
				mainCount = 0;
			}
		} else {
			mainCount = mainCount - 1;
			if(mainCount < 0) {
				mainCount = count - 1;
			}
		}
		$('.mainTop').hide();
		$('.mainTop').eq(mainCount).fadeIn();
		$('.slider').slick('refresh');
    });
	if(!$('.mainSection').is(':hidden')) {clearInterval(visualRolling);rollingTime = false;}
    $('.mainFor .slider').on('init', function(event,slick){
        var $target = $(this).find('.item:first-child');
        var iframe = $target.find('iframe');
        var iframeSrc = iframe.data('ssrc');
        iframe.attr('src',iframeSrc);
    });
    $('.mainFor .slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: false,
        arrows: false,
        fade: true,
        asNavFor: '.mainNav .slider'
    });
    $('.mainFor .slider').on('beforeChange', function(event, slick, currentSlide, nextSlide){
		$('.mainFor iframe').removeAttr('src');
        var nextPanel = $('.mainFor .slider [data-slick-index=' + nextSlide + ']');
        var iframe = nextPanel.find('iframe');
        var iframeSrc = iframe.data('ssrc');
		if(iframe.attr('src') == undefined) {
	        iframe.attr('src',iframeSrc);
		}
    });
    $('.mainNav .slider').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        vertical: true,
        dots: false,
        arrows: true,
        prevArrow: $('.mainNav .prev'),
        nextArrow: $('.mainNav .next'),
        asNavFor: '.mainFor .slider',
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    vertical: false,
                    dots: true,
                    arrows: false
                }
            }
        ]
    });
	var mainNavSlide = $('.mainNav .slider');
	if(mainNavSlide.find('.item').length <= 3) {
		$('.mainNav .pager').hide();
	}
	$('.mainNav a').on('click', function() {
		$(".mainFor iframe").each(function() {
			$(this)[0].contentWindow.postMessage('{"event":"command","func":"' + 'stopVideo' + '","args":""}', '*');
		});
	});
    /* $('.mainSlide>ul').slick({
        autoplay: true,
		autoplaySpeed:3000,
        dots: true,
        infinite: true,
        fade: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: true,
                    prevArrow: $('.mainPager .prev'),
                    nextArrow: $('.mainPager .next')
                }
            }
        ]
    });*/


    // 경쟁작 프로그램안내
    $('.screeningList').find('li:first').addClass('active');

    $.fn.poster = function () {
        var listActive = $('.screeningList').find('li.active>a');
        var posterAlt = listActive.find('p').text();
        var posterLink = listActive.attr('href');
        var posterPcView = listActive.data('src');
        var posterMoView = listActive.data('srcset');
        var linkClone = listActive.html();
        $('.posterBox .posterPcView').attr('src', posterPcView).attr('alt', posterAlt);
        $('.posterBox .posterMoView').attr('srcset', posterMoView);
        $('.posterTxt').append('<a href="'+ posterLink +'">'+ linkClone +'</a>');
    }
    $.fn.poster();

    $('.screeningList a').on({
        'click': function (e) {
            e.preventDefault();
            $('.screeningList>ul>li').not(this).removeClass('active');
            $(this).parent('li').addClass('active');
            $('.poster').find('.posterTxt').empty();
            $.fn.poster();
        }
    });

    $('.eventSlide').slick({
        autoplay: false,
        dots: false,
        infinite: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: false
    });

    $('.sponList').slick({
        autoplay: false,
        dots: false,
        infinite: false,
        slidesToShow: 6,
        slidesToScroll: 5,
        prevArrow: $('.sponControl .prev'),
        nextArrow: $('.sponControl .next'),
        centerMode: false
    });

    $(window).on('resize orientationchange', function () {
        $('.slick-slider').slick('resize');
    });


    // board Mobile tabMenu
    $('.tabBtn a').on('click', function () {
        $(this).parent('li').siblings().removeClass('active');
        $(this).parent('li').addClass('active');

        var tabId = $(this).data('tab');
        $('#' + tabId).siblings('.tabCon').removeClass('active');
        $('#' + tabId).addClass('active');
    });


});

$(window).load(function () {
    $('#wrap').addClass('loding');
	if(rollingTime) {
		var visualRolling = setInterval(function() {
			if($('.mainSection').is(':hidden')) {
				$('.mainPager').find('button.next').click();
			} else {
				clearInterval(visualRolling);
				rollingTime = false;
			}
		}, 5000);
	}
	if(!$('.mainSection').is(':hidden')) {clearInterval(visualRolling);rollingTime = false;}
});
