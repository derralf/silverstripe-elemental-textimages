# SilverStripe Elemental Text-Images Block

A block that displays content with one or multiple Images.  
(private project, no help/support provided)

## Requirements

* SilverStripe CMS ^5
* dnadesign/silverstripe-elemental ^4 || ^5
* silverstripe/linkfield ^4
* jonom/focuspoint ^5
* bummzack/sortablefile ^2.2

For a SilverStripe 4.3 and Elemental 4.x compatible version of this module, please see the [2.x release line](https://github.com/derralf/silverstripe-elemental-textimages/tree/2.0#readme.

Important:  
Switched from `sheadawson/silverstripe-linkable` to `silverstripe/linkfield`  
see migration guide here: https://github.com/silverstripe/silverstripe-linkfield


## Suggestions
* derralf/elemental-styling

Modify `/templates/Derralf/Elements/TextImages/Includes/Title.ss` to your needs when using StyledTitle from derralf/elemental-styling.


## Installation

- Install the module via Composer
  ```
  composer require derralf/elemental-textimages
  ```


## Configuration

A basic/default config. Add this to your **mysite/\_config/elements.yml** and comment/uncomment/add/remove/modify the needed lines 

Note the options for `styles` and `image_view_modes`, in which the templates contained in the extension are listed.

Set `defaults:ImageViewMode` to `null` or any of the avaiable Templates from `image_view_modes`.

Optionally you may set `defaults:Style`to any of the available `styles`.

```

---
Name: elementaltextimages
---
Derralf\Elements\TextImages\Element\ElementTextImages:
  styles:
#    #### Bootstrap 3 #########################################
#    OneRightFiftyFifty: "Bild rechts, 50%"
#    OneLeftFiftyFifty: "Bild links, 50%"
#    OneRight: "Bild rechts, 33%"
#    OneLeft: "Bild links, 33%"
#    OneTop: "Bild oben"
#    OneTop3by1: "Bild oben, Format 3:1"
#    #### Bootstrap 4 #########################################
#    BS4OneLeftFiftyFifty: "(BS4) Bild links, 50%"
#    BS4OneRightFiftyFifty: "(BS4) Bild rechts, 50%"
#    BS4OneLeft: "(BS4) Bild lonks, 33%"
#    BS4OneRight: "(BS4) Bild rechts, 33%"
#    BS4OneLeft25Square: "(BS4) Bild links, 25%, quadratisch"
    #### Bootstrap 5 #########################################
    BS5OneLeftFiftyFifty: "(BS5) Bild links, 50%"
    BS5OneRightFiftyFifty: "(BS5) Bild rechts, 50%"
    BS5OneLeft: "(BS5) Bild links, 33%"
    BS5OneRight: "(BS5) Bild rechts, 33%"
  styles_default_description: ''
  image_view_modes:
      #### Bootstrap 3 #######################################
      HiddenGallery: "versteckte Galerie"
      TwoBelow: "2 weitere Bilder unten, quer"
      TwoBelowSquare: "2 weitere Bilder unten, quadratisch"
      ThreeBelow: "3 weitere Bilder unten"
      FourBelow: "4 weitere Bilder unten (4 Spalten)"
      AllBelow3Cols: "alle weiteren Bilder unten (3 Spalten)"
      #### Bootstrap 4 #######################################
      BS4HiddenGallery: "(BS4) versteckte Galerie"
      BS4AllBelow4Cols:  "(BS4) alle weiteren Bilder unten (4 Spalten)"
      BS4TwoBelow: "(BS4) 2 weitere Bilder unten, quer"
#      #### Bootstrap 5 #########################################
#      BS5HiddenGallery: "(BS5) versteckte Galerie"
#      BS5AllBelow4Cols: "(BS5) alle weiteren Bilder unten (3 Spalten)"
#      BS5TwoBelow: "(BS5) 2 weitere Bilder unten, quer"
#  defaults:
#    ImageViewMode: 'TwoBelow'
  readmore_link_class: 'btn btn-primary btn-readmore'
  
  
```

Additionally you may apply the default styles:

```
# add default styles
DNADesign\Elemental\Controllers\ElementController:
  default_styles:
    - derralf/elemental-textimages:client/dist/styles/frontend-default.css
```

See Elemental Docs for [how to disable the default styles](https://github.com/dnadesign/silverstripe-elemental#disabling-the-default-stylesheets).

### Adding your own templates

You may add your own templates/styles like this:

```
Derralf\Elements\TextImages\Element\ElementTextImages:
  styles:
    MyCustomTemplate: "new customized special Layout"
```

...and put a template named `ElementTextImages_MyCustomTemplate.ss`in `themes/{your_theme}/templates/Derralf/Elements/TextImages/Element/`  
**and/or**
add styles for `.derralf__elements__textimages__element__elementtextimages.mycustomtemplate` to your style sheet

## Template Notes

Included templates are based on Bootstrap 3+ but require extra/additional styling (see included stylesheet).

- Optionaly, you can require basic CSS stylings provided with this module to your controller class like:
  **mysite/code/PageController.php**
  ```
      Requirements::css('derralf/elemental-textimages:client/dist/styles/frontend-default.css');
  ```
  or copy over and modify `client/src/styles/frontend-default.scss` in your theme scss

- Images wrapped in link tags (optimized / with some data-attributes for [lightgallery](http://sachinchoolur.github.io/lightGallery/))   
  Optionally you can require a basic default javascript (requires jQuery) and (if not already included in your theme) lightgallery (respect license!)
  ```
  Requirements::javascript('https://cdn.jsdelivr.net/npm/lightgallery@1.6.11/dist/js/lightgallery-all.js');
  Requirements::css('https://cdn.jsdelivr.net/npm/lightgallery@1.6.11/dist/css/lightgallery.min.css');
  Requirements::javascript('derralf/elemental-textimages: client/dist/js/lightgallery.init.js');
  ```
  ...or use any other lightbox script...

- data-attributes in Image Links  
  2 data-attributes are supplied in the templates:
  - `data-sub-html="$Legend.ATT"` to optinally provide a caption for lightgallery
  - `data-exthumbimage="$Me.Fill(96,76).Link"` to provide an thumbnail for lightgallery
  
  You may want to extend Image class with a "getLegend()" method or suitable db field


## Screen Shots

(not available)


