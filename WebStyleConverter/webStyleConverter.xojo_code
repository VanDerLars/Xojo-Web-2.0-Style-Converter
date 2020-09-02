#tag Class
Protected Class webStyleConverter
	#tag Method, Flags = &h0
		Sub Constructor(oldWebstyleCode as string)
		  self.oldStyleValues = new Dictionary
		  self.newStyleValues = new Dictionary
		  
		  
		  // step 1 - extract Name and Properties
		  var oldS() as string 
		  oldS = oldWebstyleCode.Split(EndOfLine)
		  
		  if oldS(0) = "#tag WebStyle" then
		    self.name = self.extractWebStyleName(oldS(1))
		    
		    var isWebStyleStateGroup as Boolean = false
		    for each line as string in oldS
		      
		      if line.IndexOf(0, "#tag EndWebStyleStateGroup") > 0 then
		        // end a group to read
		        isWebStyleStateGroup = false
		        
		      end if
		      
		      if isWebStyleStateGroup then
		        // here are properties
		        self.extractWebStyleProperty(line)
		        
		      end if
		      
		      if line.IndexOf(0, "#tag WebStyleStateGroup") > 0 then
		        // start a group to read
		        isWebStyleStateGroup = true
		        
		      end if
		      
		    next
		    
		  else
		    // no webstyle
		    MessageBox("this is not a Webstyle. So sad.")
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function extractWebStyleName(lineWithName as string) As string
		  var line() as string = lineWithName.Split(" ")
		  if line.Ubound > 0 then
		    return line(1)
		  else
		    MessageBox("no name given. so sad.")
		    return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub extractWebStyleProperty(rawProperty as string)
		  var splProperty() as string = rawProperty.Split("=")
		  
		  if splProperty.Ubound > 0 then
		    var key as string = splProperty(0)
		    var value as String = splProperty(1)
		    
		    key = key.ReplaceAll(chr(9), "")
		    key = key.ReplaceAll(chr(13), "")
		    
		    self.oldStyleValues.Value(key) = value
		    
		    select case key
		    case "text-font"
		      turn_text_font(value)
		      
		    case "text-decoration"
		      turn_text_decoration(value)
		      
		    case "text-size"
		      turn_text_size(value)
		      
		    case "text-align"
		      turn_text_align(value)
		      
		    case "text-color"
		      turn_text_color(value)
		      
		    case "border-top"
		      turn_border_top(value)
		      
		    case "border-left"
		      turn_border_left(value)
		      
		    case "border-bottom"
		      turn_border_bottom(value)
		      
		    case "border-right"
		      turn_border_right(value)
		      
		    case "shadow-text"
		      turn_shadow_text(value)
		      
		    case "shadow-box"
		      turn_shadow_box(value)
		      
		    case "padding-top"
		      turn_padding_top(value)
		      
		    case "padding-left"
		      turn_padding_left(value)
		      
		    case "padding-bottom"
		      turn_padding_bottom(value)
		      
		    case "padding-right"
		      turn_padding_right(value)
		      
		    case "corner-topleft"
		      turn_corner_topleft(value)
		      
		    case "corner-bottomleft"
		      turn_corner_bottomleft(value)
		      
		    case "corner-bottomright"
		      turn_corner_bottomright(value)
		      
		    case "corner-topright"
		      turn_corner_topright(value)
		      
		    case "misc-opacity"
		      turn_misc_opacity(value)
		      
		    case "misc-background"
		      turn_misc_background(value)
		      
		    end select
		    
		  else
		    MessageBox("thats not a property. so sad.")
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getCSSClass(optional useImportant as Boolean = true) As string
		  var CSS() as string
		  var imp as string
		  if useImportant = true then imp = " !important"
		  
		  css.AddRow("." + self.name + " {")
		  
		  for each dict as DictionaryEntry in self.newStyleValues
		    CSS.AddRow(chr(9) + dict.key + ": " + dict.Value.StringValue + imp + ";")
		    
		  next
		  
		  css.AddRow("}")
		  
		  return String.FromArray(css, EndOfLine)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_border_bottom(value as string)
		  // border-top=10px solid 652536FF
		  // ->
		  // border-top:10px solid #652536FF
		  
		  var spl() as string = value.Split(" ")
		  var newVal as String = spl(0) + " " + spl(1) + " #" + spl(2)
		  
		  self.newStyleValues.Value("border-top") = newVal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_border_left(value as string)
		  // border-left=10px solid 652536FF
		  // ->
		  // border-left:10px solid #652536FF
		  
		  var spl() as string = value.Split(" ")
		  var newVal as String = spl(0) + " " + spl(1) + " #" + spl(2)
		  
		  self.newStyleValues.Value("border-left") = newVal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_border_right(value as string)
		  // border-right=10px solid 652536FF
		  // ->
		  // border-right:10px solid #652536FF
		  
		  var spl() as string = value.Split(" ")
		  var newVal as String = spl(0) + " " + spl(1) + " #" + spl(2)
		  
		  self.newStyleValues.Value("border-right") = newVal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_border_top(value as string)
		  // border-top=10px solid 652536FF
		  // ->
		  // border-top:10px solid #652536FF
		  
		  var spl() as string = value.Split(" ")
		  var newVal as String = spl(0) + " " + spl(1) + " #" + spl(2)
		  
		  self.newStyleValues.Value("border-top") = newVal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_corner_bottomleft(value as string)
		  // corner-bottomleft=25px
		  // ->
		  // border-bottom-left-radius: 25px;
		  
		  self.newStyleValues.Value("border-bottom-left-radius") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_corner_bottomright(value as string)
		  // corner-bottomright=25px
		  // ->
		  // border-bottom-right-radius: 25px;
		  
		  self.newStyleValues.Value("border-bottom-right-radius") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_corner_topleft(value as string)
		  // corner-topleft=25px
		  // ->
		  // border-top-left-radius: 25px;
		  
		  self.newStyleValues.Value("border-top-left-radius") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_corner_topright(value as string)
		  // corner-topright=25px
		  // ->
		  // border-top-right-radius: 25px;
		  
		  self.newStyleValues.Value("border-top-right-radius") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_misc_background(value as string)
		  // corner-topright=25px
		  // ->
		  // border-top-right-radius: 25px;
		  
		  self.newStyleValues.Value("border-top-right-radius") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_misc_opacity(value as string)
		  // misc-opacity=0.7764706
		  // ->
		  // opacity: 0.776;
		  
		  self.newStyleValues.Value("opacity") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_padding_bottom(value as string)
		  // padding-bottom=6px
		  // ->
		  // padding-bottom: 6px;
		  
		  self.newStyleValues.Value("padding-bottom") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_padding_left(value as string)
		  // padding-left=6px
		  // ->
		  // padding-left: 6px;
		  
		  self.newStyleValues.Value("padding-left") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_padding_right(value as string)
		  // padding-right=6px
		  // ->
		  // padding-right: 6px;
		  
		  self.newStyleValues.Value("padding-right") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_padding_top(value as string)
		  // padding-top=6px
		  // ->
		  // padding-top: 6px;
		  
		  self.newStyleValues.Value("padding-top") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_shadow_box(value as string)
		  // shadow-box=3px 0px 8px 7E66797F
		  // ->
		  // box-shadow: 0px 3px 8px #7E66797F;
		  
		  var spl() as string = value.Split(" ")
		  var newVal as String = spl(1) + " " + spl(0) + " " + spl(2) + " #" + spl(3)
		  
		  self.newStyleValues.Value("box-shadow") = newVal
		  
		  
		  //how stupid, that xojo saves the values in a different order as the css spec ¯\_(ツ)_/¯
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_shadow_text(value as string)
		  // shadow-text=3px 0px 8px 4DA0AD7F
		  // ->
		  // text-shadow: 0px 3px 8px #4DA0AD7F;
		  
		  var spl() as string = value.Split(" ")
		  var newVal as String = spl(1) + " " + spl(0) + " " + spl(2) + " #" + spl(3)
		  
		  self.newStyleValues.Value("text-shadow") = newVal
		  
		  
		  //how stupid, that xojo saves the values in a different order as the css spec ¯\_(ツ)_/¯
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_text_align(value as string)
		  // text-align=center
		  // ->
		  // text-align: center;
		  
		  self.newStyleValues.Value("text-align") = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_text_color(value as string)
		  // text-color=9D8C5AFF
		  // ->
		  // color: #9D8C5AFF;
		  
		  self.newStyleValues.Value("color") = "#" + value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_text_decoration(value as string)
		  // text-decoration=True True True True True
		  // ->
		  // text-decoration: underline line-through overline;
		  
		  var spl() as string = value.Split(" ")
		  var bold, italic, underline, strike, overline as Boolean = false
		  
		  if spl(0) = "True" then bold = true
		  if spl(1) = "True" then italic = true
		  if spl(2) = "True" then underline = true
		  if spl(3) = "True" then strike = true
		  if spl(4) = "True" then overline = true
		  
		  
		  if bold then
		    self.newStyleValues.Value("font-weight") = "bold"
		  end if
		  
		  if italic then
		    self.newStyleValues.Value("font-style") = "italic"
		  end if
		  
		  
		  var decoration as string
		  if underline then
		    decoration = decoration + "underline "
		  end if
		  
		  if strike then
		    decoration = decoration + "line-through "
		  end if
		  
		  if overline then
		    decoration = decoration + "overline "
		  end if
		  
		  
		  self.newStyleValues.Value("text-decoration") = decoration
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_text_font(value as string)
		  // text-font=System,Arial
		  // ->
		  // font-family: "Lucida Grande", "Arial", sans-serif;
		  
		  self.newStyleValues.Value("font-family") = """Lucida Grande"", ""Arial"", sans-serif"
		  
		  
		  
		  
		  // this shit is a little buggy, cause it is hard to translate the fonts xojo saved to actual webfonts.
		  // so currently, it is just setting "ARIAL" as font
		  // You have to change the font later by yourself. Either in the generated CSS-Class or with a Xojo styling command
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub turn_text_size(value as string)
		  // text-size=100%
		  // ->
		  // font-size: 100%;
		  
		  self.newStyleValues.Value("font-size") = value
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		newStyleValues As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		oldStyleValues As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
