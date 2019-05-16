
<creditcard-edit>
	<page id="creditcard-edit" title="Editar Creditcard">
		<formbox title="Datos de Creditcard" icon="fa fa-check-circle-o" action="update" return="creditCard-admin">
			<div class="row">
				
				<div class="col-md-6">
				<label class="control-label">Customer<font color="red"> *</font></label>
				<div class="form-group">
				<!-- Modal -->
				<search-box id="searchboxsample" link="Customermodal" caption="Customer" placeholder="Customer" />
				<modal-box id="Customermodal"  data="customer-results" title="Seleccionar Customer " action="select-multi" pagination="true"/>
				</div>
				</div>
			
			<p hidden>1</p>
				<div class="col-md-6">	
				<inputbox id="CardName" type="text" label="CardName" value="" placeholder="CardName del CreditCard" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">	
				<inputbox id="CardNumber" type="text" label="CardNumber" value="" placeholder="CardNumber del CreditCard" required=true disabled=false />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">
				<date-picker id="ExpirationDate" type= "date" label="ExpirationDate" placeholder="ExpirationDate" required=true disabled=false />	
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">	
				<inputbox id="CVV" type="text" label="CVV" value="" placeholder="CVV del CreditCard" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>5</p>
		</formbox>
	</page>
</creditcard-edit>
