#tag Class
Protected Class blueText
Inherits WebStyleExtended
	#tag Method, Flags = &h0
		Sub applyStyleCode()
		  // Calling the overridden superclass method.
		  Super.ApplyStyleCode()
		  
		  // enter your own style code
		  // pay attention: using multiple styles on one element can lead to weird behaviour if you use this xojo code style system.
		  // besser use only css styles then
		  
		  self.Control.Style.Bold = True
		  self.Control.Style.BackgroundColor = &cFFAE6200
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		name As string = "bluetext"
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
		#tag ViewProperty
			Name="name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
