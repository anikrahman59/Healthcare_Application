<!doctype html>
<html lang="en">
  <head>
  	<title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="{{asset('css/client.css')}}">

	</head>
	<body>

    <form action="{{route('clientLogin')}}" class="form-group" method="post">
    {{csrf_field()}}

	<section class="ftco-section">
		<div class="container">
	
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">

@if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
@endif

@if(Session::has('msg'))
    <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('msg') }}</p>
@endif

					<div class="wrap">
						<div class="img" style="background-image: url(../images/hi.jpg);"></div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Sign In</h3>
			      		</div>
			      	</div>
							<form action="#" class="signin-form">
			      		<div class="form-group mt-3">
						  <input type="text" name="client_email" class="form-control rounded-left" placeholder="Email">
			      		</div>
		            <div class="form-group">
					<input type="password" name="client_password" class="form-control rounded-left" placeholder="Password">
		            </div>
		            <div class="form-group">
		            	<button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign In</button>
		            </div>
		            
		          </form>
		          <p class="text-center">Not a member? <a data-toggle="tab" href="{{route('clientRegistration')}}"><b>Sign Up</b></a></p>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

    </form>   
	</body>
</html>

