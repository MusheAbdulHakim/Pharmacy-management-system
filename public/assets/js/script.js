$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
});

(function($) {
    "use strict";
	
	// Variables declarations
	
	var $wrapper = $('.main-wrapper');
	var $pageWrapper = $('.page-wrapper');
	var $slimScrolls = $('.slimscroll');

	// alert
	$("div.alert").delay(3000).slideUp(750);
	
	// Sidebar
	var Sidemenu = function() {
		this.$menuItem = $('#sidebar-menu a');
	};
	// select2
	$('.select2').select2({
		placeholder: 'Select an option'
	});
		
	function init() {
		var $this = Sidemenu;
		$('#sidebar-menu a').on('click', function(e) {
			if($(this).parent().hasClass('submenu')) {
				e.preventDefault();
			}
			if(!$(this).hasClass('subdrop')) {
				$('ul', $(this).parents('ul:first')).slideUp(350);
				$('a', $(this).parents('ul:first')).removeClass('subdrop');
				$(this).next('ul').slideDown(350);
				$(this).addClass('subdrop');
			} else if($(this).hasClass('subdrop')) {
				$(this).removeClass('subdrop');
				$(this).next('ul').slideUp(350);
			}
		});
		$('#sidebar-menu ul li.submenu a.active').parents('li:last').children('a:first').addClass('active').trigger('click');
	}
	
	// Sidebar Initiate
	init();
	
	// Mobile menu sidebar overlay
	
	$('body').append('<div class="sidebar-overlay"></div>');
	$(document).on('click', '#mobile_btn', function() {
		$wrapper.toggleClass('slide-nav');
		$('.sidebar-overlay').toggleClass('opened');
		$('html').addClass('menu-opened');
		return false;
	});
	
	// Sidebar overlay
	
	$(".sidebar-overlay").on("click", function () {
		$wrapper.removeClass('slide-nav');
		$(".sidebar-overlay").removeClass("opened");
		$('html').removeClass('menu-opened');
	});
	
	// Page Content Height
	
	if($('.page-wrapper').length > 0 ){
		var height = $(window).height();	
		$(".page-wrapper").css("min-height", height);
	}
	
	// Page Content Height Resize
	
	$(window).resize(function(){
		if($('.page-wrapper').length > 0 ){
			var height = $(window).height();
			$(".page-wrapper").css("min-height", height);
		}
	});
	
	
	
	// Datetimepicker
	
	if($('.datetimepicker').length > 0 ){
		$('.datetimepicker').datetimepicker({
			format: 'DD/MM/YYYY',
			icons: {
				up: "fa fa-angle-up",
				down: "fa fa-angle-down",
				next: 'fa fa-angle-right',
				previous: 'fa fa-angle-left'
			}
		});
		$('.datetimepicker').on('dp.show',function() {
			$(this).closest('.table-responsive').removeClass('table-responsive').addClass('temp');
		}).on('dp.hide',function() {
			$(this).closest('.temp').addClass('table-responsive').removeClass('temp')
		});
	}

	// Tooltip
	
	if($('[data-toggle="tooltip"]').length > 0 ){
		$('[data-toggle="tooltip"]').tooltip();
	}
	
   
	
	// Email Inbox

	if($('.clickable-row').length > 0 ){
		$(document).on('click', '.clickable-row', function() {
			window.location = $(this).data("href");
		});
	}

	// Check all email
	
	$(document).on('click', '#check_all', function() {
		$('.checkmail').click();
		return false;
	});
	if($('.checkmail').length > 0) {
		$('.checkmail').each(function() {
			$(this).on('click', function() {
				if($(this).closest('tr').hasClass('checked')) {
					$(this).closest('tr').removeClass('checked');
				} else {
					$(this).closest('tr').addClass('checked');
				}
			});
		});
	}
	
	// Mail important
	
	$(document).on('click', '.mail-important', function() {
		$(this).find('i.fa').toggleClass('fa-star').toggleClass('fa-star-o');
	});
	
	
	
    // Product thumb images

    if ($('.proimage-thumb li a').length > 0) {
        var full_image = $(this).attr("href");
        $(".proimage-thumb li a").click(function() {
            full_image = $(this).attr("href");
            $(".pro-image img").attr("src", full_image);
            $(".pro-image img").parent().attr("href", full_image);
            return false;
        });
    }

    // Lightgallery

    if ($('#pro_popup').length > 0) {
        $('#pro_popup').lightGallery({
            thumbnail: true,
            selector: 'a'
        });
    }
	
	// Sidebar Slimscroll

	if($slimScrolls.length > 0) {
		$slimScrolls.slimScroll({
			height: 'auto',
			width: '100%',
			position: 'right',
			size: '7px',
			color: '#ccc',
			allowPageScroll: false,
			wheelStep: 10,
			touchScrollStep: 100
		});
		var wHeight = $(window).height() - 60;
		$slimScrolls.height(wHeight);
		$('.sidebar .slimScrollDiv').height(wHeight);
		$(window).resize(function() {
			var rHeight = $(window).height() - 60;
			$slimScrolls.height(rHeight);
			$('.sidebar .slimScrollDiv').height(rHeight);
		});
	}
	
	// Small Sidebar

	$(document).on('click', '#toggle_btn', function() {
		if($('body').hasClass('mini-sidebar')) {
			$('body').removeClass('mini-sidebar');
			$('.subdrop + ul').slideDown();
		} else {
			$('body').addClass('mini-sidebar');
			$('.subdrop + ul').slideUp();
		}
		setTimeout(function(){ 
			mA.redraw();
			mL.redraw();
		}, 300);
		return false;
	});
	$(document).on('mouseover', function(e) {
		e.stopPropagation();
		if($('body').hasClass('mini-sidebar') && $('#toggle_btn').is(':visible')) {
			var targ = $(e.target).closest('.sidebar').length;
			if(targ) {
				$('body').addClass('expand-menu');
				$('.subdrop + ul').slideDown();
			} else {
				$('body').removeClass('expand-menu');
				$('.subdrop + ul').slideUp();
			}
			return false;
		}
	});
	
	

	$(document).ready(function(){
		
		// delete confirmation modal
		$('.deletebtn').on('click',function (){
			event.preventDefault();
			jQuery.noConflict();
			$('#deleteConfirmModal').modal('show');
			var id = $(this).data('id');
			console.log(id);
			$('#delete_id').val(id);
		});
		
		
	});
		
})(jQuery);