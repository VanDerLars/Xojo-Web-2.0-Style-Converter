# Xojo Web 2.0 Style Converter
 Brings back a way to add Styles to Controls and access them over CSS in the Frontend
 
![Screencast]( https://github.com/StadtLandNetz/Xojo-Web-2.0-Style-Converter/blob/master/Screenshot.gif "Screencast to show how the classes are applied")

## usage
1) add your CSS class and some styling properties to the App.HTMLheader property
2) create a subclass of the WebStyleExtended Class
3) Name it exactly the same as your CSS class
4) apply the new style class using the WebStyleHandler.applyWebStyle method


## known bugs
- ~~actually, I wanted also to handle the style-code you can enter over the new style API like "control.style.backgroundcolor = {color}". unfortunately, there's a bug (I assume), so this doesn't work yet~~
- Xojo seems to handle some style-informations not right. FontName, BackgroundColor, Opacity and such are not the right values when I save them into a dictionary and restore them

## on my list
- [ ] write a converter, which converts old Web 1 webstyles to CSS and the new WebstyleExtended class.
- [ ] create subclasses of each control, where the WebStyleHandler is already included, so it is easier to apply WebStyles.

## contribute
have Ideas to improve these things? come and join me! maybe we can build a little package to make the convertion of Web1->Web2 a bit easier.

## License 
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Lizenzvertrag" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />License <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Namensnennung 4.0 International Lizenz</a>.
