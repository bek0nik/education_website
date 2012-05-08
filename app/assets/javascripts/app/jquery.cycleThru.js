/**
 * jQuery random background changer
 * @name Random Background Changer
 * @author Charles Harvey - http://www.charles-harvey.co.uk
 * @version 0.1
 * @date September 4 2009
 * @category jQuery plugin
 * @copyright (c) 2009 Charles Harvey
 */


(function($) {

	$.cycleThru = {
		defaults: {
			delay: 3000,

		}
	}
    $.fn.extend({
        cycleThru:function(config) {
            var config = $.extend({}, $.cycleThru.defaults, config);
			return this.each(function() {
				var delay = config.delay;
				var ulid = $(this).attr("id");
				var j = 0;
				var jmax = $(this).children("li").length -1;

				function cyclee(){
					$("ul#" + ulid + " li:eq(" + j + ")")
						.animate({"opacity" : "1"} ,1500)
						.animate({"opacity" : "1"}, delay)
						.animate({"opacity" : "0"}, 1500, function(){
							(j == jmax) ? j=0 : j++;
							cyclee();
					});
				};
				cyclee();
            })
        }
    })
})(jQuery);
