<?php
namespace Halo;

class Checkout extends Controller
{

    function index()
    {
        session_name('cart_item');
        if (PHP_SESSION_ACTIVE != true) {
            session_start();
        }
    }

    function ajax_sendOrder()
    {
        if (isset($_SESSION['cart_item'])) {
            $total = 0;
            $cart = $_SESSION['cart_item'];

            $arr = array();
            $productID = $_POST['productID'];
            $productQty = $_POST['productQty'];
            $productTotal = $_POST['productTotal'];
            $name = $_POST['name'];
            $email = $_POST['email'];
            $phone = $_POST['telephone'];
            $address = $_POST['address'];
            $delivery = $_POST['delivery'];
            $comment = $_POST['message'];

            foreach ($_SESSION['cart_item'] as $item) {

                $total += ($item["product_price"] * $item["quantity"]);
            }

            \R::exec("INSERT INTO `order`( name, email, phone, address, delivery, comments, total) VALUES ('$name', '$email', '$phone', '$address', '$delivery', '$comment', $total)");

            $newid = \R::getInsertID();

            foreach ($_SESSION['cart_item'] as $item) {
                \R::exec("INSERT INTO orderitem( order_id, product_id, nitem, total) VALUES($newid, $item[id], $item[quantity], $item[product_price] * $item[quantity])");
            }

            $to = $email;
            $subject = "Invoice number " . $newid;

            $htmlContent = ' <html lang="en">
                              <head>
                                <meta charset="utf-8">
                                <meta name="viewport" content="width=device-width" />
                                <style type="text/css">
                                .clearfix:after {
                                  content: "";
                                  display: table;
                                  clear: both;
                                }
                            
                                a {
                                  color: #5D6975;
                                  text-decoration: underline;
                                }
                            
                                body {
                                  position: relative;
                                  width: 21cm;
                                  height: 29.7cm;
                                  margin: 0 auto;
                                  color: #001028;
                                  background: #FFFFFF;
                                  font-family: Arial, sans-serif;
                                  font-size: 12px;
                                }
                            
                                header {
                                  padding: 10px 0;
                                  margin-bottom: 30px;
                                }
                            
                                #logo {
                                  text-align: center;
                                  margin-bottom: 10px;
                                }
                            
                                #logo img {
                                  width: 150px;
                                }
                            
                                h1 {
                                  border-top: 1px solid  #5D6975;
                                  border-bottom: 1px solid  #5D6975;
                                  color: #5D6975;
                                  font-size: 2.4em;
                                  line-height: 1.4em;
                                  font-weight: normal;
                                  text-align: center;
                                  margin: 0 0 20px 0;
                                }
                            
                                #project {
                                  float: left;
                                }
                            
                                #project span {
                                  color: #5D6975;
                                  text-align: right;
                                  width: 52px;
                                  margin-right: 10px;
                                  display: inline-block;
                                  font-size: 0.8em;
                                }
                            
                                #company {
                                  float: right;
                                  text-align: right;
                                }
                            
                                #project div,
                                #company div {
                                  white-space: nowrap;
                                }
                            
                                table {
                                  width: 100%;
                                  border-collapse: collapse;
                                  border-spacing: 0;
                                  margin-bottom: 20px;
                                }
                            
                                table tr:nth-child(2n-1) td {
                                  background: #F5F5F5;
                                }
                            
                                table th,
                                table td {
                                  text-align: center;
                                }
                            
                                table th {
                                  text-align: right;
                                  padding: 5px 20px;
                                  color: #5D6975;
                                  border-bottom: 1px solid #C1CED9;
                                  white-space: nowrap;
                                  font-weight: normal;
                                }
                            
                                table .service{
                                  text-align: left;
                                }
                            
                                table td {
                                  padding: 20px;
                                  text-align: right;
                                }
                            
                                table td.service {
                                  vertical-align: top;
                                }
                            
                                table td.unit,
                                table td.qty,
                                table td.total {
                                  font-size: 1.2em;
                                }
                            
                                table td.grand {
                                  border-top: 1px solid #5D6975;;
                                }
                            
                                #notices .notice {
                                  color: #5D6975;
                                  font-size: 1.2em;
                                }
                            
                                footer {
                                  color: #5D6975;
                                  width: 100%;
                                  height: 30px;
                                  position: absolute;
                                  bottom: 0;
                                  border-top: 1px solid #C1CED9;
                                  padding: 8px 0;
                                  text-align: center;
                                }
