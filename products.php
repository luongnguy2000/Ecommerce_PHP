<?php
	include 'inc/header.php';
	include 'inc/slider.php'; 
?>
 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Latest from MSI</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">
	      	<?php
	      		$product_MSI =$product->getLastestDell();
	      		if($product_MSI){
	      			while($resultMSI = $product_MSI->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php"><img src="admin/uploads/<?php echo $resultMSI['image']?>" alt="" /></a>
					 <h2><?php echo $resultMSI['productName']?> </h2>
					 <p><?php echo $fm->textShorten($resultMSI['product_desc'], 20)?></p>
					 <p><span class="price"><?php echo $resultMSI['price'].'$'?></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $resultMSI['productId']?>" class="details">Details</a></span></div>
				</div>
				<?php 
			}
		}
		?>
			</div>
			<div class="content_bottom">
    		<div class="heading">
    		<h3>Latest from PC</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<?php
	      		$product_PG =$product->getLastestOppo();
	      		if($product_PG){
	      			while($resultPG = $product_PG->fetch_assoc()){
				?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php"><img src="admin/uploads/<?php echo $resultPG['image']?>" alt="" /></a>
					 <h2><?php echo $resultPG['productName']?> </h2>
					 <p><?php echo $fm->textShorten($resultPG['product_desc'], 20)?></p>
					 <p><span class="price"><?php echo $resultPG['price'].'$'?></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $resultPG['productId']?>" class="details">Details</a></span></div>
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