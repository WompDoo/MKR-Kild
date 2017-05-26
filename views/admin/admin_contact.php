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

<div class="row text-left">
    <div class="col-md-4 col-md-offset-2">
        <form>
            <div class="row">
                <div class="form-group col-md-10 ">
                    <label for="name" class="control-label">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name"
                           value="">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-10">
                    <label for="name" class="control-label">Email</label>
                    <input type="username" class="form-control" id="username" name="username"
                           placeholder="example@domain.com" value="">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-10">
                    <label for="name" class="control-label">Message</label>
                    <textarea class="form-control" rows="4" name="message"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-10 text-right">
                    <input id="submit" name="submit" type="submit" value="Send" class="btn btn-default">
                </div>
            </div>
        </form>
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
                        <img class="img-circle"
                             src="https://placeholdit.imgix.net/~text?txtsize=33&txt=259%C3%97375&w=100&h=100"
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