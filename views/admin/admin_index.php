<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h2>Lisa uus toode</h2>
            </div>
            <div class="modal-body">
                <div class="container-modal">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong>Uue toote andmed</strong></div>
                        <div class="panel-body">

                            <!-- Standard Form -->
                            <form id="newProduct" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="name" name="name"
                                           placeholder="Product name" required>
                                </div>
                                <div class="form-group">
                                    <label>Select list (select one):</label>
                                    <select class="form-control" id="category" name="category">
                                        <option value="1">Furniture</option>
                                        <option value="2">Woodturning</option>
                                        <option value="3">Sktechbooks</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="number" step="0.01" class="form-control" id="price" name="price"
                                           placeholder="Price" required>
                                </div>
                                <div class="form-group">
                                    <input type="number" class="form-control" id="qty" name="qty"
                                           placeholder="Quantity in stock" required>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" type="textarea" id="description" name="description"
                                              placeholder="Product description" maxlength="140" rows="7"></textarea>
                                </div>
                                <button type="submit" class="btn btn-default create">Create</button>
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


<div id="ProductTable" class="row">
    <div class="col-xs-12 col-sm-12">
        <div class="panel panel-default">
            <div class="row">
                <div class="col col-xs-6">
                    <div class="panel-heading">
                        <h4>
                            Tooted
                        </h4>
                    </div>
                </div>
                <div class="col col-xs-6 text-right">
                    <button data-toggle="modal" data-target="#myModal" type="button"
                            class="ui positive inverted button btn-create">Add New Product
                    </button>
                </div>
            </div>
            <div class="panel panel-default panel-table">
                <?php foreach ($product_types as $product_type): ?>
                    <button class="ui inverted red button"
                            id="<?= $product_type['product_type_id'] ?>"
                            value="<?= $product_type['product_type'] ?>"><?= $product_type['product_type'] ?></button>
                <?php endforeach ?>
                <button class="ui inverted green button active"
                        id="All"
                ">View All</button>
                <input id="searchInput" value="Type To Filter">
                <div id="product-dad" class="panel-body">
                    <table id="product" class="table table-striped table-bordered table-list">
                        <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Details</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Quantity/stock</th>
                            <th class="text-center"><em class="glyphicon glyphicon-pencil"></em></th>
                            <th class="text-center"><em class="glyphicon glyphicon-cog"></em></th>
                        </tr>
                        </thead>
                        <tbody id="fbody">
                        <?php foreach ($products as $product): ?>
                            <tr id="<?= $product['product_type'] ?>" data-id='<?= $product['id'] ?>'>

                                <td>
                                    <?= $product['product_name'] ?>
                                </td>
                                <td>
                                    <?= $product['product_details'] ?>
                                </td>
                                <td>
                                    <?= $product['product_type'] ?>
                                </td>
                                <td>
                                    <?= $product['product_price'] ?> €
                                </td>
                                <td class='qty'>
                                    <?= $product['product_qty'] ?>
                                </td>
                                <td align="center">
                                    <a class="ui positive inverted button text-right add"><em class="glyphicon
                                                                                                glyphicon-plus"></em></a>
                                    <a class="ui negative inverted button text-right remove "><em class="glyphicon
                                                                                                    glyphicon-minus"></em></a>
                                </td>
                                <td align="center">
                                    <a class="ui negative inverted button text-right destroy"><em class="glyphicon
                                                                                                    glyphicon-trash"></em></a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>