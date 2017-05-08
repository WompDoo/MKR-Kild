<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-body">
                <div class="container-modal">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong>Laadi ülesse pilte</strong></div>
                        <div class="panel-body">

                            <!-- Standard Form -->
                            <h4>Vali arvutist failid</h4>
                            <form method="post" enctype="multipart/form-data" id="js-upload-form">
                                <div class="form-inline">
                                    <div class="form-group">
                                        <input type="file" name="file[]" id="js-upload-files" multiple>
                                    </div>
                                    <button type="submit" class="ui button inverted blue upload" id="js-upload-submit"
                                            name="submit">Upload files
                                    </button>
                                </div>
                            </form>
                            <h3>Üleslaaditud pildid</h3>
                            <div class="js-upload-finished" id="selectablePics-dad">
                                <div id="selectablePics">
                                    <select class="image-picker " id="bgPics" data-limit="3" multiple="multiple">
                                    </select>
                                </div>
                                <button type="submit" id="changeBG" class="ui button inverted blue text-center
"
                                        name="change BG">Change BG
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Full Page Image Background Carousel Header -->
<header id="myCarousel" class="carousel slide">

    <!-- Wrapper for Slides -->
    <div id="myCarousel-son" class="carousel-inner">
        <div class="item active"><div class="fill" style="background-image:url('uploads/kurikas.jpg');"></div></div>
        <div class="item"><div class="fill" style="background-image:url('uploads/markmik.JPG');"></div></div>
        <div class="item"><div class="fill" style="background-image:url('uploads/moobel.JPG');"></div></div>
    </div>

</header>