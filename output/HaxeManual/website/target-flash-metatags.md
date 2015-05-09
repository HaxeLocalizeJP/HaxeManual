## 12.2.4 Flash target Metatags

This is the list of Flash specific metatags. For a complete list see [Haxe built-in metatags](cr-metadata.md).

##### Flash metatags
 
 Metatag  |  Description   |  Target 
 --- | --- | ---
@:bind   |  Override Swf class declaration   |  flash 
@:bitmap _(Bitmap file path)_   |  _Embeds given bitmap data into the class (must extend <code>flash.display.BitmapData</code>)    |  flash 
@:debug   |  Forces debug information to be generated into the Swf even without <code>-debug</code>    |  flash 
@:file(File path)   |  Includes a given binary file into the target Swf and associates it with the class (must extend <code>flash.utils.ByteArray</code>)   |  flash 
@:font _(TTF path Range String)_   |  Embeds the given TrueType font into the class (must extend <code>flash.text.Font</code>)   |  flash 
@:getter _(Class field name)_   |  Generates a native getter function on the given field    |  flash 
@:noDebug  |  Does not generate debug information into the Swf even if <code>-debug</code> is set    |  flash 
@:ns   |  Internally used by the Swf generator to handle namespaces    |  flash 
@:setter _(Class field name)_   |  Generates a native setter function on the given field    |  flash 
@:sound _(File path)_   |  Includes a given _.wav_ or _.mp3_ file into the target Swf and associates it with the class (must extend <code>flash.media.Sound</code>)   |  flash

---

Previous section: [Using external Flash libraries](target-flash-external-libraries.md)

Next section: [PHP](target-php.md)