// ### Sentry ###
//
// import * as Sentry from "@sentry/browser";
// import { Integrations } from "@sentry/tracing";
// Sentry.init({
//     dsn: "https://xxx@xxx.ingest.sentry.io/xxx",
//     integrations: [new Integrations.BrowserTracing()],
//     // Set tracesSampleRate for performance monitoring (1.0 = 100%)
//     tracesSampleRate: 0.05,
// });
// // myUndefinedFunction(); // Check Sentry error logging...


// 'Detect' JS support (doesnt actually need load/DOMContentLoaded because js only gets added at end of body anyway)
//
document.querySelector('body').classList.remove('no-js');


// ### jQuery ###
//
// import + 'expose' (or whatever) jquery to be usable by other scripts ###
// import $ from 'jquery';
// window.$ = $;
//
// jQuery: https://learn.jquery.com/using-jquery-core/document-ready/
// - jQuery (on)ready shorthand, scoped by wrapping in function: (function ($) { /*$().doStuff();*/ }(jQuery)); )
// - onload: $(window).on('load',function(){ /* do stuff */ });
// - onready:  $(function($, undefined){ /* do stuff */ });


// ### Bootstrap ### https://getbootstrap.com/docs/5.1/getting-started/javascript/ & https://github.com/twbs/bootstrap/blob/v5.2.0-beta1/js/index.umd.js
// (bundlers (Webpack) can use /js/dist/*.js files which are UMD ready https://dev.to/iggredible/what-the-heck-are-cjs-amd-umd-and-esm-ikm)
// NOTE: dropdowns and tooltips depend on Popper (@popperjs/core), popovers doesnt seem to (depend on Popper)
import {
  // Alert,
  Button,
  // Carousel,
  Collapse,
  Dropdown,
  // Modal,
  Offcanvas,
  // Popover,
  // ScrollSpy,
  // Tab,
  // Toast,
  // Tooltip,
} from 'bootstrap';
// import "bootstrap/dist/js/bootstrap.bundle.js";


// ### Custom components ###
//
// import Navigation from './components/Navigation';


// ### JS functionality ###
//
// load event, fired when the whole page has loaded, including all dependent resources such as stylesheets and images
// https://developer.mozilla.org/en-US/docs/Web/API/Window/load_event
// window.addEventListener('load',function(){ console.log('load'); });
// DOMContentLoaded, fired as soon as the page DOM has been loaded, without waiting for resources to finish loading
// https://developer.mozilla.org/en-US/docs/Web/API/Document/DOMContentLoaded_event
// document.addEventListener('DOMContentLoaded',function(){ console.log('DOMContentLoaded'); });


// Open specific (nav) .start-open dropdowns on pageload
// window.addEventListener('load',function(){
//   window.setTimeout(function() {
//     document.querySelectorAll('.dropdown-toggle.start-open').forEach(function (item) {
//       Dropdown.getOrCreateInstance(item).show();
//       item.blur();
//     });
//   }, 600);
// });


// (function ($) {
//
//     // Make whole blocks clickable (eg card-items)
//     $('.card.news-item')
//         .on('click', function (e){
//             if(src = $(this).parent().find('a').attr('href')) window.location.href = src;
//             $(this).parent().find('a').click();
//         })
//         .attr('role','button');
//
//     // Example video play-button functionality
//     $(document).on('click', '.video-action-btn', function () {
//         let videoBtn = $(this), video = videoBtn.closest('.video-block-container').find('video');
//         if (video.hasClass('video-paused')) {
//             video[0].play();
//         } else {
//             video[0].pause();
//         }
//         videoBtn.find('i').toggleClass('fa-play fa-pause');
//         video.toggleClass('video-paused video-playing')
//     });
//
//     // Fix youtube vids to be responsive
//     $('iframe[src^="https://www.youtube"]').each(function () {
//         // While we're at it, try & remove recommended videos
//         let vidSource = $(this).attr('src');
//         // doesn't totally disable but only shows related vids from the same channel:
//         $(this).attr('src', vidSource + (vidSource.indexOf('?') > 0 ? '&rel=0' : '?rel=0') );
//         // @TODO (MAYBE) seems to be a way to totally disable related vids (2021)
//         // $(this).attr('src', $(this).attr('src')+'&playlist=VIDEO_ID&loop=1');
//
//         // // wrap this item with a videoWrapper class
//         // $(this).wrap('<div class="videoWrapper"></div>');
//         var $iframe = $(this).addClass('embed-responsive-item');
//         // remove weird Silverstripe wrapper
//         if($(this).parent().hasClass('leftAlone')){
//             $(this).parent().replaceWith($iframe);
//         }
//         // calculate ratio
//         var aspectRatio = 'custom';
//         var width = parseInt( $iframe.attr('width') );
//         var height = parseInt( $iframe.attr('height') );
//         if(width/height===1) aspectRatio = '1by1';
//         if(width/height===4/3) aspectRatio = '4by3';
//         if(width/height===16/9) aspectRatio = '16by9';
//         if(width/height===21/9) aspectRatio = '21by9';
//
//         var wrapper = $('<div></div>')
//             .addClass('embed-responsive embed-responsive-'+aspectRatio)
//         if(aspectRatio=='custom'){
//             wrapper.css('padding-bottom', `calc(100% / ${width} * ${height})`);
//         }
//         $(this).wrap(wrapper);
//     });
//
// }(jQuery));

