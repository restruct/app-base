<?php

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\View\Requirements;

class PageController extends ContentController
{
    protected function init()
    {
        parent::init();

        Requirements::set_force_js_to_bottom(true);

        // https://docs.silverstripe.org/en/4/developer_guides/templates/requirements/
        // in case of .extract() in webpack.mix.js we need to include manifest & vendor as well
        Requirements::themedJavascript('dist/js/manifest');
        Requirements::themedJavascript('dist/js/vendor');
        Requirements::themedJavascript('dist/js/main');

        Requirements::themedCSS('dist/css/main');
    }
}
