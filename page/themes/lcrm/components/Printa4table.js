export default { 
	name: "a4printtable", 
	template: `
	<div class="printarea">
		<div v-for="i in 10"class="page A4" style="width:210mm;height: 296mm;overflow: hidden;position: relative;box-sizing: border-box;page-break-after: always;background: white;box-shadow: 0 0.5mm 2mm rgba(0,0,0,.3);margin: 2.5mm;">
			<div class="subpage">Page {{i}}/10</div>
		</div>
		</div>
	</div>
	`
};