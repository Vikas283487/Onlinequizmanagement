<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card mt-3">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4 class="Registration">Registration</h4>
					</div>
					<div class="card-body">
						<form>
							<div class="form-group">
								<label>Enter Full Name</label> <input type="name"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="nameHelp"> <small id="name"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label>Enter E-Mail</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<div class="col-auto my-1">
									<label class="mr-sm-2" for="inlineFormCustomSelect">Register
										As</label> <select class="custom-select mr-sm-2"
										id="inlineFormCustomSelect">
										<option selected>Choose...</option>
										<option value="1">Teacher</option>
										<option value="2">Student</option>

									</select>
								</div>
								<div class="col-auto my-1">
									<div class="custom-control custom-checkbox mr-sm-2">
										<input type="checkbox" class="custom-control-input"
											id="customControlAutosizing"> <label
											class="custom-control-label" for="customControlAutosizing">Remember
											my preference</label>
									</div>
								</div>
								<div class="form-group">
									<label>Enter Password</label> <input type="password"
										class="form-control" id="exampleInputPassword1">
								</div>
								<button type="submit" class="btn btn-primary" value="register">Register</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>