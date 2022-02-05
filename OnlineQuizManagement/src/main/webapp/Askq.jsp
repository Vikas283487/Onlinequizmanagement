
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ask Question Page</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-question-circle fa-4x" aria-hidden="true"></i>


						<h4 class="Login">Ask Question</h4>
					</div>
					<div class="card-body">
						<form>

							<div class="form-group">
								<h4>Ask Question</h4>
								<label>Name:</label><input name="name" class="contact_input"
									type="text">
							</div>

							<div class="form_row">
								<label>Email:</label><input name="email" class="contact_input"
									type="text">
							</div>

							<div class="form_row">
								<label>Phone:</label><input name="phone" class="contact_input"
									type="text">
							</div>

							<div class="form_row">
								<label>Question:</label>
								<textarea name="question" class="contact_textarea"></textarea>
							</div>

							<input type="submit" class="read_more" value="send" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>
