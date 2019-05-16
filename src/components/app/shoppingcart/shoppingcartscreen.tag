<shoppingcartscreen>
	<page id="shoppingcartscreen" title="Shopping Cart">
		<table class="table">
			<thead>
				<tr>
					<th>Product</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>YYYYYYYY</th>
					<th>$74,225.00</th>
					<th>5,040</th>
					<th>$84,428.00</th>
				</tr>
				<tr>
					<th>YYYYYYYY</th>
					<th>$61,106.00</th>
					<th>4,045</th>
					<th>$96,876.00</th>
				</tr>
				<tr>
					<th>YYYYYYYY</th>
					<th>$12,249.00</th>
					<th>443</th>
					<th>$15,415.00</th>
				</tr>
				<tr>
					<th>YYYYYYYY</th>
					<th>$19,553.00</th>
					<th>8,397</th>
					<th>$73,588.00</th>
				</tr>
				<tr>
					<th>YYYYYYYY</th>
					<th>$3,439.00</th>
					<th>6,460</th>
					<th>$4,454.00</th>
				</tr>
				<tr>
					<th>YYYYYYYY</th>
					<th>$99,401.00</th>
					<th>8,670</th>
					<th>$65,236.00</th>
				</tr>
				<tr>
					<th>YYYYYYYY</th>
					<th>$36,662.00</th>
					<th>5,952</th>
					<th>$58,562.00</th>
				</tr>
				<tr>
					<th>YYYYYYYY</th>
					<th>$63,183.00</th>
					<th>7,226</th>
					<th>$42,402.00</th>
				</tr>
			</tbody>
		</table>
		<outputtext label="SubTotal" value="$28,657.00"></outputtext>
		<outputtext label="TaxAmount" value="$50,392.00"></outputtext>
		<outputtext label="DiscountAmount" value="$64,916.00"></outputtext>
		<outputtext label="TotalAmount" value="$17,843.00"></outputtext>
		<div class="ln_solid"></div>
		<submit-button id="checkoutcommand" to="/shoppingcart/checkoutscreen/" action="custom" icon="fa fa-dollar" caption="Checkout" type="normal" state="primary" ></submit-button>
		<submit-button id="emptycartcommand" to="/shoppingcart/shoppingcartscreen/" action="custom" icon="fa fa-trash" caption="Empty the Cart" type="outlined" state="danger" ></submit-button>
		<div class="ln_solid"></div>
		<submit-button id="continueshoppingflow" to="/product/productlistscreen/" action="custom" icon="fa fa-arrow-left" caption="Continue Shopping" type="outlined" state="primary" ></submit-button>
	</page>
</shoppingcartscreen>
