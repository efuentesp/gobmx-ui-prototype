
<productoncart-delete>
	<page id="productoncart-delete" title="Eliminar Productoncart">
		<formbox title="Datos de Productoncart" icon="fa fa-check-circle-o" action="delete" return="productOnCart-admin">
			<div class="row">
				
				<div class="col-md-6">
				<label class="control-label">ShoppingCart<font color="red"> *</font></label>
				<div class="form-group">
				<small id="searchboxsample" required=false>Seleccionar ShoppingCart</small>
				</div>
				</div>
			
			<p hidden>1</p>
				
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">
				
				<outputtext id="Price" label="Price" value="Price del ProductOnCart" />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">			
				<outputtext id="Quantity" label="Quantity" value="Quantity del ProductOnCart" />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">
				
				<outputtext id="Total" label="Total" value="Total del ProductOnCart" />
				</div>
			</div>
			
			<p hidden>5</p>
		</formbox>
	</page>
</productoncart-delete>
