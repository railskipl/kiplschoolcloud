var Fedena = Fedena || {};
Fedena = (function($,window,document,Fedena){
	Fedena.selector ;

	Fedena.AutoComplete = {
		default_options: {
			source : "/",
			minLength: 3,
			select : function(event,ui) {
				var data = 'name='+ui.item.value;
				console.log(ui.item.value);
				$.ajax({
					url : '/locate_user',
					type: 'GET',
					dataType: 'html',
					data: data,
					success: function(html) {
						console.log(html);
						$('div.container').html(html);
					},
					error: function() {
						console.log('Error');
					}
				})
			},
			change: function() {
				// clear the User field;
			}

		},

		init: function(selector) {
			Fedena.selector = $(selector);
		},
		autoComplete: function() {

		},
		apply: function(options) {
			var options = options || {};
			options = $.extend(this.default_options,options)
			Fedena.selector.autocomplete(options)
		}
	}

	$(document).ready(function(){
		if($('#query').length > 0)  {
			Fedena.AutoComplete.init("#query");
			Fedena.AutoComplete.apply({source : "/route_search"});
		}	
	})
	return Fedena;
})(jQuery,this,this.document,Fedena)