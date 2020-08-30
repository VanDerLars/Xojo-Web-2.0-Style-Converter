#tag Class
Protected Class WebStyleExtended
Inherits WebStyle
	#tag Method, Flags = &h0
		Sub applyStyleCode()
		  // insert here the new xojo style informations
		  // this method is called by the WebStyleHandler whenever a view is made visible or is applied
		  // use this only in a subclass
		  // you can use the "control" property to access the control you applied to this style
		  
		  try
		    // here's a Xojo bug:
		    //   I cannot access the Style properties, even though the self.control is not nil and totally accessable
		    //   If you access these properties directly over the control, for examle in the "applyWebstyle" Method
		    //   then it works fine. 
		    //   But not here.
		    //   Grmbl
		    //   or am I wrong?
		    
		    
		    self.resetStyleInformations.Value("BackgroundColor") = self.Control.Style.BackgroundColor
		    self.resetStyleInformations.Value("Bold") = self.Control.Style.Bold
		    self.resetStyleInformations.Value("BorderColor") = self.Control.Style.BorderColor
		    self.resetStyleInformations.Value("BorderThickness") = self.Control.Style.BorderThickness
		    self.resetStyleInformations.Value("Cursor") = self.Control.Style.Cursor
		    self.resetStyleInformations.Value("FontName") = self.Control.Style.FontName
		    self.resetStyleInformations.Value("FontSize") = self.Control.Style.FontSize
		    self.resetStyleInformations.Value("ForegroundColor") = self.Control.Style.ForegroundColor
		    self.resetStyleInformations.Value("Italic") = self.Control.Style.Italic
		    self.resetStyleInformations.Value("Opacity") = self.Control.Style.Opacity
		    self.resetStyleInformations.Value("Strikethrough") = self.Control.Style.Strikethrough
		    self.resetStyleInformations.Value("Underline") = self.Control.Style.Underline
		    
		    
		  catch err as NilObjectException
		    System.Log(1, "Buggy Xojo Shit")
		  end try
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
		  
		  
		  
		  self.Control.Style.BackgroundColor = self.resetStyleInformations.Lookup("BackgroundColor", nil)
		  self.Control.Style.Bold = self.resetStyleInformations.Lookup("Bold", false)
		  self.Control.Style.BorderColor = self.resetStyleInformations.Lookup("BorderColor", nil)
		  self.Control.Style.BorderThickness = self.resetStyleInformations.Lookup("BorderThickness", 1)
		  self.Control.Style.Cursor = self.resetStyleInformations.Lookup("Cursor", nil)
		  self.Control.Style.FontName = self.resetStyleInformations.Lookup("FontName", "")
		  self.Control.Style.FontSize = self.resetStyleInformations.Lookup("FontSize", 12)
		  self.Control.Style.ForegroundColor = self.resetStyleInformations.Lookup("ForegroundColor", nil)
		  self.Control.Style.Italic = self.resetStyleInformations.Lookup("Italic", false)
		  self.Control.Style.Opacity = self.resetStyleInformations.Lookup("Opacity", 1)
		  self.Control.Style.Strikethrough = self.resetStyleInformations.Lookup("Strikethrough", false)
		  self.Control.Style.Underline = self.resetStyleInformations.Lookup("Underline", false)
		  
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
