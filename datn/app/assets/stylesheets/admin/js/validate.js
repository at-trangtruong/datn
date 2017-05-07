$(document).ready(function() {
	$("#frmform").validate({
		ignore: [], 
		debug: false,
		rules: {
			"tentin": {
				required: true,
			},
			"danhmuc": {
				required: true,
			},
			"mota": {
				required: true,
			},
			"cktext":{ 
				required: function() 
				{
					CKEDITOR.instances.cktext.updateElement(); 
				}, 
				minlength:1,
			}
		},
		messages: {
			"tentin": {
				required: "Vui lòng nhập Tên tin",
			},
			"danhmuc": {
				required: "Vui lòng nhập Tên tin",
			},
			"mota": {
				required: "Vui lòng nhập Mô tả",
			},
			"cktext":{ 
				required:"Vui lòng nhập vào khung này", 
				minlength:"Bạn không được để trống khung này",
			} 
		}
	});

});	

$(document).ready(function() {
	$("#addCat").validate({
		ignore: [], 
		debug: false,
		rules: {
			"ten": {
				required: true,
			}
		},
		messages: {
			"ten": {
				required: "Vui lòng nhập vào đây",
			}
		}
	});
});	

$(document).ready(function() {
	$("#addUser").validate({
		ignore: [], 
		debug: false,
		rules: {
			"username": {
				required: true,
				minlength: 5,
			},
			"password": {
				required: true,
				minlength: 6,
			},
			"re_password": {
				required: true,
				equalTo: "#password",
			},
			"fullname": {
				required: true,
			},
		},
		messages: {
			"username": {
				required: "Vui lòng nhập vào đây",
				minlength: "Phải có ít nhất 5 ký tự",
			},
			"password": {
				required: "Vui lòng nhập vào đây",
				minlength: "Phải có ít nhất 6 ký tự",
			},
			"re_password": {
				required: "Vui lòng nhập vào đây",
				equalTo: "Phải trùng khớp với mật khẩu ở trên",
			},
			"fullname": {
				required: "Vui lòng nhập vào đây",
			},
		}
	});
});	

$(document).ready(function() {
	$("#editUser").validate({
		ignore: [], 
		debug: false,
		rules: {
			"username": {
				required: true,
				minlength: 5,
			},
			"password": {
				minlength: 6,
			},
			"re_password": {
				equalTo: "#password",
			},
			"fullname": {
				required: true,
			},
		},
		messages: {
			"username": {
				required: "Vui lòng nhập vào đây",
				minlength: "Phải có ít nhất 5 ký tự",
			},
			"password": {
				minlength: "Phải có ít nhất 6 ký tự",
			},
			"re_password": {
				equalTo: "Phải trùng khớp với mật khẩu ở trên",
			},
			"fullname": {
				required: "Vui lòng nhập vào đây",
			},
		}
	});
});	

$(document).ready(function() {
	$("#formdanhngon").validate({
		ignore: [], 
		debug: false,
		rules: {
			"noidung": {
				required: true,
				minlength: 6,
			},
			"tacgia": {
				required: true,
				minlength: 6,
			},
		},
		messages: {
			"noidung": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
			"tacgia": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
		}
	});
});	

$(document).ready(function() {
	$("#formduan").validate({
		ignore: [], 
		debug: false,
		rules: {
			"ten": {
				required: true,
				minlength: 6,
			},
			"link": {
				required: true,
				minlength: 6,
			},
			"mota": {
				required: true,
				minlength: 6,
			},
		},
		messages: {
			"ten": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
			"link": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
			"mota": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
		}
	});
});	

$(document).ready(function() {
	$("#formaboutme").validate({
		ignore: [], 
		debug: false,
		rules: {
			"ten": {
				required: true,
				minlength: 6,
			},
			"cktext": {
				required: true,
				minlength: 6,
			},
		},
		messages: {
			"ten": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
			"cktext": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
		}
	});
});	

$(document).ready(function() {
	$("#formquangcao").validate({
		ignore: [], 
		debug: false,
		rules: {
			"quangcao": {
				required: true,
				minlength: 6,
			},
			"linkqc": {
				required: true,
				minlength: 6,
			},
		},
		messages: {
			"quangcao": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
			"linkqc": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
		}
	});
});	

$(document).ready(function() {
	$("#formslider").validate({
		ignore: [], 
		debug: false,
		rules: {
			"slider": {
				required: true,
				minlength: 6,
			},
			"linksl": {
				required: true,
				minlength: 6,
			},
			"mota": {
				required: true,
				minlength: 6,
			},
		},
		messages: {
			"slider": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
			"linksl": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
			"mota": {
				required: "Vui lòng nhập vào đây",
				minlength: "Số kí tự tối thiểu là 6",
			},
		}
	});
});	