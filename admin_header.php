
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
    <div class="flex">
        <a href="admin_page.php" class="logo">لوحة التحكم<span> والادارة</span></a>
        <nav class="navbar">
            <a href="admin_page.php">الرئيسية</a>
            <a href="admin_products.php">إدارة المنتجات</a>
            <a href="admin_orders.php">ادارة الطلبـات</a>
            <a href="admin_users.php">إدارة المستخدمين</a>
            <a href="admin_contacts.php">إدارة رسائل البريد</a>
        </nav>
        <div class="icons">
            <div id = "menu-btn" class="fas fa-bars"></div>
            <div id = "user-btn" class="fas fa-user"></div>
        </div>
        <div class="account-box">
            <p>الاسم:<span><?php echo $_SESSION['admin_name'] ?></span></p>
            <p>الايميل:<span><?php echo $_SESSION['admin_email']?></span></p>
            <a href="logout.php" class="delete-btn">تسجيــل خروج</a>
        </div>
    </div>
</header>