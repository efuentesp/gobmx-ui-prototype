
<product-edit>
	<page id="product-edit" title="Editar Product">
		<formbox title="Datos de Product" icon="fa fa-check-circle-o" action="update" return="product-admin">
			<div class="row">
				
				<div class="col-md-6">
				<label class="control-label">Category<font color="red"> *</font></label>
				<div class="form-group">
				<!-- Modal -->
				<search-box id="searchboxsample" link="Categorymodal" caption="Category" placeholder="Category" />
				<modal-box id="Categorymodal"  data="category-results" title="Seleccionar Category " action="select-multi" pagination="true"/>
				</div>
				</div>
			
			<p hidden>1</p>
				<div class="col-md-6">
				<attach-photo id="Picture" label="Picture" height="200" width="400" maxsizemb="7" filetypes="jpg, png, bmp" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">	
				<inputbox id="Sku" type="text" label="Sku" value="" placeholder="Sku del Product" required=true disabled=false />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">	
				<inputbox id="Name" type="text" label="Name" value="" placeholder="Name del Product" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">
				<inputbox id="Description" type="textarea" label="Description" value="" placeholder="Ingresa tus comentarios" required=true disabled=false />
				</div>
			
			<p hidden>5</p>
				<div class="col-md-6">
				
				<inputbox id="Price" type="currency" label="Price" value="" precision=2 placeholder="Price del Product" required=true disabled=false min=1.00 max=1000000.00 />
				</div>
			</div>
			
			<p hidden>6</p>
		</formbox>
	</page>
</product-edit>
