<div id="aboutModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-body">
                <div class="container-modal">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong>New section</strong></div>
                        <div class="panel-body">

                            <!-- Standard Form -->
                            <form id="newSection" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="heading" name="heading"
                                           placeholder="Heading" required>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" type="textarea" id="eng-text" name="eng-text"
                                              placeholder="English text" maxlength="1400" rows="7"></textarea>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" type="textarea" id="est-text" name="est-text"
                                              placeholder="Estonian text" maxlength="1400" rows="7"></textarea>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" type="textarea" id="rus-text" name="rus-text"
                                              placeholder="Russian text" maxlength="1400" rows="7"></textarea>
                                </div>
                                <div class="form-group">
                                    <input type="file" name="picture" id="picture">
                                </div>
                                <button type="submit" class="btn btn-default createSection">Add</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<div id="translationModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-body">
                <div class="container-modal">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong>New section</strong></div>
                        <div class="panel-body">

                            <!-- Standard Form -->
                            <form id="newTranslation" method="post">
                                <div class="form-group">
                                    <textarea class="form-control" type="textarea" id="est-text" name="est-text"
                                              placeholder="Estonian text" maxlength="1400" rows="7"></textarea>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" type="textarea" id="rus-text" name="rus-text"
                                              placeholder="Russian text" maxlength="1400" rows="7"></textarea>
                                </div>
                                <button type="submit" class="btn btn-default updateTrans">Add</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<container id="myP-dad">
    <div id="myP">
        <?php foreach ($description as $descript): ?>
            <div class="col-md-8 col-md-offset-2" style="padding-left">
                <h3 id="description"><?= $descript['description'] ?></h3>
            </div>
        <?php endforeach ?>
        <?php foreach ($about as $abouttext): ?>
            <?php if ($abouttext['about_id'] % 2 != 0): ?>
                <div class="about-section" data-id="<?= $abouttext['about_id'] ?>">
                    <div class="row text-center">
                        <div class="col-md-8 col-md-offset-2" style="padding-left">
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-1 text-center" style="padding-right: 75px;">
                        <h2 class="about-heading"><?= $abouttext['heading'] ?></h2>
                    </div>
                    <hr class="navsep">
                    <div class="row text-center">
                        <div class="col-md-5 col-md-offset-1 text-left" style="padding-left: 30px;">
                            <p class="about-description"><?= $abouttext['text'] ?></p>
                        </div>
                        <div class="col-md-4 col-md-offset-1">
                            <br>
                            <img class="img-responsive" src="uploads/thumbs/<?= $abouttext['picture'] ?>" alt="bla">
                        </div>
                        <a class="ui negative inverted button text-right rmvSection "><em
                                    class="glyphicon glyphicon-remove"></em></a>
                        <!--<button data-toggle="modal" data-target="#translationModal" value="Background"
                                class="navbar-text ui inverted red button" id="showModal">
                            <a>
                                Update translations
                            </a>
                        </button>-->
                    </div>
                </div>
                <br>
            <?php else: ?>
                <div class="about-section" data-id="<?= $abouttext['about_id'] ?>">
                    <div class="row text-center">
                        <div class="col-md-8 col-md-offset-2">
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-8 text-right" style="padding-right: 4px;">
                        <h2 class="about-heading"><?= $abouttext['heading'] ?></h2>
                    </div>
                    <hr class="navsep">
                    <div class="row text-center">
                        <div class="col-md-4 col-md-offset-1">
                            <br>
                            <img class="img-responsive" src="uploads/thumbs/<?= $abouttext['picture'] ?>" alt="bla">
                        </div>
                        <div class="col-md-5 text-right">
                            <p class="about-description"><?= $abouttext['text'] ?></p>
                        </div>
                        <a class="ui negative inverted button text-right rmvSection "><em class="glyphicon
                                                                                                    glyphicon-remove"></em></a>
                        <!--<button data-toggle="modal" data-target="#translationModal" value="Background"
                                class="navbar-text ui inverted red button" id="showModal">
                            <a>
                                Update translations
                            </a>
                        </button>-->
                    </div>
                </div>
            <?php endif; ?>

        <?php endforeach; ?>
    </div>
</container>

