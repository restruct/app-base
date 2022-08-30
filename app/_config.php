<?php

# Prevent issues with occasional geographic mismatch/misconfiguration
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\Search\FulltextSearchable;
use SilverStripe\Subsites\Model\Subsite;

date_default_timezone_set('Europe/Amsterdam');

# Set global $project (legacy/shouldn't be required anymore)
//global $project;
//$project = basename(__DIR__);

# Debugging; display PHP errors on dev
//if ( Director::isDev() ) {
//    ini_set('display_errors', 1);
//    error_reporting(E_ERROR | E_WARNING | E_PARSE & ~( E_STRICT | E_NOTICE ));
//    //error_reporting( E_ALL );
//}

# Enable fulltext-search
//// @TODO: include 'blocks' content in search(field) as well...
FulltextSearchable::enable(SiteTree::class);

# Subsites
//Subsite::set_allowed_themes([ 'base-theme' ]);

# Include DataObject subclasses in GoogleSitemap
//if (method_exists(GoogleSitemap::class, 'register_dataobject')) {
//    GoogleSitemap::register_dataobject(DataObjectSubclass::class, 'daily');
//}

# Prevent hashlinks from being rewritten/processed by SS
//SSViewer::setRewriteHashLinksDefault(false);

# Remove versioned from File assets (often not required)
//SilverStripe\Assets\File::remove_extension( Versioned::class );

# Block some modules backend-styling
//Requirements::block('dnadesign/silverstripe-elemental:client/dist/styles/bundle.css');

# Tweak HTML editors extended_valid_elements & attributes
//HtmlEditorConfig::get('cms')->setOption(
//    'extended_valid_elements',
//    'img[class|src|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|usemap],' .
//    'iframe[src|name|width|height|title|align|allowfullscreen|frameborder|marginwidth|marginheight|scrolling],' .
//    'object[classid|codebase|width|height|data|type],' .
//    'embed[src|type|pluginspage|width|height|autoplay],' .
//    "#div[class], #span[class]".
//    'param[name|value],' .
//    'map[class|name|id],' .
//    'area[shape|coords|href|target|alt],' .
//    'ol[start|type]'
//);

# Project specific HTMLEDITOR CONFIG
include '_editorconfig.php';


