<date-picker>
	<label for="calendar" if={ opts.required == 'true'}   for={opts.type}>{ opts.label}<font color="red"> *</font></label>
	<label for="calendar" if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
	<fieldset>
		<div class="form-group datepicker-group" id={ opts.id } >
			<input type="text" placeholder={opts.placeholder} id={ "i-date-" + opts.id } />
			<span class="glyphicon glyphicon-calendar" aria-hidden="true">
				<span></span>
			</span>
		</div>
	</fieldset>

	<script>

		function setDatePicker(){
			alert('Mensaje JPB');
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
	</style>
</date-picker>
