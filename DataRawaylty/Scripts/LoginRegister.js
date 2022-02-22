$('#btn-login').click(function () {
    let username = $('#input-loginuser').val();
    let password = $('#input-loginpass').val();
	if(username != '' && password != ''){
		$.ajax({
			url: '/Home/Login',
			method: 'get',
			data: {username: username, password: password},
			success:function (result) {
				if (result.res == 1) {
					window.location.href = '/Home/Home';
				} else {
					$('#p-loginalert').css('visibility','visible');
					$('#p-loginalert').text('Username or password is incorrect!');			
						}
			}   
		})
	} else {
alert('Please fill up all fields!');
	}
})

$('#btn-register').click(function () {
	let username = $('#input-registeruser').val();
	let password = $('#input-registerpass').val();

	if(username != '' && password != ''){
		$.ajax({
			url: '/Home/Register',
			method: 'post',
			data: {username: username, password: password},
			success:function (result) {
				$('#p-registeralert').css('visibility','visible');
				if (result.res == 1) {
					$('#p-registeralert').text('Registration succesful!');
					$('#input-registeruser,#input-registerpass').val('');
				} else if (result.res == 2) {
					$('#p-registeralert').text('Username already taken!');
					$('#input-registeruser,#input-registerpass').val('');
				} else {
					alert('Something went wrong: (');	
						}
				}
		})
	} else {
alert('Please fill up all fields!');
	}

	
})


