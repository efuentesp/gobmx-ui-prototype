<date-picker>
	<label if={ opts.required == 'true'}   for={opts.type}>{ opts.label}<font class="lblDPFNT"> *</font></label>
	<label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
	<fieldset>		
		<div id={ opts.id } class="input-group">
			<span class="input-group-addon">
				<i class="glyphicon glyphicon-calendar"></i>
			</span>
			<input type="text" id={ "i-date-" + opts.id } placeholder={opts.placeholder} class="form-control" name="form-inputbox">
		</div>
	</fieldset>

	<script>

		function setDatePicker(){
			var dpId = "#" +  opts.id;
			var dpDateFormat = "";
			if ( opts.format ) {
				dpDateFormat = opts.format
			} else {
				dpDateFormat = "dd/mm/yyyy"
			}
			showPicker(dpId, dpDateFormat, opts.mindate, opts.maxdate, opts.value);
		}

		this.on('mount', function() {
			setTimeout(function(){
				setDatePicker();
			}, 300);
		})

		// This is when page is reloaded and refreshed
		this.on('update', function() {
			setDatePicker();
		})


		function showPicker(id, dateFormat, minDate, maxDate, value){

			var iDatePicker = document.getElementById("i-date-" + opts.id);

			$(id).datepicker({
				format: dateFormat,
				startDate: minDate,
				endDate: maxDate
			});

			if (value && ! iDatePicker.value){
				$(id).datepicker('setDate', value);
			}

			$(id).on('changeDate', function(ev){
				$(this).datepicker('hide');
			});
		}

	</script>

	<style>
		.form-control-feedback.left {
			left: 1px;
		}
		
		date-picker:hover>label>font[class~=lblDPFNT] {
			color:red !important;
		}

		date-picker[required~="true"]:hover fieldset div  {
			border: 1px solid red !important;
			border-radius: 5px !important;
		}		
	</style>
</date-picker>
