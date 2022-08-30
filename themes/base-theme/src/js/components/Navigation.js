import $ from "jquery";

export default class Navigation {

    constructor(domElement) {
        // super();
        this.body = $('body');
        this.element = $(domElement);
    }

    init() {
        let _self = this;
        this._isShown = false;
        this.fullscreenNavigation = $('#header-fullscreen-navigation');
        this._bindEvents();
        this.config = {
            afterOpen: function () {
            },
            afterClose: function () {
            },
            overlayClass: 'u-header__overlay',
            sectionsContainerSelector: '.u-header__sections-container'
        };

        this.overlay = $('<div></div>', {
            class: this.config.overlayClass
        });

        this.fullscreenNavigation.append(this.overlay);

        this.overlay.on("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend", function (e) {

            if (_self.isShown() && e.originalEvent.propertyName === 'transform') {
                _self.config.afterOpen.call(_self.fullscreenNavigation, _self.overlay);
            } else if (!_self.isShown() && e.originalEvent.propertyName === 'transform') {
                _self.config.afterClose.call(_self.fullscreenNavigation, _self.overlay);
            }

            e.stopPropagation();
            e.preventDefault();

        });

        this.update();

        this.overlay.addClass(this.fullscreenNavigation.data('overlay-classes'));

    }

    show() {
        console.log('fullscreenNavigation');
        this.fullscreenNavigation.addClass('u-header--fullscreen-showed u-header--fullscreen-applytransitions');
        this.body.addClass('nav--fullscreen-active');
        this._isShown = true;

        return this;
    }

    hide() {
        this.fullscreenNavigation.removeClass('u-header--fullscreen-showed');
        this.body.removeClass('nav--fullscreen-active');
        this._isShown = false;

        return this;

    }

    _bindEvents() {
        let _self = this;

        this.invoker = $('[data-target="#' + this.fullscreenNavigation.attr('id') + '"]');
        this.invoker.addClass('nav-invoked');
        if (this.invoker.length) {

            this.invoker.off('click').on('click', (e) => {
                // console.log('invoker clicked ' + _self.isShown());
                // console.log([_self.isShown ? 'hide' : 'show']);
                if (this.isShown()) {
                    this.hide();
                } else {
                    this.show();
                }


                //_self[_self.isShown ? 'hide' : 'show']();
                //var hamburgers = this.invoker.find('.is-active');
                //if (hamburgers.length) hamburgers.removeClass('is-active');
                e.preventDefault();

            });

        }

        return this;
    }

    update() {

    //     // var $w = $(window),
    //     //     $wW = $w.width(),
    //     //     $wH = $w.height();
    //     //
    //     // this.overlay.css({
    //     //     width: $wW > $wH ? $wW * 1.5 : $wH * 1.5,
    //     //     height: $wW > $wH ? $wW * 1.5 : $wH * 1.5
    //     // });
    //
    //     let portraitMode = $(window).width() < $(window).height();
    //     this.overlay.css({
    //         width: portraitMode ? "150vh" : "150vw",
    //         height: portraitMode ? "150vh" : "150vw",
    //     });

        return this;
    }

    isShown() {
        return this._isShown;
    }

}