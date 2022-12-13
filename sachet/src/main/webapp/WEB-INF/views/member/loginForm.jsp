<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Form UI Validation Animation</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

</head>
<style>
    body,
html {
  height: 100%;
}

body {
  font-family: "Lato", sans-serif;
  display: flex;
  align-items: center;
  flex-direction: column;
  align-content: center;
  justify-content: center;
  color: white;
}

.container {
  width: 400px;
}

form {
  display: flex;
  flex-direction: column;
  background: transparent;
  max-width: 320px;
  padding: 2rem 2rem 2rem 2rem;
  position: relative;
}
form::before, form::after {
  position: absolute;
  content: "";
  width: 100%;
  height: 100%;
  transition: all 0.5s ease;
}
form::before {
  z-index: -1;
  background: transparent;
  -webkit-transform: translateX(-3.5rem) translateY(-3.75rem);
          transform: translateX(-3.5rem) translateY(-3.75rem);
  border: 6px solid #525252;
}
form::after {
  background: #bad1f0;
  z-index: -2;
  -webkit-transform: translateX(-2rem) translateY(-2.25rem);
          transform: translateX(-2rem) translateY(-2.25rem);
}
form h1 {
  text-align: center;
  margin: 0 0 0.25rem 0;
  padding: 0;
  font-size: 1.5rem;
}
form small {
  display: block;
  margin: 0 auto 1rem;
  padding: 0;
  font-size: 14px;
}
form:focus-within {
  background: #bad1f0;
}
form:focus-within::before {
  width: 0%;
  height: 0%;
  -webkit-transform: translatex(0px) translatey(0px);
          transform: translatex(0px) translatey(0px);
}
form .field {
  display: flex;
  flex-flow: column-reverse;
  margin-bottom: 1em;
}
form label,
form input {
  transition: all 0.3s ease;
  touch-action: manipulation;
}
form label {
  opacity: 0;
}
form input[type="text"] {
  padding: 10px 20px;
  border: 4px solid white;
  margin: 0 1.5rem;
  background-color: transparent !important;
  -webkit-appearance: none;
  color: white;
}
form input[type="password"] {
  padding: 10px 20px;
  border: 4px solid white;
  margin: 0 1.5rem;
  background-color: transparent !important;
  -webkit-appearance: none;
  color: white;
}
form input:-webkit-autofill {
  background-color: transparent !important;
  -webkit-box-shadow: 0 0 0px 1000px #0ea8ec inset;
  -webkit-text-fill-color: white !important;
}
form input::-webkit-input-placeholder {
  color: white;
}
form input:-ms-input-placeholder {
  color: white;
}
form input::-ms-input-placeholder {
  color: white;
}
form input::placeholder {
  color: white;
}
form input:focus {
  color: #525252;
  font-weight: bold;
  outline: 0;
  border: 6px solid #525252;
}
form input::-webkit-input-placeholder {
  opacity: 1;
  transition: inherit;
}
form input:focus::-webkit-input-placeholder {
  opacity: 0;
}
form button {
  border: none;
  padding: 0.85rem 1rem;
  margin-top: 2rem;
  background-color: #525252;
  color: white;
  font-size: 0.75rem;
  text-transform: uppercase;
  width: 65%;
  position: absolute;
  bottom: -20px;
  right: 18%;
  letter-spacing: 0.15em;
  transition: all 0.3s ease;
}
form button:hover {
  border: 6px solid #090c9b;
}
form p {
  font-size: 0.75rem;
  line-height: 1.125rem;
  margin: 0.5rem 1.5rem 1.75rem 1.5rem;
}
form p.success-message {
  font-size: 1.25rem;
  text-align: center;
  line-height: 2rem;
  margin: 1.5rem auto 5rem auto;
}
</style>
<body>

  

<div class="siteTitle" align="center"></div>
<div class="container">
  <form action="login.me" method="POST">
  
  
  
  <img src="${pageContext.request.contextPath}/resources/images/scLOGO.png" alt="" width="200px;">
    <h1 id="message">　</h1><small id="smallMessage"> </small>
    <div class="field">
      <input type="text" name="userId" placeholder="ID" id="email" autocomplete="off"/>
      <label for="id">Email</label>
    </div>
    <div class="field">
      <input type="password" name="userPwd" placeholder="PASSWORD" id="password" autocomplete="new-password"/>
      <label for="password">Password</label>
    </div>
    <br>
    <button id="loginSubmit"><b>Login</b></button>
 
  <div>
    <a href="" style="margin-left:25px; text-decoration: none; font-size: 15px; color: rgba(255, 255, 255, 0.644);">아이디 찾기</a> | 
    <a href="" style="text-decoration: none; font-size: 15px; color: rgba(255, 255, 255, 0.644);">비밀번호 찾기</a> | 
    <a href="joinForm.me" style="text-decoration: none; font-size: 15px; color: rgba(255, 255, 255, 0.644);">회원가입</a>
    </div>
    <br><br>
  </form>
</div>


</body>





<script>
    const form = document.querySelector('form');
const message = document.getElementById('message');
const smallMessage = document.getElementById('smallMessage');
const emailMessage = 'Type your ID';
const passwordMessage = 'Type your Password';
const email = document.getElementById('email');
const password = document.getElementById('password');
const submitBtn = document.getElementById('submit');

function firstMessage(){
	message.innerHTML = emailMessage;
	smallMessage.innerHTML = "";
	document.body.style.background= '#88C9E8';
}

// function message(el,message,color){
// 	el.innerHTML = message;
// 	document.body.style.background = color;
// }

function secondMessage(){
	message.innerHTML = passwordMessage;
	
	document.body.style.background ='#D5F3A6';
}


function formValidation(){
	//step 1 email
	//display Type your email when user clicks on input and types, 
	//hide after user clicks on something else
	email.addEventListener("input",firstMessage);
	//step 2 password 
	//display Choose your password as user clicks on input
	//change small message as user enters longer password 
	password.addEventListener('input', secondMessage);
	password.addEventListener('keyup', length);

	//step 3 when input 1 and 2 are filled out 
	//display message You're a click away, small message that is why you are here fore
	submitBtn.addEventListener('mouseover', function(event){
		message.innerHTML="Login";
		document.body.style.background = '#FCEFA6';
	});
	
	//step 4 button click
	//display Congratulations, there is a confirmation link in your email
	submitBtn.addEventListener('click', function(event){
	form.innerHTML = ' <h1>Good job!</h1><p class="success-message">There is a confirmation link waiting in your email inbox.</p>';
	document.body.style.background = '#D7F5DE';
});
	
	
}

formValidation();


</script>
</html>