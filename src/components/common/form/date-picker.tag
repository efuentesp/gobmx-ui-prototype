<date-picker>
	<div class="form-group datepicker-group">
		<label class="control-label" for="calendar">{ opts.label }</label>
		<input class="form-control" type="text" id="{ opts.id }DtPkr">
		<span id="spnFecha" class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
	</div>

	<script>

			this.on('mount', function(){

				$( "#"+opts.id+"DtPkr" ).datepicker();

			});

	</script>
</date-picker>
