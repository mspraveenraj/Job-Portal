<%-- 
    Author     : Praveenraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="../_css/Company_Footer.css" rel="stylesheet" type="text/css" />
       <style type="text/css">
.txt{ width:100%;

}
 .lst{
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;	font-size: smaller;width: 100%;
}
.lst2{
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;	font-size: smaller;width: 60%;
}
.def{
	width:60%;

}
#checkbox {
	font-family: "Lucida Console", Monaco, monospace;
	position: absolute;
	left: 390px;
}
</style>
    </head>
    <body>
        <jsp:include page="Header.jsp" />
	<h1 align="center">Job Posting</h1>
        <form action="JobPosting.jsp" method="POST" >
        <table width="423" border="0" align="center">
        <!-- 
  <tr>
    <td width="211">CompanyID:</td>
    <td width="196"><input name="textfield" type="text" id="textfield" tabindex="3" size="25"  class="txt"/></td>
  </tr>
  -->
  <tr>
    <td>JobId:</td>
    <td><input name="jobid" type="text" id="jobid" tabindex="3" size="25"  class="txt"/></td>
  </tr>
  <tr>
    <td>Designation Post:</td>
    <td><input name="designation" type="text" id="designation" tabindex="3" size="25"  class="txt" /></td>
  </tr>
  <tr>
    <td>Package:</td>
    <td><select name="package" size="1" id="select" tabindex="4" class="lst">
      <option selected="selected">Select Package</option>
      <option>0-1 Lakh</option>
      <option>1-2 Lakh</option>
      <option>2-3 Lakh</option>
      <option>3-4 Lakh</option>
      <option>4-5 Lakh</option>
      <option>5-6 Lakh</option>
      <option>6-7 Lakh</option>
    </select></td>
  </tr>
  <tr>
    <td>Location:</td>
    <td><select name="location" size="1" id="select2" tabindex="4" class="lst">
      <option selected="selected">Select Location</option>
      <option>New Delhi</option>
      <option>Bangalore</option>
      <option>Pune</option>
      <option>Mumbai</option>
      <option>Chennai</option>
      <option>Hydrabad</option>
      <option>Kochin</option>
    </select></td>
  </tr>
  <tr>
  <td width="211">Last Date to Apply</td>
    <td width="196"><input name="lastdatetoapply" type="text" id="lastdatetoapply" tabindex="3" size="25"  class="txt"/></td>
  </tr>
<!-- 
      <tr>
        <td>Branch:</td>
        <td><select name="select5" id="select6" class="lst">
          <option>BE</option>
          <option>B.TECH</option>
          <option>BSC</option>
        </select></td>
      </tr>
      -->
</table>

<!--  
<pre><center><h3><input type="checkbox" name="checkbox"  />specify Secondary criteria</h3></center></pre> -->
<table width="423" border="0" align="center" >
<tr>
<td width="215">Secondary Percentage:</td>
<td width="192"><input name="secpercent" type="text" id="secpercent" size="15"  class="txt" /></td>
</tr>
<!-- 
<tr>
<td width="215">grade:</td>
<td width="192"><input name="textfield6" type="text" id="textfield6" size="15"  class="txt"/></td>
</tr>
-->
</table>



<!-- 
<pre><center><h3><input type="checkbox" name="checkbox"  />specify Senior Secondary criteria</h3></center></pre> -->
<table width="423" border="0" align="center" >
<tr>
<td width="215">Senior Secondary Percentage:</td>
<td width="192"><input name="sensecpercent" type="text" id="sesecpercent" size="15" class="txt" /></td>
</tr>
<!-- 
<tr>
<td width="215">grade:</td>
<td width="192"><input name="textfield8" type="text" id="textfield8" size="15"  class="txt"/></td>
</tr>
-->
</table>




<pre><center><h3>Graduation Details</h3> </center></pre>
<table width="423" border="0" align="center">
<tr>
<td width="114">Degree:</td>
<td width="293"><select name="degree" id="degree" class="lst2">
  <option>BE</option>
  <option>B.Tech</option>
  <option>B.Sc</option>
</select>
  <input type="button" value="ADD" /></td>
</tr>
<tr>
<td width="114">Branch:</td>
<td width="293"><select name="branch" id="branch" class="lst2">
  <option>CSE</option>
  <option>ECE</option>
  <option>EEE</option>
  <option>IT</option>
</select>
  <input type="button" value="ADD" /></td>
</tr>
<tr>
  <td>Selected Items:</td>
  <td><select name="selecteditems" size="10" multiple="multiple" id="select9" class="def">
  </select><input type="button" value="Remove"/></td>
</tr>

</table>


<pre><center><h3><input type="checkbox" name="checkbox"  />specify Graduation Criteria</h3></center></pre>
<table width="423" border="0" align="center" >
<tr>
<td width="215">percentage:</td>
<td width="192"><input name="percentage" type="text" id="percentage" size="15"  class="txt" /></td>
</tr>
<!-- 
<tr>
<td width="215">grade:</td>
<td width="192"><input name="textfield8" type="text" id="textfield8" size="15"  class="txt"/></td>
</tr>
<tr>
<td width="215">CGPA:</td>
<td width="192"><input name="textfield8" type="text" id="textfield8" size="15"  class="txt"/></td>
</tr>
-->
</table>



<pre><center><h3>Post-Graduation Details</h3> </center></pre>
<table width="423" border="0" align="center">
<tr>
<td width="114">Degree:</td>
<td width="293"><select name="pgdegree" id="pgdegree" class="lst2">
  <option>ME</option>
  <option>MTech</option>
  <option>M.Sc</option>
</select>
  <input type="button" value="ADD" /></td>
</tr>
<tr>
<td width="114">Branch:</td>
<td width="293"><select name="pgbranch" id="pgbranch" class="lst2">
  <option>CSE</option>
  <option>ECE</option>
  <option>EEE</option>
  <option>IT</option>
</select>
  <input type="button" value="ADD" /></td>
</tr>
<tr>
  <td>Selected Items:</td>
  <td><select name="select9" size="10" multiple="multiple" id="select9" class="def">
  </select><input type="button" value="Remove"/></td>
</tr>

</table>



<pre><center><h3><input type="checkbox" name="checkbox"  />specify Post-Graduation Criteria</h3></center></pre>
<table width="423" border="0" align="center" >
<tr>
<td width="215">percentage:</td>
<td width="192"><input name="pgpercentage" type="text" id="pgpercentage" size="15"  class="txt" /></td>
</tr>
<!-- 
<tr>
<td width="215">grade:</td>
<td width="192"><input name="textfield8" type="text" id="textfield8" size="15"  class="txt"/></td>
</tr>
<tr>
<td width="215">CGPA:</td>
<td width="192"><input name="textfield8" type="text" id="textfield8" size="15"  class="txt"/></td>
</tr>
-->
</table>



<pre><center><h3>complete job description</h3></center></pre>
<table width="423" border="0" align="center" >
<tr>
<td><textarea name="textarea" id="textarea" cols="45" rows="5"  class="txt"></textarea></td>
</tr>
</table>
            <br />
<table align="center" width="730">
            <tr >
			<td align="center" height="35">
			  <input type="submit" value="SUBMIT" onclick="alert('posted successfull')"/>
			</td>
			</tr>
</table>
</form>
        <div class ="footer">

        </div>
    </body>
</html>
