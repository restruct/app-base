<?php
/**
 * Custom sitesearch controller
 * Facilitates updating searchresults (eg custom DataObjects or Elemental/Blocks)
 */

use PageController;
use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\CMS\Search\ContentControllerSearchExtension;
use SilverStripe\CMS\Search\SearchForm;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Core\Convert;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\FormAction;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\SS_List;

class SiteSearchController
    extends PageController
{
    // @TODO: method to render arbitrary FulltextSearchable::get_searchable_classes() dataobjects:
//    private static $allowed_actions = [
//        'resource',
//    ];

    /**
     * index based off ContentControllerSearchExtension::results()
     * @return \SilverStripe\ORM\FieldType\DBHTMLText
     */
    public function index()
    {
        $searchForm = $this->SearchForm();
        /** @var SS_List $searchResults */
        $searchResults = $searchForm->getResults();
        $updatedSearchResults = $this->updateSearchResults($searchResults);

        return $this
            ->customise([
                'IsSearchResults' => true,
                'ExtraClasses' => 'site-search',
//                'SearchQuery' => DBField::create_field('Text', $searchForm->getSearchQuery()),
                'SearchQuery' => Convert::raw2xml($searchForm->getSearchQuery()),
                'SearchResults' => PaginatedList::create($updatedSearchResults, $this->getRequest()),
            ])
            ->renderWith(['Page_results', 'Page']);
    }

    /*
     * Custom search with folders & vids, intermediary
     * to ContentControllerSearchExtension::results();
     */
//    public function SiteSearchForm()
//    {
////         ContentControllerSearchExtension::class;
//        /** @var SearchForm $form */
//        $form = ContentController::curr()->SearchForm();
//
//        $form->setName('search');
////        $form->classesToSearch([ SiteTree::class ]);
////        //$form->setController($this);
////        $form->setFormAction('search');
////
////        $actions = new FieldList(
////            new FormAction('results', _t(__CLASS__.'.GO', 'Go'))
//////            new FormAction('searchresults', _t('SearchForm.GO', 'Go'))
////        );
////        $form->setActions($actions);
//
//        return $form;
//    }

    /**
     * Update/override default search results
     * NOTE - SearchForm class: "Use ModelController and SearchContext for a more generic search implementation based around DataObject"
     * @param SS_List $searchResults
     * @return SS_List
     */
    private function updateSearchResults(SS_List $searchResults)
    {
        $rawSearchstring = $this->request->requestVar('Search');
        $sanitizedSearchstring = preg_replace("/[^a-zA-Z0-9\s\-]/", "", $rawSearchstring);
        $searchwords = str_getcsv($sanitizedSearchstring, " ");

//        if ( $request->getVar('tab') === 'info' ) {
//            $filterAnyQuery = [
//                'Title:PartialMatch'      => $searchwords,
//                'Item.Title:PartialMatch' => $searchwords,
//            ];
//            $results = $this->searchDataObjects(FileResource::class, $filterAnyQuery, $request);
//        } elseif ( $request->getVar('tab') === 'vids' ) {
//            $filterAnyQuery = [
//                'Title:PartialMatch'      => $searchwords,
//                'Item.Title:PartialMatch' => $searchwords,
//            ];
//            $results = $this->searchDataObjects(VideoResource::class, $filterAnyQuery, $request);
//        } else {
////                $results = $form->getResults(); // doesn't escape correctly...
//            $filterAnyQuery = [
//                'Title:PartialMatch'      => $searchwords,
//                'Content:PartialMatch'    => $searchwords,
//            ];
//            $results = $this->searchDataObjects(SiteTree::class, $filterAnyQuery, $request);
//        }
//
//        //Debug::dump($request);
//
//        return $this->customise([
//            'Results' => $results,
////                'Query'   => Convert::raw2xml($form->getSearchQuery()),
//            'Query'   => Convert::raw2xml($sanitizedSearchstring),
//            'Title'   => _t('SearchForm.SearchResults', 'Search Results'),

        return $searchResults;
    }

//    public function SearchType()
//    {
//        return ( $this->request->getVar('tab') ?: 'pages' );
//    }

//    // view a file or video resource on a page (by id)
//    public function resource()
//    {
//        if ( $item = ResourceItem::get()->byID($this->request->param('ID')) ) {
//
//            // if incorrect url, redirect to current location (SEO)
//            if ( $this->request->param('OtherID') !== $item->URLSegment() ) {
//                $this->redirect("search/resource/{$item->ID}/{$item->URLSegment()}", 301);
//            }
//
//            // all OK, return item
//            return $this->customise(new ArrayData([
//                'Item' => $item,
//            ]))->renderWith([ 'HLCL\\CMS\\Pages\\ResourceItemPage', 'Page' ]);
//
//        }
//
//        return ErrorPage::response_for(404);
//    }

//    /**
//     * @param $class
//     * @param $filterAnyQuery
//     * @param $request
//     *
//     * Generic search helper
//     *
//     * @return PaginatedList
//     * @throws \Exception
//     */
//    public function searchDataObjects($class, $filterAnyQuery, $request)
//    {
//        $list = $class::get()->filterAny($filterAnyQuery);
//
//        return new PaginatedList($list, $request);
//    }
}
