<?php 
    session_start();
    if(isset($_SESSION['email'])){
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Print Certificate</title>
    <!-- Bootstrap files -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- External CSS file -->
    <link rel="stylesheet" href="../css/styles.css">
    
    <style>
    body {
        background-color: #f8f9fa;
        font-family: 'Arial', sans-serif;
    }

    #certificate {
        background-color: #e6f7ff; /* Change this color code */
        padding: 20px;
        text-align: center;
        border: 2px solid #343a40;
        border-radius: 10px;
        margin-top: 50px;
    }

    h1, h2 {
        color: #dc3545;
    }

    p {
        font-size: 18px;
        line-height: 1.6;
        color: #343a40;
    }

    hr {
        border-color: #dc3545;
    }

    .certificate-footer {
        font-size: 14px;
        color: #6c757d;
    }
</style>

    </style>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-8 m-auto" id="certificate">
            <h1><i>Blood Donation</i></h1>
            <h2><i>Certificate</i></h2>
            <center><div class="col-md-3 content-right d-flex align-items-center justify-content-center">
    <img class="img-fluid" src="img/im1.png" height="auto" width="70%">
</div></center>
                
                <p>We want to express our heartfelt gratitude for your recent blood donation. Your generosity and compassion have made a significant impact on the lives of those in need. Your selfless act has helped save lives and brought hope to individuals facing challenging health situations.</p>

                <br>Your commitment to giving the gift of life reflects the true spirit of community and empathy. Every drop of blood you've donated contributes to making a positive difference, and we are truly thankful for your support.</p>

                <br>Once again, thank you for being a lifesaver. Your kindness has not gone unnoticed, and we look forward to your continued support in the future.</p>

                <br><br>
                <strong> Appreciated  : <br>
                <?php echo $_SESSION['name']; ?></strong><br><hr><br>
                <strong>ORGANIZED BY - Jijai Blood Bank</strong><br><br><hr><br>
                <p>I EXTEND OUR APPRECIATION OF YOUR <br> DONATION IN THIS</p><br><br>
             
                <span style="padding-right:75%;"><h4>CHAIRMAN:</h4> <h3>Mr. Suraj Patil</h3> </span> <br><br><br><br><br>
                <div class="certificate-footer">
                    <h3>Jijai Blood Bank<a href="#" target="_blank"><i class="fab fa-facebook"></i></a> | <a href="#" target="_blank"><i class="http://www.jijaibloodcentre.in/"></i></a></h3>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<?php
}
else{
    header('Location:login.php');
}
?>
