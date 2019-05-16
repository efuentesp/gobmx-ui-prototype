
<productoncart-add>
	<page id="productoncart-add" title="Agregar Productoncart">
		<formbox title="Datos de Productoncart" icon="fa fa-check-circle-o" action="create" return="productOnCart-admin">
			<div class="row">
				
				<div class="col-md-6">
				<label class="control-label">ShoppingCart<font color="red"> *</font></label>
				<div class="form-group">
				<!-- Modal -->
				<search-box id="searchboxsample" link="ShoppingCartmodal" caption="ShoppingCart" placeholder="ShoppingCart" />
				<modal-box id="ShoppingCartmodal"  data="shoppingcart-results" title="Seleccionar ShoppingCart " action="select-multi" pagination="true"/>
				</div>
				</div>
			
			<p hidden>1</p>
				
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">
				
				<inputbox id="Price" type="currency" label="Price" value="" precision=2 placeholder="Price del ProductOnCart" required=true disabled=false min=1.00 max=1000000.00 />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">			
				<inputbox id="Quantity" type="number" pattern="[0-9]" onkeypress="return event.charCode >= 48 && event.charCode <= 57" label="Quantity" value="" placeholder="Quantity del ProductOnCart" required=true disabled=false  />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">
				
				<inputbox id="Total" type="currency" label="Total" value="" precision=2 placeholder="Total del ProductOnCart" required=true disabled=false min=1.00 max=1000000.00 />
				</div>
			</div>
			
			<p hidden>5</p>
		</formbox>
	</page>
</productoncart-add>	
