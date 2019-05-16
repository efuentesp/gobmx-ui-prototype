
<shoppingcart-add>
	<page id="shoppingcart-add" title="Agregar Shoppingcart">
		<formbox title="Datos de Shoppingcart" icon="fa fa-check-circle-o" action="create" return="shoppingCart-admin">
			<div class="row">
				
			
			<p hidden>1</p>
				
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">
				
				<inputbox id="SubTotal" type="currency" label="SubTotal" value="" precision=2 placeholder="SubTotal del ShoppingCart" required=true disabled=false min=1.00 max=1000000.00 />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">
				
				<inputbox id="TaxAmount" type="currency" label="TaxAmount" value="" precision=2 placeholder="TaxAmount del ShoppingCart" required=true disabled=false min=1.00 max=1000000.00 />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">
				
				<inputbox id="DiscountAmount" type="currency" label="DiscountAmount" value="" precision=2 placeholder="DiscountAmount del ShoppingCart" required=true disabled=false min=1.00 max=1000000.00 />
				</div>
			
			<p hidden>5</p>
				<div class="col-md-6">
				
				<inputbox id="TotalAmount" type="currency" label="TotalAmount" value="" precision=2 placeholder="TotalAmount del ShoppingCart" required=true disabled=false min=1.00 max=1000000.00 />
				</div>
			</div>
			
			<p hidden>6</p>
		</formbox>
	</page>
</shoppingcart-add>	
