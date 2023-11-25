<?php

include 'config.php';
session_start();
$user_id = $_SESSION['user_id'];

if (!isset($user_id)) {
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>الرئيسية</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
    <?php include 'header.php'; ?>
    <section class="home">
        <div class="content"><br><br><br><br><br><br><br><br><b><b><br><br><br><br><br><br><br><br></b></b>
            <h3 style="color:#0a9fb0;">مشروع متجر الكتروني مع لوحة تحكم</h3> <br><br><br><br>
            <p style="color:#333">الصفحة الرئيسية : تتوزع ﻋﻠﻳﻬﺎ  جميع المعلومات والروابط الهامة عن المتجر ونبذه تعريفية عن الفريق</p>
        </div>
    </section>
   <section class="about">

      <div class="flex" >

         <div class="image">
            <img src="images/homes.png" alt="">
         </div>

       <div class="content" dir="rtl">
          <h3> من نحن؟</h3>
          <p> طالبات مستوى ثالث </P>.
          <ul style="font-size:20px">
            <li> سندس عبد السلام المليكي </li>
            <li> سناء عبدالله  </li>
            <li> سندس الحياني  </li>
          </ul>
          <div >
            <br> 
          <h3> عن المشروع</h3>
       <p>
       هو متجر الكتروني يعمل على نظامي الاندرويد والايفون ويتم من خلاله عرض جميع 
       التصنيفات والمنتجات من الساعات وغيرها من المنتجات مثلاَ تكون الساعات التابعة الى شركة
        رولكس  في قسم ساعات رولكس,  بالإضافة الى 
       عرض كافة المعلومات (معلومات عن الجهة المالكة للتطبيق – عرض أقسام المتجر الالكتروني -
        عرض التصنيفات او الفئات – عرض المنتجات من الساعات المتنوعة- عرض المنتجات الذي عليها
      .)</p>
      </div>
    
          <a href="contact.php" class="btn">تواصل بناء </a>
       </div>

     
  </section> 
    <?php include 'footer.php'; ?>





    <!-- custom js file link -->
    <script src="js/script.js"></script>
</body>
</html>


