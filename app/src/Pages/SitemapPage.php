<?php

/**
 * Copied from bigfork/silverstripe-recipe
 */
namespace Restruct\AppBase\Pages;

use Page;
use SilverStripe\View\TemplateGlobalProvider;

class SitemapPage
    extends Page
    implements TemplateGlobalProvider
{
    private static $table_name = 'SitemapPage';

    private static $description = 'Page containing a sitemap';

    private static $icon_class = 'font-icon-p-list';

    private static $defaults = [
        'ShowInMenus' => false,
    ];

    public function canCreate($member = null, $context = [])
    {
        // Allow only one sitemappage
        if (static::get()->count()) {
            return false;
        }

        return parent::canCreate($member, $context);
    }

    public static function get_template_global_variables()
    {
        return [
            'SitemapPage' => 'get_one_cached',
        ];
    }
}
