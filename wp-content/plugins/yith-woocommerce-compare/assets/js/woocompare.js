jQuery(document).ready(function($) {
    "use strict";

    // ##### ADD TO COMPARE TABLE #####

    $(document).on( 'click', '.product a.compare:not(.added)', function(e) {
        e.preventDefault();

        var button = $(this),
            widget_list = $('.yith-woocompare-widget ul.products-list'),
            related    = button.parents( '#yith-woocompare-related' ),
            is_related = related.length ? true : false,
            iframe     = is_related ? related.data( 'iframe' ) : false,
            data;

        // set data
        data = {
            action: yith_woocompare.actionadd,
            id: button.data('product_id'),
            context: 'frontend',
            is_related: is_related,
            iframe: iframe
        };

        // add ajax loader
        if( typeof $.fn.block != 'undefined' ) {
            button.block({message: null, overlayCSS: { background: '#fff url(' + yith_woocompare_premium.loader + ') no-repeat center', backgroundSize: '20px 20px', opacity: 0.6}});
            widget_list.block({message: null, overlayCSS: { background: '#fff url(' + yith_woocompare_premium.loader + ') no-repeat center', backgroundSize: '20px 20px', opacity: 0.6}});
        }

        $.ajax({
            type: 'post',
            url: yith_woocompare.ajaxurl.toString().replace( '%%endpoint%%', yith_woocompare.actionadd ),
            data: data,
            dataType: is_related ? 'html' : 'json',
            success: function( response ) {

                if( is_related ){

                    var content  = $( '#yith-woocompare' );

                    content.replaceWith( $( response ).filter( '#yith-woocompare' ) );

                    update_widget();

                    $(document).trigger('yith_woocompare_page_refreshed', [ false ] );
                }
                else {

                    button.addClass('added')
                        .attr('href', response.table_url )
                        .text(yith_woocompare_premium.is_page ? yith_woocompare_premium.view_label : yith_woocompare.added_label);

                    hide_show_widget( widget_list );
                    widget_list.html( response.widget_table );

                    if ( yith_woocompare.auto_open == 'yes' && ! response.only_one && ! yith_woocompare_premium.is_page )
                        $('body').trigger('yith_woocompare_open_popup', {response: response.table_url, button: button});
                }

                // add the product in the widget
                if( typeof $.fn.block != 'undefined' ) {
                    button.unblock();
                    widget_list.unblock();
                }
            }
        });
    });


    // ##### OPEN COMPARE POPUP #####

    if( ! yith_woocompare_premium.is_page ) {

        $(document).on('click', '.product a.compare.added', function (ev) {
            ev.preventDefault();

            var table_url = this.href;

            if (typeof table_url == 'undefined')
                return;

            $('body').trigger('yith_woocompare_open_popup', {response: table_url, button: $(this)});
        });
    }


    // ##### OPEN POPUP COMPARE ACTION #####

    $('body').on( 'yith_woocompare_open_popup', function( e, data ) {

        var response = data.response,
            button   = data.button;

        if ( $(window).width() >= 768 ) {
            $.colorbox({
                href: response,
                iframe: true,
                width: '80%',
                height: '80%',
                fixed: true,
                className: 'yith_woocompare_colorbox',
                onClosed: function(){

                    if( yith_woocompare_premium.im_in_page ) {
                        location.reload();
                    }
                    else {
                        update_widget();
                    }
                },
                onComplete: function(){
                    // related slider
                    related_slider();
                    // data Tables
                    $.dataTableFunction();
                }
            });

            $(window).resize(function () {
                $.colorbox.resize({
                    width: '90%',
                    height: '90%'
                });
            });

        } else {

            window.location = yith_woocompare_premium.page_url;
        }
    });


    // ##### REMOVE FROM COMPARE ######

    $(document).on( 'click', '.remove a', function(e){
        e.preventDefault();

        var button = $(this),
            data = {
                action: yith_woocompare.actionremove,
                id: button.data('product_id'),
                iframe: button.data('iframe'),
                context: 'frontend'
            };

        // add ajax loader
        if( typeof $.fn.block != 'undefined' ) {
            button.block({
                message: null,
                overlayCSS: {
                    background: '#fff url(' + yith_woocompare_premium.loader + ') no-repeat center',
                    backgroundSize: '20px 20px',
                    opacity: 0.6
                }
            });
        }

        $.ajax({
            type: 'post',
            url: yith_woocompare.ajaxurl.toString().replace( '%%endpoint%%', yith_woocompare.actionremove ),
            data: data,
            dataType:'html',
            success: function(response){

                var content = $(response).filter('#yith-woocompare');
                // replace content
                $( '#yith-woocompare' ).replaceWith( content );

                $('.compare[data-product_id="' + button.data('product_id') + '"]', window.parent.document).removeClass('added').html( yith_woocompare_premium.button_text );

                update_widget();

                // removed trigger
                $(document).trigger('yith_woocompare_product_removed', [''] );
            }
        });
    });


    // ##### LINK OPEN COMPARE POPUP #####

    $('.yith-woocompare-open a, a.yith-woocompare-open').on('click', function(e){
        e.preventDefault();
        $('body').trigger('yith_woocompare_open_popup', { response: yith_add_query_arg('action', yith_woocompare.actionview) + '&iframe=1' });
    });


    // ##### WIDGET ######

    $('.yith-woocompare-widget')

        // view table (click on compare
        .on('click', 'a.compare', function (e) {
            if( yith_woocompare_premium.is_page ) {
                return;
            }
            e.preventDefault();
            $('body').trigger('yith_woocompare_open_popup', { response: $(this).attr('href') });
        })

        // remove product & clear all
        .on('click', 'li a.remove, a.clear-all', function (e) {
            e.preventDefault();

            var lang = $( '.yith-woocompare-widget .products-list').data('lang');

            var button = $(this),
                prod_id = button.data('product_id'),
                data = {
                    action: yith_woocompare.actionremove,
                    id: prod_id,
                    context: 'frontend',
                    responseType: 'product_list',
                    lang: lang
                },
                product_list = button.parents('.yith-woocompare-widget').find('ul.products-list');

            // add ajax loader
            if( typeof $.fn.block != 'undefined' ) {
                product_list.block({message: null,
                    overlayCSS             : {
                        background    : '#fff url(' + yith_woocompare_premium.loader + ') no-repeat center',
                        backgroundSize: '20px 20px',
                        opacity       : 0.6
                    }
                });
            }

            $.ajax({
                type: 'post',
                url: yith_woocompare.ajaxurl.toString().replace( '%%endpoint%%', yith_woocompare.actionremove ),
                data: data,
                dataType: 'html',
                success: function (response) {

                    var compare = $('#yith-woocompare');

                    if( compare.length ) {
                        $.get( window.location, function( res ) {
                            var content = $(res).find('#yith-woocompare');
                            // replace content
                            compare.replaceWith( content );

                            $(document).trigger('yith_woocompare_page_refreshed', [ content ] );
                        });
                    }

                    // hide show widget
                    hide_show_widget( product_list );

                    product_list.html(response);
                    if( typeof $.fn.block != 'undefined' ) {
                        product_list.unblock();
                    }

                    if( prod_id == 'all' ) {
                        $( '.compare.added' ).removeClass('added').html( yith_woocompare_premium.button_text );
                    }
                    else {
                        $('.compare[data-product_id="' + prod_id + '"]' ).removeClass('added').html( yith_woocompare_premium.button_text );
                    }
                }
            });
        });


    function yith_add_query_arg(key, value)
    {
        key = escape(key); value = escape(value);

        var s = document.location.search;
        var kvp = key+"="+value;

        var r = new RegExp("(&|\\?)"+key+"=[^\&]*");

        s = s.replace(r,"$1"+kvp);

        if(!RegExp.$1) {s += (s.length>0 ? '&' : '?') + kvp;};

        //again, do what you will here
        return s;
    }


    // ##### NAV CATEGORIES ######

    $(document).on( 'click', '#yith-woocompare-cat-nav li > a', function(ev){
        ev.preventDefault();

        var t               = $(this),
            container       = t.closest( '#yith-woocompare'),
            cat             = t.data('cat_id'),
            nav             = t.closest( '#yith-woocompare-cat-nav > ul' ),
            products        = nav.data( 'product_ids' ),
            iframe          = nav.data( 'iframe' );

        $.ajax({
            url: yith_woocompare.ajaxurl.toString().replace( '%%endpoint%%', yith_woocompare_premium.actionfilter ),
            data: {
                action: yith_woocompare_premium.actionfilter,
                yith_compare_cat: cat,
                yith_compare_prod: products,
                context: 'frontend',
                iframe: iframe
            },
            dataType: 'html',
            success: function (response) {

                var content = $(response).filter('#yith-woocompare');
                // replace content
                container.replaceWith( content );

                $(document).trigger('yith_woocompare_page_refreshed', [ content ] );
            }

        })

    });

    // ####### RELATED PRODUCTS SLIDER #######

    var related_slider = function() {
        if (typeof $.fn.owlCarousel != 'undefined') {

            var related = $('#yith-woocompare-related'),
                slider  = related.find('.related-products'),
                nav     = related.find('.related-slider-nav');

            if( ! related.length )
                return;

            slider.owlCarousel({
                autoplay: yith_woocompare_premium.autoplay_related,
                autoplayHoverPause: true,
                loop: true,
                margin: 15,
                responsiveClass : true,
                responsive : {
                    0 : {
                        items: 2
                    },
                    // breakpoint from 480 up
                    480 : {
                        items: 3
                    },
                    // breakpoint from 768 up
                    768 : {
                        items: yith_woocompare_premium.num_related
                    }
                }
            });

            if( nav.length ) {
                nav.find('.related-slider-nav-prev').click(function () {
                    slider.trigger('prev.owl.carousel');
                });

                nav.find('.related-slider-nav-next').click(function () {
                    slider.trigger('next.owl.carousel');
                })
            }
        }
    };

    related_slider();
    $(document).on('yith_woocompare_product_removed yith_woocompare_page_refreshed', related_slider );

    // ########## DATA TABLES ############

    $.dataTableFunction = function( table ) {

        var Tables = ( table && table.length ) ? table : $(document).find( '#yith-woocompare table.compare-list' ),
            dTable;

        if( Tables.length && typeof $.fn.DataTable != 'undefined' && typeof $.fn.imagesLoaded != 'undefined' ) {
            Tables.each( function(){
                var t = $(this);

                t.imagesLoaded( function(){
                    dTable = t.DataTable( {
                        'info': false,
                        'scrollX': true,
                        'scrollCollapse': true,
                        'paging': false,
                        'ordering': false,
                        'searching': false,
                        'autoWidth': false,
                        'destroy': true
                    });

                    new $.fn.dataTable.FixedColumns( dTable, {
                        leftColumns: yith_woocompare_premium.fixedcolumns
                    } );
                });
            });
        }
    };

    $.dataTableFunction( false );

    $(document).on( 'yith_woocompare_product_removed yith_woocompare_page_refreshed', function( ev, content ){
        var table = content ? $( content ).find( 'table.compare-list' ) : false;

        $.dataTableFunction( table );
    });


    // remove add to cart button after added
    $('body').on('added_to_cart', function( ev, fragments, cart_hash, $thisbutton ){
        if( $( $thisbutton).closest( 'table.compare-list' ).length )
            $thisbutton.hide();
    });


    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for(var i=0; i<ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1);
            if (c.indexOf(name) == 0) return decodeURIComponent( c.substring(name.length,c.length) );
        }
        return "";
    }

    function hide_show_widget( widget ) {

        var hide = widget.data('hide');

        if( typeof hide == 'undefined' ) {
            return;
        }

        var cookie = getCookie( yith_woocompare.cookie_name ),
            cookie_val = cookie ? JSON.parse( cookie ) : '';

        if( ! cookie_val.length ) {
            widget.closest( '.yith-woocompare-widget' ).hide();
        }
        else {
            widget.closest( '.yith-woocompare-widget' ).show();
        }
    }


    function update_widget() {

        var widget_list = $('.yith-woocompare-widget ul.products-list'),
            lang = widget_list.data('lang');

        if( widget_list.length ) {

            // hide show widget
            hide_show_widget( widget_list );

            var data = {
                action: yith_woocompare.actionreload,
                context: 'frontend',
                lang: lang
            };

            if (typeof $.fn.block != 'undefined') {
                widget_list.block({
                    message: null,
                    overlayCSS: {
                        background: '#fff url(' + yith_woocompare_premium.loader + ') no-repeat center',
                        backgroundSize: '20px 20px',
                        opacity: 0.6
                    }
                });
            }

            $.ajax({
                type: 'post',
                url: yith_woocompare.ajaxurl.toString().replace( '%%endpoint%%', yith_woocompare.actionreload ),
                data: data,
                success: function (response) {
                    // add the product in the widget
                    if (typeof $.fn.block != 'undefined') {
                        widget_list.unblock();
                    }
                    widget_list.html(response);
                }
            });
        }
    }

    hide_show_widget( $('.yith-woocompare-widget ul.products-list') );
});