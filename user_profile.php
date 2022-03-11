<?php
include 'config.php';
session_start();
if(!isset($_SESSION['user_id']) && $_SESSION['user_role'] != 'user') {
    header("Location: " . $hostname);
}
include 'header.php'; ?>
<div class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
            <nav class="navbar" style="margin-bottom: -7px;">
            <a href="http://localhost/shopping-project/">home</a>
            <a href="http://localhost/shopping-project/#about">about</a>
            <a href="http://localhost/shopping-project/#menu">menu</a>

            <a href="http://localhost/shopping-project/#review">review</a>
            <a href="http://localhost/shopping-project/#contact">contact</a>

        </nav>
            </div>
        </div>
    </div>
</div>
    <div id="user_profile-content">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                <h1 class="heading"> <span>My</span> Profile </h1>
                    <?php
                        $user_id = $_SESSION["user_id"];
                        $db = new Database();
                        $db->select('user','*',null,"user_id = '{$user_id}'",null,null);
                        $result = $db->getResult();
                        if (count($result) > 0) {
                            $table = '<table>';
                            foreach($result as $row) { ?>
                                <table class="table table-bordered table-responsive">
                                    <tr>
                                        <td><b>First Name :</b></td>
                                        <td><?php echo $row["f_name"]; ?></td>
                                    </tr>
                                    <tr>
                                        <td><b>Last Name :</b></td>
                                        <td><?php echo $row["l_name"]; ?></td>
                                    </tr>
                                    <tr>
                                        <td><b>Username :</b></td>
                                        <td><?php echo $row["username"]; ?></td>
                                    </tr>
                                    <tr>
                                        <td><b>Mobile :</b></td>
                                        <td><?php echo $row["mobile"]; ?></td>
                                    </tr>
                                    <tr>
                                        <td><b>Address :</b></td>
                                        <td><?php echo $row["address"]; ?></td>
                                    </tr>
                                    <tr>
                                        <td><b>City :</b></td>
                                        <td><?php echo $row["city"]; ?></td>
                                    </tr>
                                </table>
                            <?php }
                        }
                        ?>
                        <a class="modify-btn btn" href="edit_user.php?user=<?php echo $_SESSION['user_id']; ?>">Modify Details</a>
                        <a class="modify-btn btn" href="change_password.php">Change Password</a>
                </div>
            </div>
        </div>
    </div>
<?php include 'footer.php';


?>
  