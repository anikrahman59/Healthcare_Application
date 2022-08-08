<!doctype html>
<html lang="en">
  <head>
  	<title>Sign Up</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
    <link rel="stylesheet" href="{{asset('css/clientRegistration.css')}}">

	</head>
	<body>
    <form action="{{route('clientRegistration')}}" class="form-group" method="post">
    {{csrf_field()}}

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section"> </h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-10">

@if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif                
					<div class="wrap d-md-flex">
                    <div class="text-wrap p-4 p-lg-5 d-flex img d-flex align-items-end" style="background-image: url(../images/bg.jpg);">
							<div class="text w-100">
								<h2 class="mb-4">Welcome to signup form</h2>
								<p>Healthcare Pharmaceuticals Limited (HPL) is one of the best kinds of company in the pharmaceutical industry in Bangladesh</p>
							</div>
			      </div>
						<div class="login-wrap p-4 p-md-5">
	      			<h3 class="mb-3">Create an account</h3>
							<form action="#" class="signup-form">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
					      			<label class="label" for="name"> Name</label>
					      			<input type="text" name ="client_name" class="form-control" placeholder="Name">                           
					      		</div>

                                  <div class="row">
									<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
										<label class="label" for="email">Email</label>
										<input type="text" name ="client_email" class="form-control" placeholder="something@email.com">
					      		</div>

                                  <div class="row">
									<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
					      			<label class="label" for="password">Password</label>
					      			<input type="password" name ="client_password" class="form-control" placeholder="Password">
					      		</div>

								  <div class="row">
									<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
					      			<label class="label" for="confirmPassword">Confirm Password</label>
					      			<input type="password" name ="client_cpassword" class="form-control" placeholder="Retype your password">
					      		</div>

								  <div class="row">
									<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
					      			<label class="label" for="dob">Date of Birth</label>
					      			<input type="date" name ="client_dob" class="form-control">
					      		</div>

                                  <div class="row">
									<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
					      			<label class="label" for="name">Gender</label>
									  <input type="radio" name="client_gender"value="male">
                                      <label for="male">Male</label> &nbsp &nbsp &nbsp
                                      <input type="radio" name="client_gender"value="female">
                                      <label for="female">Female</label>
					      		</div>
									</div>

								<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
					      			<label class="label" for="bg">Blood Group</label>
					      			<input type="text" name ="client_bg" class="form-control" placeholder="Blood Group">
					      		</div>
									</div>

									<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
					      			<label class="label" for="phone">Phone number</label>
					      			<input type="text" name ="client_phone" class="form-control" placeholder="+880">
					      		</div>
									</div>
									<div class="col-md-12">
										<div class="form-group d-flex align-items-center">
				            	<label class="label" for="address">Address</label>
				              <input type="text" name ="client_address" class="form-control" placeholder="Your detail address">
				            </div>
									</div>
							
									<div class="col-md-12">
										<div class="form-group">
				            	<button type="submit" class="btn btn-secondary submit p-3">Create an account</button>
				            </div>
									</div>
								</div>

		          </form>
		          <div class="w-100 text-center">
								<p class="mt-4">I'm already a member! <a href="{{route('clientLogin')}}">Sign In</a></p>
		          </div>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
</form>

	</body>
</html>

