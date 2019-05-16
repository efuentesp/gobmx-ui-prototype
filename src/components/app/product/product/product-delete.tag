
<product-delete>
	<page id="product-delete" title="Eliminar Product">
		<formbox title="Datos de Product" icon="fa fa-check-circle-o" action="delete" return="product-admin">
			<div class="row">
				
				<div class="col-md-6">
				<label class="control-label">Category<font color="red"> *</font></label>
				<div class="form-group">
				<small id="searchboxsample" required=false>Seleccionar Category</small>
				</div>
				</div>
			
			<p hidden>1</p>
				<div class="col-md-6">
				<outputtext id="Picture" label="Picture" value="Picture" />
				</div>
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">	
				<outputtext id="Sku" label="Sku" value="Sku del Product" />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">	
				<outputtext id="Name" label="Name" value="Name del Product" />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">
				<outputtext id="Description" label="Description" value="Ingresa tus comentarios" />
				</div>
			
			<p hidden>5</p>
				<div class="col-md-6">
				
				<outputtext id="Price" label="Price" value="Price del Product" />
				</div>
			</div>
			
			<p hidden>6</p>
		</formbox>
	</page>
</product-delete>
