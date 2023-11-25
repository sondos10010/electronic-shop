<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>الطلبات</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>طلباتي</h3>
   <p> <a href="home.php">الرئيسية</a> / الطلبات </p>
</div>

<section class="placed-orders">

   <h1 class="title"> طلبات العملاء</h1>

   <div class="box-container" >

      <?php
         $order_query = mysqli_query($conn, "SELECT * FROM `orders` WHERE user_id = '$user_id'") or die('query failed');
         if(mysqli_num_rows($order_query) > 0){
            while($fetch_orders = mysqli_fetch_assoc($order_query)){
      ?>
      <div class="box" style="text-align:right;" dir="rtl">

         <p> رقم الطلب : <span><?php echo $fetch_orders['placed_on']; ?></span> </p>
         <p> الاسم : <span><?php echo $fetch_orders['name']; ?></span> </p>
         <p> الرقم : <span><?php echo $fetch_orders['number']; ?></span> </p>
         <p> الايميل : <span><?php echo $fetch_orders['email']; ?></span> </p>
         <p> العنوان : <span><?php echo $fetch_orders['address']; ?></span> </p>
         <p>  طريقة الدفع : <span><?php echo $fetch_orders['method']; ?></span> </p>
         <p> طلبي : <span><?php echo $fetch_orders['total_products']; ?></span> </p>
         <p> اجمالي السعر : <span>$<?php echo $fetch_orders['total_price']; ?>/-</span> </p>
         <p> حالة الدفع : <span style="color:<?php if($fetch_orders['payment_status'] == 'pending'){ echo 'red'; }else{ echo 'green'; } ?>;"><?php echo $fetch_orders['payment_status']; ?></span> </p>
         </div>
      <?php
       }
      }else{
         echo '<p class="empty">لاتوجد طلبات الى الان!</p>';
      }
      ?>
   </div>
</section>








<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>