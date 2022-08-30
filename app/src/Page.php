<?php

use SilverStripe\CMS\Controllers\RootURLController;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Core\Config\Config;
use SilverStripe\Forms\FieldList;
use SilverStripe\Security\Permission;

class Page extends SiteTree
{
    private static $table_name = 'Page';

    public function getCMSFields()
    {
        $this->beforeUpdateCMSFields(function (FieldList $fields) {
            $homeURL = Config::inst()->get(RootURLController::class, 'default_homepage_link');

            if (!Permission::check('ADMIN') && $this->URLSegment === $homeURL) {
                $fields->removeByName('URLSegment');
            }
        });

        return parent::getCMSFields();
    }

}
