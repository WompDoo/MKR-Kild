<link href="assets/css/checkout.css" rel="stylesheet">

<div id="contactModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-body">
                <div class="container-modal">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong>New contact</strong></div>
                        <div class="panel-body">

                            <!-- Standard Form -->
                            <form id="newContact" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="contactName" name="contactName"
                                           placeholder="Name" required>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" type="textarea" id="description" name="description"
                                              placeholder="Contact description" maxlength="140" rows="7"></textarea>
                                </div>
                                <div class="form-group">
                                    <input type="file" name="picture" id="pictureContact">
                                </div>
                                <button type="submit" class="btn btn-default createContact">Add</button>
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
        <div id="myP" class="col-md-4" style="    padding-left: 100px;
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
                        <h4><?= $contacts['name'] ?></h4>
                        <text><?= $contacts['description'] ?></text>
                    </div>
                    <a class="ui negative inverted button text-right rmvContact "><em class="glyphicon
                                                                                                    glyphicon-remove"></em></a>
                </div>
                <br>
            <?php endforeach ?>

        </div>
    </div>
</div>
<br>
<!-- /.row -->