
<creditcard-delete>
	<page id="creditcard-delete" title="Eliminar Creditcard">
		<formbox title="Datos de Creditcard" icon="fa fa-check-circle-o" action="delete" return="creditCard-admin">
			<div class="row">
				
				<div class="col-md-6">
				<label class="control-label">Customer<font color="red"> *</font></label>
				<div class="form-group">
				<small id="searchboxsample" required=false>Seleccionar Customer</small>
				</div>
				</div>
			
			<p hidden>1</p>
				<div class="col-md-6">	
				<outputtext id="CardName" label="CardName" value="CardName del CreditCard" />
				</div>
			</div>
			
			<p hidden>2</p>
			<div class="row">
				<div class="col-md-6">	
				<outputtext id="CardNumber" label="CardNumber" value="CardNumber del CreditCard" />
				</div>
			
			<p hidden>3</p>
				<div class="col-md-6">
				<outputtext id="ExpirationDate" label="ExpirationDate" value="ExpirationDate" />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-6">	
				<outputtext id="CVV" label="CVV" value="CVV del CreditCard" />
				</div>
			</div>
			
			<p hidden>5</p>
		</formbox>
	</page>
</creditcard-delete>
