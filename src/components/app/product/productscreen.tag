<productscreen>
	<page id="productscreen" title="Product">
		<div class="row">
			<div class="col-md-2 ">
				<img src="https://fakeimg.pl/150x150/?text=Picture&font=lobster" alt="Picture">
			</div>
			<div class="col-md-8 ">
				<outputtext label="Name" value="Awesome Bronze Keyboard"></outputtext>
				<outputtext label="Description" value="Fugit ea rerum aut voluptatibus. Unde voluptates est asperiores ex. Suscipit eveniet ex. Et soluta voluptas adipisci provident quo."></outputtext>
				<outputtext label="Price" value="$52,051.00"></outputtext>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-md-offset-2 ">
				<inputbox id="quantity" type="integer" label="Quantity" value="" placeholder="" required=true disabled=false min=0 max=1000000 />
			</div>
		</div>
		<div class="ln_solid"></div>
		<submit-button id="addtocartcommand" to="/shoppingcart/shoppingcartscreen/" action="custom" icon="fa fa-shopping-cart" caption="Add to Cart" type="normal" state="primary" ></submit-button>
		<div class="ln_solid"></div>
	</page>
</productscreen>
