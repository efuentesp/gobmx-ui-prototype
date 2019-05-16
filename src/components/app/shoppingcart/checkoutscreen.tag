<checkoutscreen>
	<page id="checkoutscreen" title="Checkout">
		<formbox id="customerinformationform" title="">
			<panel label="Customer Information">
				<inputbox id="fullname" type="text" label="FullName" value="" placeholder="FullName" required=true disabled=false />
				<inputbox id="emailaddress" type="email"  label="EmailAddress" value="" placeholder="EmailAddress" required=true disabled=false />
				<inputbox id="phonenumber" type="text" label="PhoneNumber" value="" placeholder="PhoneNumber" required=true disabled=false />
				<inputbox id="address1" type="text" label="Address1" value="" placeholder="Address1" required=true disabled=false />
				<inputbox id="address2" type="text" label="Address2" value="" placeholder="Address2" required=false disabled=false />
				<inputbox id="postalcode" type="text" label="PostalCode" value="" placeholder="PostalCode" required=true disabled=false />
				<inputbox id="city" type="text" label="City" value="" placeholder="City" required=true disabled=false />
				<inputbox id="state" type="text" label="State" value="" placeholder="State" required=true disabled=false />
				<inputbox id="country" type="text" label="Country" value="" placeholder="Country" required=true disabled=false />
			</panel>
			<panel label="Payment Information">
				<inputbox id="cardname" type="text" label="CardName" value="" placeholder="CardName" required=true disabled=false />
				<inputbox id="cardnumber" type="text" label="CardNumber" value="" placeholder="CardNumber" required=true disabled=false />
				<date-picker id="expirationdate" type="date" label="ExpirationDate" value="" placeholder="ExpirationDate" required=true disabled=false format="yyyy/mm/dd" mindate="1900-01-01" maxdate="2200-12-31" />
				<inputbox id="cvv" type="text" label="CVV" value="" placeholder="CVV" required=true disabled=false />
			</panel>
			<div class="ln_solid"></div>
			<submit-button id="executepaymentcommand" to="/shoppingcart/paymentconfirmationscreen/" action="custom" icon="fa fa-check" caption="Pay" type="normal" state="primary" ></submit-button>
		</formbox>
		<div class="ln_solid"></div>
	</page>
</checkoutscreen>
