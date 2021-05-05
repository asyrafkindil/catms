<?php include 'header.php';?>

<body>
	<?php include 'menu-tab.php';?>
	
		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class = "col-md-8 col-lg-8">
					<div class = "widget">
						<div class = "widget-head">
							Map Of Store Location
						</div>
						<div class = "widget-content">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63743.51877602033!2d101.63765669985534!3d3.1026483180205817!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc4828d251e21f%3A0xf2c96e953e48a8a4!2sUniversiti%20Kuala%20Lumpur%20-%20Malaysian%20Institute%20of%20Information%20Technology%20(UniKL%20MIIT)!5e0!3m2!1sen!2smy!4v1614864108349!5m2!1sen!2smy" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
						</div>
					</div>				
				</div>
				<div class = "col-md-4 col-lg-4">
					<div class = "widget">
						<div class = "widget-head">
							Message/Feedback
						</div>
						<div class = "widget-content">
							<div class = "padd">
								<form class="form-horizontal" action = "add_message.php" method="post">                              
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Fullname</label>
                                  <div class="col-lg-8">
                                    <input name = "fullname" type="text" class="form-control" placeholder="Please type your name" required >
                                  </div>
                                </div>                                
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Email</label>
                                  <div class="col-lg-8">
                                    <input type="email"  name = "email" class="form-control" placeholder="Please type your email" required>
                                  </div>
                                </div>
								<div class="form-group">
                                  <label class="col-lg-3 control-label">Subject</label>
                                  <div class="col-lg-8">
                                    <input type="text" name = "subject" class="form-control" placeholder="Subject" required>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Comments</label>
                                  <div class="col-lg-8">
                                    <textarea name = "message" class="form-control" rows="5" placeholder="Comments here....."required></textarea>
                                  </div>
                                </div>
								<div class="form-group">
                                  <div class="col-lg-offset-3 col-lg-8">
                                    <button  class="btn btn-sm btn-primary btn-block">Send</button>                                  
                                  </div>
                                </div>
                              </form>

						</div>
						</div>
					</div>		
				</div>				
				<!-- <div class = "col-md-4 pull-right">
					<div class = "widget">
						<div class = "widget-head center">
							 <a class="btn btn-social-icon btn-facebook" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-facebook']);"><span class="fa fa-facebook"></span></a>							 
							 <a class="btn btn-social-icon btn-instagram" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-instagram']);"><span class="fa fa-instagram"></span></a>
							 <a class="btn btn-social-icon btn-twitter" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-twitter']);"><span class="fa fa-twitter"></span></a>
						</div>
					</div>
				</div> -->
			</div>	
		</div>
		<div class = "content">
			<div class = "col-lg-12 col-md-12  col-sm-12">
				<div class = "col-lg-12 col-md-12 col-sm-12 ">
					<div class = "title-header">
						<h2 class = "center">
							Peoples of KASZ
						</h2>
					</div>					
				</div>
				<br/>
				<br/>
				<br/>
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/iconz.png"/>
					</div>
					<h4 class = "center"><b>Khairul Helmie</b></h4>
					<h5 class = "center"><i>Owner</i></h5>									
				</div>
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/iconz.png"/>
					</div>
					<h4 class = "center"><b>Ariff Pekmi</b></h4>
					<h5 class = "center"><i>Manager</i></h5>										
				</div>
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/iconz.png"/>
					</div>
					<h4 class = "center"><b>Arif Sapik</b></h4>
					<h5 class = "center"><i>Assistant Manager</i></h5>										
				</div>
				<div class = "col-lg-3 col-md-3 col-sm-3">
					<div class = "center user-icon">
						<img src = "images/iconz.png"/>
					</div>
					<h4 class = "center"><b>Mohd Zuhair</b></h4>
					<h5 class = "center"><i>IT Officer</i></h5>
					<br/>
					<br/>											
				</div>
			</div>
		</div>
<?php include 'footer.php';?> 	
<?php include 'script.php';?>
</body>
</html>



