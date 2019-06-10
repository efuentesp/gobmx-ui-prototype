<select-box>
	<label if={ opts.required == 'true'} >{ opts.placeholder}<font class="lblSBFNT"> *</font></label>
    <label if={ opts.required == 'false' || ( ! opts.required && opts.placeholder ) } >{ opts.placeholder }</label>

	<div id={ opts.id }>
		<yield/>
	</div>
	<br/>

	<style>
	select-box:hover>label>font[class~=lblSBFNT] {
        color:red !important;
    }

	select-box[required~="true"]:hover div {
		border: 1px solid red !important;
		border-radius: 5px !important;
    }

	</style>	
</select-box>
