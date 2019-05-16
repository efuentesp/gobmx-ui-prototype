
<category-add>
	<page id="category-add" title="Agregar Category">
		<formbox title="Datos de Category" icon="fa fa-check-circle-o" action="create" return="category-admin">
			<div class="row">
				<div class="col-md-6">
				<attach-photo id="Picture" label="Picture" height="200" width="400" maxsizemb="7" filetypes="jpg, png, bmp" required=true disabled=false />
				</div>
			
			<p hidden>1</p>
				<div class="col-md-6">	
				<inputbox id="Name" type="text" label="Name" value="" placeholder="Name del Category" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>2</p>
		</formbox>
	</page>
</category-add>	
