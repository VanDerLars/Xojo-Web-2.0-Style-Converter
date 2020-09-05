#tag Class
Protected Class WebStyleHandler
	#tag Method, Flags = &h0, Description = 6170706C792061205765625374796C65436C61737320746F20616E20656C656D656E74
		Sub applyWebStyle(applyTo as WebUIControl, webstyle as WebStyleExtended, optional removeAplliedStyle as Boolean = true)
		  // applyTo -> the webcontrol which will get the class applied
		  // webstyle -> the webStyleClass-subclass, with the exact same name as the CSS class you want to apply
		  //          -> webstyles can also have xojo-style-code. use the "applyStyleCode" method for this
		  // removeAplliedStyle -> set to true: only one webstyle will be applied at the same time
		  //                    -> as it was in Xojo WE 1.0
		  //                    -> set to false: you can apply multiple classes, 
		  //                       but currently you have to save by yourself which is applied to each control
		  
		  
		  // first remove the old style?
		  if removeAplliedStyle then
		    var old as WebStyleExtended = self.appliedStyles.Lookup(applyTo.ControlID, nil)
		    if old <> nil then
		      self.removeWebStyle(applyTo, old)
		    end if
		  end if
		  
		  // add the webstyle as css class to the frontend element
		  var js as string = "$('#" + applyTo.ControlID + "').addClass('" + webstyle.name + "');"
		  Session.ExecuteJavaScript(js)
		  
		  // add the in-code style informations
		  webstyle.Control = applyTo
		  var test as color = applyTo.Style.BackgroundColor
		  webstyle.ApplyStyleCode
		  
		  self.appliedStyles.Value(applyTo.ControlID) = webstyle
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  var dics as new Dictionary
		  self.appliedStyles = dics
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub removeWebStyle(removeFrom as WebUIControl, webstyle as WebStyleExtended, resetStyleInformation as Boolean = true)
		  
		  // removes a webclass from the element
		  var js as string = "$('#" + removeFrom.ControlID + "').removeClass('" + webstyle.name + "');"
		  Session.ExecuteJavaScript(js)
		  
		  if self.appliedStyles.Lookup(removeFrom.ControlID, nil) <> nil then
		    // resets the xojo code related style informations
		    var style as WebStyleExtended = self.appliedStyles.value(removeFrom.ControlID)
		    if resetStyleInformation then style.resetStyle
		    
		    // remove the style info from the dictionary.
		    self.appliedStyles.Remove(removeFrom.ControlID)
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		appliedStyles As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
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
