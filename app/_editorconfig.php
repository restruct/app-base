<?php

//
// HTMLEDITOR CONFIG
//
// see: https://docs.silverstripe.org/en/3.2/developer_guides/forms/field_types/htmleditorfield/
// and: https://docs.silverstripe.org/en/4/developer_guides/customising_the_admin_interface/typography/#custom-style-dropdown
// and: https://www.tiny.cloud/docs/configure/content-formatting/
// and: https://www.tiny.cloud/docs/configure/editor-appearance/#style_formats

//// BigFork editorconfig, left here for reference...
//$config = SilverStripe\Forms\HTMLEditor\TinyMCEConfig::get('cms');
//$config->disablePlugins(['importcss', 'contextmenu']);
//$config->enablePlugins(['anchor', 'hr']);
//$config->setButtonsForLine(1, 'formatselect styleselect | bullist numlist | bold italic subscript superscript |
//    sslink unlink anchor ssmedia ssembed hr');
//$config->setButtonsForLine(2, 'table | pastetext undo redo | code');
//$config->setOptions([
//    'block_formats' => 'Paragraph=p;Heading 2=h2;Heading 3=h3',
//    'table_advtab' => false,
//    'table_appearance_options' => false,
//    'table_cell_advtab' => false,
//    'table_default_styles' => [
//        'width' => '100%'
//    ],
//    'table_row_advtab' => false
//]);

# Set some dropdown menu options
$editor = SilverStripe\Forms\HTMLEditor\HtmlEditorConfig::get('cms');
//SilverStripe\Forms\HTMLEditor\TinyMCEConfig::class;

$editor->setOption('entity_encoding', 'raw');
$editor->setOption('block_formats', 'Paragraph=p;Heading 2=h2;Heading 3=h3;Heading 4=h4');

# If we want to set only our own styles, disable importcss
$editor->disablePlugins(['importcss']);
# If we want to auto-load styles from editor.css, dont disable importcss and set importcss_append to true
//$editor->setOption('importcss_append', true);
# You can configure TinyMCE to load any css file in _config.php with the following code:
# HtmlEditorConfig::get('cms')->setOption('content_css','/themes/my-amazing-theme/styles/kick-ass-editor-styles.css');

# Set style select options
//$editor->addButtonsToLine(1, '| anchor');
//$editor->addButtonsToLine(1, 'blockquote');
$editor->insertButtonsAfter('indent', ['blockquote']);
$editor->insertButtonsAfter('formatselect', ['styleselect']);
//$editor->setButtonsForLine(1, 'image', 'media', 'shortcodable','bold, italic, removeformat, bullist, numlist, outdent, indent, blockquote, hr, visualchars');
//$editor->removeButtons('styleselect');

