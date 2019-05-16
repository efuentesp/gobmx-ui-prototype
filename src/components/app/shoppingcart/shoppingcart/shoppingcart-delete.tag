
<shoppingcart-delete>
	<page id="shoppingcart-delete" title="Eliminar Shoppingcart">
		<formbox title="Datos de Shoppingcart" icon="fa fa-check-circle-o" action="delete" return="shoppingCart-admin">
			<div class="row">
				
			
			<p hidden>1</p>
				
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">
				
				<outputtext id="SubTotal" label="SubTotal" value="SubTotal del ShoppingCart" />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">
				
				<outputtext id="TaxAmount" label="TaxAmount" value="TaxAmount del ShoppingCart" />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">
				
				<outputtext id="DiscountAmount" label="DiscountAmount" value="DiscountAmount del ShoppingCart" />
				</div>
			
			<p hidden>5</p>
				<div class="col-md-6">
				
				<outputtext id="TotalAmount" label="TotalAmount" value="TotalAmount del ShoppingCart" />
				</div>
			</div>
			
			<p hidden>6</p>
		</formbox>
	</page>
</shoppingcart-delete>
