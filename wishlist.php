<?php include 'config.php'; ?>
<?php include 'header.php'; ?>
<div class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
            <nav class="navbar navbargo" style="margin-bottom: -7px;">
            <a href="http://localhost/shopping-project/">home</a>
            <a href="http://localhost/shopping-project/#about">about</a>
            <a href="http://localhost/shopping-project/#menu">menu</a>

            <a href="http://localhost/shopping-project/#review">review</a>
            <a href="http://localhost/shopping-project/#contact">contact</a>

        </nav>
            </div>
        </div>
    </div>
</div>
    <div class="product-wishlist-container">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                <h1 class="heading"> <span>My </span> Wishlist </h1>
                    <?php
                    if(isset($_COOKIE['user_wishlist']) && !empty($_COOKIE['user_wishlist'])){
                        $pid = array();
                        $pid = json_decode($_COOKIE['user_wishlist']);
                        if(is_object($pid)){
                            $pid = get_object_vars($pid);
                        }
                        $pids = implode(',',$pid);
                        $db = new Database();
                        $db->select('products','*',null,"product_id IN ({$pids})",null,null);
                        $result = $db->getResult();
                        if(count($result) > 0){ ?>
                            <table class="table table-bodered">
                                <thead>
                                <th>Product Image</th>
                                <th>Product Name</th>
                                <th>Product Price</th>
                                <th>Action</th>
                                </thead>
                                <tbody>
                                <?php foreach($result as $row){ ?>
                                    <tr>
                                        <td><img src="product-images/<?php echo $row['featured_image']; ?>" alt="" width="100px" /></td>
                                        <td><?php echo $row['product_title']; ?></td>
                                        <td><?php echo $cur_format; ?> <?php echo $row['product_price']; ?></td>
                                        <td>
                                            <a class="btn btn-sm btn-primary remove-wishlist-item" href="" data-id="<?php echo $row['product_id']; ?>"><i class="fa fa-remove"></i></a>
                                        </td>
                                    </tr>

                                <?php    } ?>
                                </tbody>
                            </table>
                            <a class="btn btn-sm btn-primary proceed-to-cart" href="javascript:void(0)" >Proceed to Cart</a>
                        <?php    }
                    }else{ ?>
                    <div class="empty-result">
                        No products were added to the wishlist.
                    </div>

                    <?php } ?>


                    <?php //} ?>
                </div>
            </div>
        </div>
    </div>

<?php include 'footer.php'; ?>