//$fontreset = ['font-weight' => 'normal', 'font-family' => '"Helvetica Neue",Helvetica,Arial,sans-serif', 'font-size' => '14px'];
$fontreset = [];
$editor->setOption('style_formats', [
//    Define the styles that will be available in TinyMCE's dropdown style menu
//    * Use 'selector' to specify which elements a style can be applied to
//    * See Headings example below for explanation of different settings
//    * Using 'classes' allows a class to be combined with others while 'attributes'=>'style' removes other classes before applying
//
//    # Item options:
//    'title' => 'Document link', // title in dropdown
//    'classes' => 'doc_link', // CSS class of .doc_link will be toggled on or off, will not remove or affect other classes on this element
//    'wrapper' => true, // expand to closest block element
//    'merge_siblings' => false, // merge adjacent elements with this class into one
//    'selector' => 'a', // If no text is selected but cursor is within one of these elements, apply class to element
//    'block' => 'h3', // block element to wrap selection in
//    'inline' => 'span', // Allow applying this style inline to selected text by using a span tag
//
//    [   'title' => 'Headings', # Set a title to be displayed above the following options in the dropdown menu
//        'items' => [
//            [
//                # Applied to the current heading element (inline not allowed)
//                'title' => 'Ruled', // Title used in TinyMCE dropdown menu
//                'attributes' => array('class'=>'ruled'), // CSS class of .ruled will be applied to element, other classes on this element will be removed
//                'selector' => 'h1,h2,h3,h4,h5,h6' // Only allow class to be applied to these elements
//            ],
//            [
//                # Applied to selected text using a span tag, or applied to an inline element if no text is highlighted (inline allowed)
//                'title' => 'Sub title',
//                'classes' => 'sub-title', // CSS class of .sub-title will be toggled on or off, will not remove or affect other classes on this element
//                'inline' => 'span', // Allow applying this style inline to selected text by using a span tag
//                'selector' => 'i,em,b,strong,a' // If no text is selected but cursor is within one of these elements, apply class to element
//            ],
//        ]
//    ],

//    [
//        'title' => 'Paragrafen',
//        'items' => [
//            [
//                'title' => 'Intro paragraaf (groter)',
//                'selector' => 'p',
//                'classes' => 'lead',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Notitie (cosmetisch verborgen)',
//                'selector' => 'p',
//                'classes' => 'hidden',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Notification (info/blue)',
//                'attributes' => array('class'=>'alert alert-info'),
//                'selector' => 'p',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Notification (success/green)',
//                'attributes' => array('class'=>'alert alert-success'),
//                'selector' => 'p',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Notification (warning/yellow)',
//                'attributes' => array('class'=>'alert alert-warning'),
//                'selector' => 'p',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Notification (danger/red)',
//                'attributes' => array('class'=>'alert alert-danger'),
//                'selector' => 'p',
//                'styles' => $fontreset,
//            ],
//        ],
//    ],

//    [
//        'title' => 'Button links',
//        'items' => [
//            [
//                'title' => 'Blocklink black',
//                'classes' => 'blocklink black',
//                'selector' => 'a',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Blocklink yellow',
//                'classes' => 'blocklink yellow',
//                'selector' => 'a',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Blocklink red',
//                'classes' => 'blocklink red',
//                'selector' => 'a',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Blocklink blue',
//                'classes' => 'blocklink blue',
//                'selector' => 'a',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Blocklink darkblue',
//                'classes' => 'blocklink darkblue',
//                'selector' => 'a',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Blocklink green',
//                'classes' => 'blocklink green',
//                'selector' => 'a',
//                'styles' => $fontreset,
//            ],
//        ],
//    ],

//    [
//        'title' => 'Layout/2021 theme',
//        'items' => [
//            [
//                'title' => 'Uitklap item (onderaan)',
//                'block' => 'h3',
//                'classes' => 'accordion',
//                'styles' => $fontreset,
//            ],
//            [
//                'title' => 'Omkaderd (outline)',
//                'wrapper' => true,
//                'merge_siblings' => false,
//                'block' => 'div',
//                'classes' => 'bg-light',
//            ],
//            [
//                'title' => 'In-/uitklap item',
//                'wrapper' => true,
//                'block' => 'div',
//                'merge_siblings' => false,
//                'classes' => 'collapse-expand',
//            ],
//        ],
//    ],
    [
        'title' => 'Beelden',
        'items' => [
            [
                'title' => 'Links',
                'selector' => 'img,div',
                'classes' => 'left',
                'styles' => $fontreset,
            ],
            [
                'title' => 'Gecentreerd',
                'selector' => 'img,div',
                'classes' => 'center',
                'styles' => $fontreset,
            ],
            [
                'title' => 'Rechts',
                'selector' => 'img,div',
                'classes' => 'right',
                'styles' => $fontreset,
            ],
            [
                'title' => 'Links zonder tekst eromheen',
                'selector' => 'img,div',
                'classes' => 'leftAlone',
                'styles' => $fontreset,
            ],
            [
                'title' => 'Rechts zonder tekst eromheen',
                'selector' => 'img,div',
                'classes' => 'rightAlone',
                'styles' => $fontreset,
            ],
            [
                'title' => 'Volledige breedte',
                'selector' => 'img,div',
                'classes' => 'fullwidth',
                'styles' => $fontreset,
            ],
        ],
    ],

//    [
//        'title' => 'Gezonde Leefstijl',
//        'items' => [
//            [
//                'title' => 'Omkaderd (outline)',
//                'wrapper' => true,
//                'merge_siblings' => false,
//                'block' => 'div',
//                'classes' => 'border-block',
//            ],
//            [
//                'title' => 'Vinkjes-lijstje',
//                'selector' => 'ul',
//                'classes' => 'check-list',
//            ],
////            [ // Removed: instead styling simply applied to any image inside a .border-block
////                'title' => 'Recept-plaatje (rechts in kader)',
////                'selector' => 'img',
////                'classes' => 'recipe-image',
////            ],
//            [
//                'title' => 'In-/uitklap item (los)',
//                'wrapper' => true,
//                'block' => 'div',
//                'merge_siblings' => false,
//                'classes' => 'collapse-expand',
//            ],
//            [
//                'title' => 'Meer-info blok (volvlak achtergrond)',
//                'wrapper' => true,
//                'block' => 'div',
//                'classes' => 'info-block',
//            ],
//        ],
//    ],
]);

