<body>
<header id="myCarousel" class="carousel slide">

    <!-- Wrapper for Slides -->
    <div id="myCarousel-son" class="carousel-inner">
        <?php foreach ($backgrounds as $background): ?>
            <div class="item <?php if ($background['home_id'] == "1"): ?>active<?php endif; ?>">
                <div class="fill" style="background-image:url('<?= $background['background'] ?>');"></div>
            </div>
        <?php endforeach ?>
    </div>

</header>
</body>