
<customer-edit>
	<page id="customer-edit" title="Editar Customer">
		<formbox title="Datos de Customer" icon="fa fa-check-circle-o" action="update" return="customer-admin">
			<div class="row">
				
			
			<p hidden>1</p>
				<div class="col-md-6">	
				<inputbox id="EmailAddress" type="email" label="EmailAddress" value="" placeholder="EmailAddress del Customer" required=true disabled=false  />
				</div>
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">	
				<inputbox id="FullName" type="text" label="FullName" value="" placeholder="FullName del Customer" required=true disabled=false />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">	
				<inputbox id="PhoneNumber" type="text" label="PhoneNumber" value="" placeholder="PhoneNumber del Customer" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">	
				<inputbox id="Address1" type="text" label="Address1" value="" placeholder="Address1 del Customer" required=true disabled=false />
				</div>
			
			<p hidden>5</p>
				<div class="col-md-6">	
				
				<inputbox id="Address2" type="text" label="Address2" value="" placeholder="Address2 del Customer" required=false
				 disabled=false />
				</div>
			</div>
			
			<p hidden>6</p>
			<div class="row">
				<div class="col-md-6">	
				<inputbox id="City" type="text" label="City" value="" placeholder="City del Customer" required=true disabled=false />
				</div>
			
			<p hidden>7</p>
				<div class="col-md-6">	
				<inputbox id="State" type="text" label="State" value="" placeholder="State del Customer" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>8</p>
			<div class="row">
				<div class="col-md-6">	
				<inputbox id="PostalCode" type="text" label="PostalCode" value="" placeholder="PostalCode del Customer" required=true disabled=false />
				</div>
			
			<p hidden>9</p>
				<div class="col-md-6">	
				<inputbox id="Country" type="text" label="Country" value="" placeholder="Country del Customer" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>10</p>
		</formbox>
	</page>
</customer-edit>
