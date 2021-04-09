<?php
	include 'inc/header.php';
	include 'inc/slider.php'; 
?>


 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		
    		<h3>Asus</h3>
    		
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">
	      	<?php
	      		$brand_Asus =$br->getbrand_Asus();
	      		if($brand_Asus){
	      			while($result = $brand_Asus->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php"><img src="admin/uploads/<?php echo $result['image']?>" alt="" /></a>
					 <h2><?php echo $result['productName']?></h2>
					 <p><?php echo $fm->textShorten($result['product_desc'], 20)?></p>
					 <p><span class="price"><?php echo $result['price'].'$'?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']?>" class="details">Details</a></span></div>
				</div>
			<?php
			}
		}
		?>
		</div>

		<div class="content_bottom">
    		<div class="heading">
    		<h3>MSI</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<?php
	      		$brand_MSI =$br->getbrand_MSI();
	      		if($brand_MSI){
	      			while($result = $brand_MSI->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details-3.php"><img src="admin/uploads/<?php echo $result['image']?>" alt="" /></a>
					 <h2><?php echo $result['productName']?></h2>
					 <p><?php echo $fm->textShorten($result['product_desc'], 20)?></p>
				    <p><span class="price"><?php echo $result['price'].'$'?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']?>" class="details">Details</a></span></div>
				</div>
					<?php
			}
		}
		?>
			</div>
	<div class="content_bottom">
    		<div class="heading">
    		<h3>PC Gaming</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<?php
	      		$brand_PC =$br->getbrand_PC();
	      		if($brand_PC){
	      			while($result = $brand_PC->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details-3.php"><img src="admin/uploads/<?php echo $result['image']?>" alt="" /></a>
					 <h2><?php echo $result['productName']?></h2>
					 <p><?php echo $fm->textShorten($result['product_desc'], 20)?></p>
				    <p><span class="price"><?php echo $result['price'].'$'?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']?>" class="details">Details</a></span></div>
				</div>
					<?php
			}
		}
		?>
			</div>
    </div>
    <div class="content_bottom">
    		<div class="heading">
    		<h3>Works Stations</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<?php
	      		$brand_Works =$br->getbrand_Works();
	      		if($brand_Works){
	      			while($result = $brand_Works->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details-3.php"><img src="admin/uploads/<?php echo $result['image']?>" alt="" /></a>
					 <h2><?php echo $result['productName']?></h2>
					 <p><?php echo $fm->textShorten($result['product_desc'], 20)?></p>
				    <p><span class="price"><?php echo $result['price'].'$'?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']?>" class="details">Details</a></span></div>
				</div>
				<?php
			}
		}
		?>
			</div>
    </div>
 </div>

<?php
	include 'inc/footer.php';
	
?>