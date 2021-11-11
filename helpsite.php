</html><!DOCTYPE html>
<html lang="en">
<head>
    <title>Help</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #98c0dd;">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                  <a class="nav-link" href="./registration_form.php">Registration</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./imprint.php">Imprint</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="./helpsite.php">Help<span class="sr-only">(current)</span></a>
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

              </ul>
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              </form>
            </div>
          </nav>
    </div>

    <br>
    <div class="container text-center">
    <h1 id = "heading-1">Help & Support </h1>
    <h3>Tell our support team what you need:</h3>
    <p>
        <form class="helpgroup">
            <label for="user-question">Your request:</label><br>
            <textarea name="user-question" id= "user-question" cols="35" rows="10" placeholder="A problem with ..."></textarea><br>
            <label for="file">Choose file (optional)</label>
            <input name="file" id="file" type="file"><br><br>
            <button type="submit">Send request</button>
        </form>
    </p>
    <div>
    <p>You can also contact us under:</p>
    </div>
    <div>
        <p> hilfseite@kleinhotel.at </p>
    </div>
    </div>
</body>
</html>
