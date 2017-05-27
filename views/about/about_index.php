<container id="myP-dad">
    <div id="myP">
        <?php foreach ($description as $descript): ?>
            <div class="col-md-8 col-md-offset-2" style="padding-left">
                <h3 id="description"><?= __($descript['description']) ?></h3>
            </div>
        <?php endforeach ?>
        <?php foreach ($about as $abouttext): ?>
            <?php if ($abouttext['about_id'] % 2 != 0): ?>
                <div class="about-section" data-id="<?= $abouttext['about_id'] ?>">
                    <div class="row text-center">
                        <div class="col-md-8 col-md-offset-2" style="padding-left">
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-6 col-sm-6 col-sm-offset-5 col-xs-9 col-xs-offset-1 text-left" style="padding-right: 4px;">
                        <h2 class="about-heading"><?= __($abouttext['heading']) ?></h2>
                    </div>
                    <hr class="navsep">
                    <div class="row text-center">
                        <div class="col-md-5 col-sm-6 col-xs-11 text-left">
                            <p class="about-description"><?= __($abouttext['text']) ?></p>
                        </div>
                        <div class="col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-12">
                            <br>
                            <img class="img-responsive" src="uploads/thumbs/<?= $abouttext['picture'] ?>" alt="Picture">
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
                    <div class="col-md-4 col-md-offset-6 col-sm-6 col-sm-offset-5 col-xs-9 col-xs-offset-1 text-right" style="padding-right: 4px;">
                        <h2 class="about-heading"><?= __($abouttext['heading']) ?></h2>
                    </div>
                    <hr class="navsep">
                    <div class="row text-center">
                        <div class="col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-12">
                            <br>
                            <img class="img-responsive" src="uploads/thumbs/<?= $abouttext['picture'] ?>" alt="bla">
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-11 text-right">
                            <p class="about-description"><?= __($abouttext['text']) ?></p>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

        <?php endforeach; ?>
    </div>
</container>