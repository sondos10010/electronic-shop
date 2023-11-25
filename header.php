<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>
<header class = "header">
    <div class="header-1">
        <div class="flex">
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
            <p>جديد <a href="login.php">تسجيل دخول</a> | <a href="register.php">تسجيل</a></p>
        </div>
    </div>
    <div class="header-2">
        <div class="flex">
          <a href="home.php" class="logo">متجر  بنات إب</a>
           <nav class="navbar">
             <a href="home.php">الرئيسية</a>
             <a href="shop.php">المنتجات</a>
             <a href="contact.php">تواصل معنا</a>
             <a href="orders.php">الطلبات</a>
           </nav>
          <div class="icons">
             <div id="menu-btn" class="fas fa-bars"></div>
             <div id="user-btn" class="fas fa-user"></div>
             <?php
             $select_cart_number = mysqli_query($conn,"SELECT * FROM `cart` WHERE user_id='$user_id'") or die('query failed');
             $cart_rows_number = mysqli_num_rows($select_cart_number);
             ?>
             <a href="cart.php"><i class="fas fa-shopping-cart">
             </i><span>(<?php echo $cart_rows_number;?>)</span></a>
         </div>
         <div class="user-box">
             <p>الاسم:<span><?php echo $_SESSION['user_name'] ?></span></p>
             <p>الايميل:<span><?php echo $_SESSION['user_email']?></span></p>
             <a href="logout.php" class="delete-btn">تسجيل خروج</a>
         </div>
       </div>
   </div>
</header>