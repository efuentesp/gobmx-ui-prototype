
<customer-delete>
	<page id="customer-delete" title="Eliminar Customer">
		<formbox title="Datos de Customer" icon="fa fa-check-circle-o" action="delete" return="customer-admin">
			<div class="row">
				
			
			<p hidden>1</p>
				<div class="col-md-6">	
				<outputtext id="EmailAddress" label="EmailAddress" value="EmailAddress del Customer" />
				</div>
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">	
				<outputtext id="FullName" label="FullName" value="FullName del Customer" />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">	
				<outputtext id="PhoneNumber" label="PhoneNumber" value="PhoneNumber del Customer" />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">	
				<outputtext id="Address1" label="Address1" value="Address1 del Customer" />
				</div>
			
			<p hidden>5</p>
				<div class="col-md-6">	
				
				<outputtext id="Address2" label="Address2" value="Address2 del Customer" />
				</div>
			</div>
			
			<p hidden>6</p>
			<div class="row">
				<div class="col-md-6">	
				<outputtext id="City" label="City" value="City del Customer" />
				</div>
			
			<p hidden>7</p>
				<div class="col-md-6">	
				<outputtext id="State" label="State" value="State del Customer" />
				</div>
			</div>
			
			<p hidden>8</p>
			<div class="row">
				<div class="col-md-6">	
				<outputtext id="PostalCode" label="PostalCode" value="PostalCode del Customer" />
				</div>
			
			<p hidden>9</p>
				<div class="col-md-6">	
				<outputtext id="Country" label="Country" value="Country del Customer" />
				</div>
			</div>
			
			<p hidden>10</p>
		</formbox>
	</page>
</customer-delete>
