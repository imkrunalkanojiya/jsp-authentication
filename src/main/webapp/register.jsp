<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://unpkg.com/@tailwindcss/browser@4"></script>
</head>
<body>
	<jsp:include page="header.jsp" />

	<section
		class="bg-gray-50 dark:bg-gray-900 h-screen flex items-center justify-center">
		<div class="flex justify-center items-center">
			<div
				class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:max-w-2xl xl:p-0 dark:bg-gray-800 dark:border-gray-700">
				<div class="p-6 space-y-4 md:space-y-6 sm:p-8">
					<h1
						class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
						Create an account</h1>
					<form id="register-user" class="space-y-4 md:space-y-6" method="post">
						<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
							<div>
								<label for="first-name"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">First
									Name</label> <input type="text" name="first-name" id="first-name"
									class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
									placeholder="John" required>
							</div>
							<div>
								<label for="last-name"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Last
									Name</label> <input type="text" name="last-name" id="last-name"
									class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
									placeholder="Doe" required>
							</div>
							<div>
								<label for="email"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Email</label>
								<input type="email" name="email" id="email"
									class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
									placeholder="name@company.com" required>
							</div>
							<div>
								<label for="mobile"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Mobile</label>
								<input type="text" name="mobile" id="mobile"
									class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
									placeholder="1234567890" required>
							</div>
						</div>
						<div>
							<label for="address"
								class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Address</label>
							<textarea name="address" id="address" rows="3"
								class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
								placeholder="Your address" required></textarea>
						</div>
						<div>
							<span
								class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Gender</span>
							<div class="flex gap-3">
								<div class="flex items-center">
									<input id="male" type="radio" name="gender" value="male"
										class="w-4 h-4 text-primary-600 border-gray-300 focus:ring-primary-600 dark:focus:ring-primary-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800"
										required> <label for="male"
										class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Male</label>
								</div>
								<div class="flex items-center">
									<input id="female" type="radio" name="gender" value="female"
										class="w-4 h-4 text-primary-600 border-gray-300 focus:ring-primary-600 dark:focus:ring-primary-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800"
										required> <label for="female"
										class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Female</label>
								</div>
							</div>
						</div>
						<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
							<div>
								<label for="password"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
								<input type="password" name="password" id="password"
									placeholder="Your Password"
									class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
									required>
							</div>
							<div>
								<label for="confirm-password"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirm
									Password</label> <input type="password" name="confirm-password"
									id="confirm-password" placeholder="Confirm your Password"
									class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
									required>
							</div>
							<span id="passwordError"></span><br>
						</div>
						<button type="submit"
							class="w-full text-white bg-blue-500 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Create
							an account</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<script>
		$(document).ready(function() {

			$("register-user").submit(function(event) {

				event.preventDefault();

				let password = $("password").val();
				let confirmPassword = $("confirm-password").val();

				// Password validation
				if (password !== confirmPassword) {
					$("#passwordError").html("Passwords do not match");
					return false;
				} else {
					$("#passwordError").html(""); // Clear error message
				}

				// Register User via AJAX
				
				$.ajax({
					
					type:"POST",
					url:"register",
					data:$(this).serialize(),
					success:function(response){
						
						/* if(response === "success"){
							
							alert("Registration Successful!");
						
						}else if(response === "emailExists"){
							
							alert("Email Already Exists");
							
						}else{
							
							alert("Error " + response);
							
						} */
						
						console.log(response)
						
					},
					error:function(error){
						
						alert("Error while processing the request.")
						
					}
					
				})
			})

		})
	</script>
</body>
</html>