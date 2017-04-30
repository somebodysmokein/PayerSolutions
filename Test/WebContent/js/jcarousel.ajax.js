(function($) {
    $(function() {
        var Opsjcarousel = $('.Opsjcarousel').jcarousel();
        var valaddsjcarousel = $('.valaddsjcarousel').jcarousel();
        var pocjcarousel = $('.pocjcarousel').jcarousel();
        $('.jcarousel-control-prev')
            .on('jcarouselcontrol:active', function() {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function() {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '-=1'
            });

        $('.jcarousel-control-next')
            .on('jcarouselcontrol:active', function() {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function() {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '+=1'
            });

        var setupOps = function(data) {
            var html = '<ul>';

            $.each(data.items, function() {
               /* html += '<li><img src="' + this.src + '" alt="' + this.title + '"></li>';*/
            	/*html +='<li><div class="card" style="width: 100px;">'+
            	'<div class="card-section">'+
            	  '<img src="' + this.src + '" alt="' + this.title + '"></div></div></li>';*/
            	html +='<li> <div class="card-panel '+this.color+' large">'+
                    '<div class="card-content white-text">'+
                '<span class="card-title">'+this.title+'</span></div></div></li>';
             
            });

            html += '</ul>';

            // Append items
            Opsjcarousel
                .html(html);

            // Reload carousel
            Opsjcarousel
                .jcarousel('reload');
        };
        var setupVAdds = function(data) {
            var html = '<ul>';

            $.each(data.items, function() {
               /* html += '<li><img src="' + this.src + '" alt="' + this.title + '"></li>';*/
            	/*html +='<li><div class="card" style="width: 100px;">'+
            	'<div class="card-section">'+
            	  '<img src="' + this.src + '" alt="' + this.title + '"></div></div></li>';*/
            	html +='<li> <div class="card-panel '+this.color+' large">'+
                    '<div class="card-content white-text">'+
                '<span class="card-title">'+this.title+'</span></div></div></li>';
             
            });

            html += '</ul>';

            // Append items
            valaddsjcarousel
                .html(html);

            // Reload carousel
            valaddsjcarousel
                .jcarousel('reload');
        };

        var setupPoc = function(data) {
            var html = '<ul>';

            $.each(data.items, function() {
               /* html += '<li><img src="' + this.src + '" alt="' + this.title + '"></li>';*/
            	/*html +='<li><div class="card" style="width: 100px;">'+
            	'<div class="card-section">'+
            	  '<img src="' + this.src + '" alt="' + this.title + '"></div></div></li>';*/
            	html +='<li> <div class="card-panel '+this.color+' large">'+
                    '<div class="card-content white-text">'+
                '<span class="card-title">'+this.title+'</span></div></div></li>';
             
            });

            html += '</ul>';

            // Append items
            pocjcarousel
                .html(html);

            // Reload carousel
            pocjcarousel
                .jcarousel('reload');
        };


        $.getJSON('Ops.json', setupOps);
        $.getJSON('valadds.json', setupVAdds);
        $.getJSON('poc.json', setupPoc);
    });
})(jQuery);
