#tag Class
Protected Class App
Inherits WebApplication
	#tag Property, Flags = &h0
		runIntoTheXojoBug As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="runIntoTheXojoBug"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
