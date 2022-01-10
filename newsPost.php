<?php

    $uploadDir = "upload/";

    if(!file_exists($uploadDir)) {  //create upload directory if it doesnt exist
        mkdir($uploadDir);
    }
    $thumbnailDir = "thumbnail/";  //create ordner for thumbnail img
    if(!file_exists($thumbnailDir)) {
        mkdir($thumbnailDir);
    }

    include 'uploads/upload.php';


    include 'webstructure/head.php';
?>
    <title>News</title>
</head>
<body>
    <?php
        include 'webstructure/nav.php';
    ?>

    <br>

    <div class="container text-center">
        <h1 id = "heading-1">Create a news post</h1>
    </div>
    <br>

    <div class="container">
        <form id="newspost" method="POST" enctype="multipart/form-data">
                <div class="col">
                    <textarea rows="1" cols="20" name="title" form="newspost" class="form-control" id="title" placeholder="News Title"></textarea>
                </div>
                <div class="col">
                    <textarea rows="4" cols="50" name="text" form="newspost" class="form-control" id="text" placeholder="News Text"></textarea>
                </div>
                <div class="col">
                    <div class="input-group">
                        <div class="custom-file">
                                <input class="custom-file-input" id="file" aria-describedby="file" type="file" name="file" required accept="image/jpeg, image/png, image/gif">
                                <label class="custom-file-label" for="file">Choose news image</label>
                        </div>
                    </div>
                    <button class="btn btn-outline-secondary" type="submit" name="submit">Publish</button>
                </div>
        </form>
                <div class="col">
                    <h2>Files</h2><br>
                </div>
                <div class="col">
                    <ul class="list-group">
                        <?php
                            if(file_exists($thumbnailDir)){
                                $files = scandir($thumbnailDir);
                                array($files);


                                for($i = 2; isset($files[$i]); $i++){
                                    echo '<li class="list-group-item>' . $files[$i] . '</li>';
                                }
                                if(count($files) == 2){
                                    echo '<li class="list-group-item">No files...</li>';
                                }
                            }
                        ?>
                    </ul>
                </div>
    </div>

    <!--Daten in DB speichern-->

<?php
    include 'webstructure/footer.php';
?>