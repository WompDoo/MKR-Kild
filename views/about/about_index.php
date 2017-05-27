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
                        <div class="col-md-6 col-md-offset-1 text-left" style="padding-left: 30px;">
                            <p class="about-description"><?= $abouttext['text'] ?></p>
                        </div>
                        <div class="col-md-4">
                            <br>
                            <img class="img-responsive" src="uploads/thumbs/<?= $abouttext['picture'] ?>" alt="bla">
                        </div>
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
                        <div class="col-md-4">
                            <br>
                            <img class="img-responsive" src="uploads/thumbs/<?= $abouttext['picture'] ?>" alt="bla">
                        </div>
                        <div class="col-md-6 text-right">
                            <p class="about-description"><?= $abouttext['text'] ?></p>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

        <?php endforeach; ?>
    </div>
</container>