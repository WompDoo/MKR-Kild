<link href="assets/css/checkout.css" rel="stylesheet">
<div class="text-left">
    <div class="col-md-4 col-md-offset-2">
        <form method="post" id="questionForm">
            <div class="row">
                <div class="name form-group col-md-8">
                    <label for="name"></label>
                    <input type="text" placeholder="<?= __('My full name is')?>" name="name" id="name_input" required>
                </div>
            </div>
            <div class="row">
                <div class="email form-group col-md-8">
                    <label for="email"></label>
                    <input type="email" placeholder="<?= __('My email is')?>" name="email" id="email_input" required>
                </div>
            </div>
            <div class="row">
                <div class="message contactMsg col-md-8">
                    <label for="message"></label>
                    <textarea name="Qmessage" placeholder="<?= __('My question is')?>" id="contactMsg" cols="1"
                              rows="1"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="submit col-md-4">
                    <input id="submitBtn" type="submit" value=<?= __('Send')?>>
                </div>
            </div>
        </form>
    </div>
</div>


<div id="myP-dad">
    <div id="myP" class="col-md-4" style="padding-left: 100px;
    border: 1px;
    border-style: solid;
    border-right: 0px;
    border-top: 0px;
    border-bottom: 0px;">
        <?php foreach ($contact as $contacts): ?>
            <div id="contact" class="row" data-id="<?= $contacts['contact_id'] ?>">
                <div class="col-md-4">
                    <img class="img-circle img-responsive"
                         src="uploads/contact/<?= $contacts['picture'] ?>"
                         alt="bla">
                </div>
                <div class="col-md-6">
                    <h4><?= __($contacts['name']) ?></h4>
                    <text><?= __($contacts['description']) ?></text>
                </div>
            </div>
            <br>
        <?php endforeach ?>

    </div>
</div>
<br>
<!-- /.row -->
<script type="text/javascript" src="assets/js/validations.js"></script>

