<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Main Page</title>
<link href="_css/Frontpage.css" rel="stylesheet" type="text/css" />
<link href="_css/FrontPageFooter.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
   function initAll(){
        window.location="Student/SignUp.jsp?content=none";
    }
</script>
</head>
<body  >
    <div class ="myheader">
       
             <div class="logo" > <h1>
			<a href="index.jsp">Job Portal<br />
			<small >where you get your dream job...</small></a>
	  </h1></div>

           <pre class="menu"> <h1> <a href="index.jsp" >Home Page</a>     <a href="Student/SignUp.jsp?content=none" >Sign Up</a>  <a href="AboutUs.jsp" >About Us</a>  <a href="ContactUs.jsp" >Contact Us</a>  </h1></pre>
</div>
    <div class="mainContent">
       <!--  <div class ="imgcss" > -->
           <!--  <img src ="_images/index.jpg" alt="Home"/> -->
       <!--  </div> -->
        <div class="divtableclass" align="center">

		<form id="login" action="CheckId" method="POST" >
		<h1 align="center">Login as</h1>
	                 
  <pre><input type="radio" name="grp1" value="Student" checked="checked">Student  <input type="radio" name="grp1" value="College">College  <input type="radio" name="grp1" value="Company">Company
		</pre>
		<table  class="tb" >
	
		<tr>
		<th align="left">Reg ID:</th>
		<td><input type="text" name="regId" ></td></tr>
		<tr >
		<th align="left" style="padding-top:30px">Password:</th>
		<td style="padding-top:30px"><input type="password" name="password"></td>
		</tr>
		<tr>
		<th style="padding-top:30px"><input type="Submit" value="Sign In" class="signup_btn" ></th>       
		<td style="padding-top:30px;padding-left:50px;"><input type="button" value="Student Sign Up" name="sreg" class="signup_btn" onclick="initAll()"/>
           </td></tr>     </form>
		
</table>
        </div>
    </div>
    <div class ="footer">

    </div>
</body>
</html>
