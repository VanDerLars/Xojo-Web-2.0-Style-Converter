#tag Class
Protected Class WebStyleExtended
Inherits WebStyle
	#tag Method, Flags = &h0
		Sub applyStyleCode()
		  // insert here the new xojo style informations
		  // this method is called by the WebStyleHandler whenever a view is made visible or is applied
		  // use this only in a subclass
		  // you can use the "control" property to access the control you applied to this style
		  
		  self.resetStyleInformations.Value("Bold") = self.Control.Style.Bold
		  self.resetStyleInformations.Value("BorderColor") = self.Control.Style.BorderColor
		  self.resetStyleInformations.Value("BorderThickness") = self.Control.Style.BorderThickness
		  self.resetStyleInformations.Value("Cursor") = self.Control.Style.Cursor
		  self.resetStyleInformations.Value("FontSize") = self.Control.Style.FontSize
		  self.resetStyleInformations.Value("Italic") = self.Control.Style.Italic
		  self.resetStyleInformations.Value("Strikethrough") = self.Control.Style.Strikethrough
		  self.resetStyleInformations.Value("Underline") = self.Control.Style.Underline
		  
		  
		  // things with bugs
		  self.resetStyleInformations.Value("FontName") = self.Control.Style.FontName
		  self.resetStyleInformations.Value("ForegroundColor") = self.Control.Style.ForegroundColor
		  self.resetStyleInformations.Value("BackgroundColor") = self.Control.Style.BackgroundColor
		  //self.resetStyleInformations.Value("Opacity") = self.Control.Style.Opacity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  var dict as new Dictionary
		  self.resetStyleInformations = dict
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function name() As string
		  dim ti as Introspection.TypeInfo = Introspection.GetType(self)
		  
		  return ti.FullName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resetStyle()
		  // this method is called, whenever a style is removed from a control
		  // it resets the style to its state how it was before the style was applied
		  // can interfere if you apply multiple styles. I you do so, better only use CSS classes and no styling-code in Xojo
		  
		  
		  self.Control.Style.Bold = self.resetStyleInformations.Value("Bold").BooleanValue
		  self.Control.Style.BorderColor = self.resetStyleInformations.Value("BorderColor").ColorValue
		  self.Control.Style.BorderThickness = self.resetStyleInformations.Value("BorderThickness").IntegerValue
		  self.Control.Style.Cursor = self.resetStyleInformations.Value("Cursor")
		  self.Control.Style.FontSize = self.resetStyleInformations.Value("FontSize").IntegerValue
		  self.Control.Style.ForegroundColor = self.resetStyleInformations.Value("ForegroundColor").ColorValue
		  self.Control.Style.Italic = self.resetStyleInformations.Value("Italic").BooleanValue
		  self.Control.Style.Strikethrough = self.resetStyleInformations.Value("Strikethrough").BooleanValue
		  self.Control.Style.Underline = self.resetStyleInformations.Value("Underline").BooleanValue
		  
		  // things with bugs
		  self.Control.Style.BackgroundColor = self.resetStyleInformations.Value("BackgroundColor").ColorValue // here's a bug - it it doesn't reset the color properly
		  self.Control.Style.FontName = replace(self.resetStyleInformations.Value("FontName").StringValue, "-Neue", "") // here's a bug when you use Helvetica, it doesn't reset the font properly
		  //self.Control.Style.Opacity = self.resetStyleInformations.Lookup("Opacity", 1)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Control As WebUIControl
	#tag EndProperty

	#tag Property, Flags = &h0
		resetStyleInformations As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bold"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Strikethrough"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderThickness"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ForegroundColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opacity"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cursor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="WebStyle.Cursors"
			EditorType="Enum"
			#tag EnumValues
				"0 - Inherit"
				"1 - Default"
				"2 - Pointer"
				"3 - Text"
				"4 - Wait"
				"5 - Help"
				"6 - Move"
				"7 - ResizeNorth"
				"8 - ResizeSouth"
				"9 - ResizeEast"
				"10 - ResizeWest"
				"11 - ResizeNorthEast"
				"12 - ResizeNorthWest"
				"13 - ResizeSouthEast"
				"14 - ResizeSouthWest"
				"15 - ResizeColumn"
				"16 - ResizeRow"
				"17 - Progress"
				"18 - NoDrop"
				"19 - NotAllowed"
				"20 - VerticalText"
				"21 - Crosshair"
				"22 - None"
			#tag EndEnumValues
		#tag EndViewProperty
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
