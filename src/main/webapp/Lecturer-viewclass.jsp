<!DOCTYPE html>
<html>
<title>List Class</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="Lecturer-viewclass.css">


<body>

<%@include file="Lecturer-navbar.html"%>

<!-- Team Section -->

<div class="w3-container" style="padding:128px 16px" id="team">
	<h6><button class="w3-button w3-white w3-padding-large w3-large w3-opacity w3-hover-opacity-off" onclick="document.getElementById('subscribe').style.display='block'">CREATE CLASS</button></h6>
  <h3 class="w3-center">CLASSES</h3>
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="java.png" alt="John" style="width:100%">
		
		 <div class="dropdown">
			  <button class="dropbtn">...</button>
			  <div class="dropdown-content">
					<button class="w3-button w3-block " onclick="document.getElementById('edit').style.display='block'">Edit</button>
					<button type="submit" class="w3-button w3-block" onclick="myFunction(); return false" class="button button1" name="submit"  >Delete</button>				

			  </div>
			</div>
			
        <div class="w3-container w3-sand">
          <h3>CSC584</h3>
          <p class="w3-opacity">DR AHMAD FIRDAUS AHMAD FADZIL</p>
          <p>M3CS2664B</p>
          <p><button class="w3-button w3-blue-grey w3-block"></i> View class</button></p>
        </div>
      </div>
    </div>
	
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="database.png" alt="Jane" style="width:100%">
			
		 <div class="dropdown">
			  <button class="dropbtn">...</button>
			  <div class="dropdown-content">
					<button class="w3-button w3-block " onclick="document.getElementById('edit').style.display='block'">Edit</button>
				<button type="submit" class="w3-button w3-block" onclick="myFunction(); return false" class="button button1" name="submit"  >Delete</button>				

			  </div>
			</div>
			
        <div class="w3-container w3-sand">
          <h3>ICT502</h3>
          <p class="w3-opacity">DR AHMAD FIRDAUS AHMAD FADZI</p>
		   <p>M3CS2664A</p>
          <p><button class="w3-button w3-blue-grey w3-block"></i> View class</button></p>
        </div>
      </div>
    </div>
	
    
    </div>
  </div>
</div>


<!-- Join Modal -->
<div id="subscribe" class="w3-modal w3-animate-opacity">
  <div class="w3-modal-content" style="padding:32px">
    <div class="w3-container w3-white">
      <i onclick="document.getElementById('subscribe').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right"></i>
      <h2 class="w3-wide">CREATE CLASS</h2>
        <form action="classServlet" method="post">
            <p>Enter your class details here</p>
            <p><input class="w3-input w3-border" type="text" name="classubject" placeholder="Class Subject"></p>
	        <p><input class="w3-input w3-border" type="text" name="classname" placeholder="Class Name"></p>
            <p><input class="w3-input w3-border" type="text" name="classtotalstudent" placeholder="Total student"></p>
            <input type="hidden" name="lecturerid" value="${lecturer.lecturerId}">
            <input type="hidden" name="action" value="create">
            <button type="submit" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('subscribe').style.display='none'; form.action='classServlet';">CREATE CLASS</button>
        </form>
    </div>
  </div>
</div>

<div id="edit" class="w3-modal w3-animate-opacity">
  <div class="w3-modal-content" style="padding:32px">
    <div class="w3-container w3-white">
      <i onclick="document.getElementById('edit').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right"></i>
    <h2 class="w3-wide">UPDATE CLASS</h2>
      <p>Update your class details here</p>
      <p><input class="w3-input w3-border" type="text" placeholder="Class Subject"></p>
	        <p><input class="w3-input w3-border" type="text" placeholder="Class Name"></p>
			      <p><input class="w3-input w3-border" type="text" placeholder="Total student"></p>


      <button type="button" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('subscribe').style.display='none'">UPDATE CLASS</button>
    </div>
  </div>
</div>


<script type="text/javaScript">
						function myFunction()
						{	
							confirm("Are you sure you want to delete your class?");
						}
					</script>	


</body>
</html>
