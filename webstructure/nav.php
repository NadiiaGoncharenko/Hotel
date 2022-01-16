<?php
    if(session_status() == PHP_SESSION_NONE){
        session_start();
    }
?>

    <div class="container-flex">
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #98c0dd;">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="./index.php">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Rooms
                        </a>
                        <div class="dropdown-menu" style="background-color: #c2d3df;" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#";>Double Bedroom</a>
                            <a class="dropdown-item" href="#">Suite</a>
                            <a class="dropdown-item" href="#">Grand Suite</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./imprint.php">Imprint</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./helpsite.php">Help<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./newsPost.php">Create news Post</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./create_ticket.php">Create Ticket</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./edit_newsposts.php">Create Ticket</a>
                    </li>
                    <?php if(!isset($_SESSION["loggedin"])): ?>
                    <li class="nav-item">
                        <a class="nav-link" href="./registration_form.php">Registration</a>
                    </li>
                    <!--create Ticket und newsPost noch ohne anzeigerechte-->
                    
                    <?php endif ?>
                    <?php if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"]):?>
                        <li class="nav-item">
                            <a class="nav-link" href="./login.php">Logout</a>
                        </li>
                    <?php else: ?>
                        <li class="nav-item">
                            <a class="nav-link" href="./login.php">Login</a>
                        </li>
                    <?php endif ?> 
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </div>