</style>
                              </head>
                              <body>
                                <header class="clearfix">
                                  <div id="logo">
                                    <img src="https://goo.gl/GV04zk" alt="MKR Kild">
                                  </div>
                                  <h1> INVOICE #' . $newid . '</h1>
                                  <div id="company" class="clearfix">
                                    <div>MKR Kild</div>
                                    <div>Turu 72,<br /> Tartu</div>
                                    <div><?= __("Phone number")?>: +372 555 555 55</div>
                                    <div><a href="mailto:mkrkild@gmail.com">mkrkild@gmail.com</a></div>
                                  </div>
                                  <div id="project">
                                    <div><span>Client </span>' . ' ' . $name . '</div>
                                    <div><span>Address </span>' . ' ' . $address . '</div>
                                    <div><span>Email </span> ' . ' ' . $email . '</div>
                                    <div><span>Invoice Date </span>' . ' ' . date("Y/m/d") . '</div>
                                  </div>
                                </header>
                                  <table>
                                    <thead>
                                      <tr>
                                        <th class="service" colspan="2">PRODUCT</th>
                                        <th>PRICE</th>
                                        <th>QTY</th>
                                        <th>VAT 20%</th>
                                        <th>TOTAL</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>';
            $vat= 0.2;
                                        $result = \R::getAll("select product.product_name as pname, product.product_price as pprice, orderitem.nitem as qty, orderitem.total as tot from product left join orderitem on orderitem.product_id = product.id
left join `order` on `order`.id = orderitem.order_id WHERE `order`.id = $newid");
            foreach ($result as $key=>$cartitem) {
                $vatsum = 0;
                $vatsum += $cartitem['pprice'] * $vat;
                $htmlContent .= "<td class='service' colspan='2'>$cartitem[pname]</td>"
                                        . "<td class='unit'>{$cartitem['pprice']}</td>"
                                        . "<td class='qty'>{$cartitem['qty']}</td>"
                                        . "<td> $vatsum </td>"
                                        . "<td class='total'> {$cartitem['tot']}</td>"
                                      . "</tr>"
                                      . "<tr>";
            }
            $totalvat = 0;
            $totalvat += $total * $vat;
            $grandtot = 0;
            $grandtot+=$total+$totalvat;
            $htmlContent .="<td colspan='5'>SUBTOTAL</td>"
                           . "<td class='total'>$total</td>"
                                      ."</tr>"
                                      ."<tr>"
                                      ."<td colspan='5'>VAT 20%</td>"
                                       ." <td class='total'>$totalvat</td>"
                                      ."</tr>"
                                      ."<tr>"
                                        ."<td colspan='5' class='grand total'>GRAND TOTAL</td>"
                                        ."<td class='grand total'> $grandtot </td>"
                                      ."</tr>"
                                 ."</tbody>"
                                  ."</table>"
                                  ."<div id='notices'>"
                                    ."<div>Bank: Swedbank AS</div>"
                                    ."<div class='notice'>IBAN</div>"
                                    ."<div>EE882200221047724657</div>"
                                ."</div>"
                                ."</main>"
                                ."<footer>"
                                  ."Invoice was created on a computer and is valid without the signature and seal."
                                ."</footer>"
                              ."</body>"
                            ."</html>";

            // echo $htmlContent;
// Set content-type header for sending HTML email
            $headers = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

// Additional headers
            $headers .= 'From: MKR Kild<sender@example.com>' . "\r\n";

// Send email
            if (mail($to, $subject, $htmlContent, $headers)):
                $successMsg = 'Email has been sent successfully.';
            else:
                $errorMsg = 'Email sending failed.';

            endif;

        } unset($_SESSION['cart_item']);

    }

}
