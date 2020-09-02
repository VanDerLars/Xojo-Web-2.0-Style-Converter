#tag WebPage
Begin WebPage WebPage2
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   False
   Height          =   482
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   "0"
   IsImplicitInstance=   False
   LayoutDirection =   "0"
   LayoutType      =   "0"
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   TabIndex        =   0
   Title           =   "Convert old Xojo Styles to CSS"
   Top             =   0
   Visible         =   True
   Width           =   926
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   Begin WebTabPanel TabPanel1
      ControlID       =   ""
      Enabled         =   True
      HasBorder       =   True
      Height          =   398
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   "0"
      LayoutType      =   "0"
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelCount      =   2
      Scope           =   2
      SelectedPanelIndex=   2
      TabDefinition   =   "Import\rOptions\rConvert"
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   64
      Visible         =   True
      Width           =   886
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      Begin WebPopupMenu PopupMenu1
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   ""
         InitialValue    =   "Create CSS Classes out of it and just a Webstyle Wrapper\nCreate a full new WebStyle with Xojo-Styling-Code instead"
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "1"
         Parent          =   "TabPanel1"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowValue=   ""
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   126
         Visible         =   True
         Width           =   846
      End
      Begin WebButton Button1
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "DO MAGIC"
         ControlID       =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   "1"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "2"
         Parent          =   "TabPanel1"
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   126
         Visible         =   True
         Width           =   218
      End
      Begin WebTextArea TextArea2
         AllowReturnKey  =   True
         AllowSpellChecking=   False
         Caption         =   ""
         ControlID       =   ""
         Enabled         =   True
         Height          =   270
         Hint            =   ""
         Index           =   -2147483648
         indicator       =   "0"
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         MaximumCharactersAllowed=   0
         PanelIndex      =   "2"
         Parent          =   "TabPanel1"
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         Tooltip         =   ""
         Top             =   172
         Value           =   ""
         Visible         =   True
         Width           =   846
      End
      Begin WebLabel Label1
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         indicator       =   "0"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "TabPanel1"
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   126
         Underline       =   False
         Value           =   "Upload your Webstyle .xojo_code files"
         Visible         =   True
         Width           =   290
      End
      Begin WebCheckbox Checkbox1
         Caption         =   "Use the `!important`-Rule to overwrite Xojo Styles information as much as possible"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   ""
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "1"
         Parent          =   "TabPanel1"
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   172
         Value           =   False
         Visible         =   True
         Width           =   846
      End
      Begin WebFileUploader FileUploader1
         Caption         =   "Select"
         ControlID       =   ""
         Enabled         =   True
         Filter          =   ""
         Height          =   38
         Hint            =   ""
         Index           =   -2147483648
         Indicator       =   ""
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         MaximumBytes    =   0
         MaximumFileCount=   0
         PanelIndex      =   "0"
         Parent          =   "TabPanel1"
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   168
         UploadTimeout   =   0
         Visible         =   True
         Width           =   288
      End
      Begin WebButton Button2
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Upload"
         ControlID       =   ""
         Default         =   True
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   "1"
         Left            =   338
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "TabPanel1"
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   168
         Visible         =   True
         Width           =   100
      End
   End
   Begin WebToolbar Toolbar1
      ControlID       =   ""
      Enabled         =   True
      FullWidth       =   True
      Height          =   56
      Index           =   -2147483648
      Indicator       =   "0"
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Position        =   "1"
      Scope           =   0
      TabIndex        =   6
      Title           =   ""
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   926
   End
   Begin WebListBox ListBox1
      ColumnCount     =   1
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   False
      Height          =   321
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   ""
      LastAddedRowIndex=   0
      Left            =   485
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   ""
      RowCount        =   0
      RowSelectionType=   "1"
      Scope           =   2
      SearchCriteria  =   ""
      SelectedRowColor=   &c0272D300
      SelectedRowIndex=   0
      TabIndex        =   10
      TabStop         =   True
      Tooltip         =   ""
      Top             =   122
      Visible         =   True
      Width           =   400
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  self.filesContents = new Dictionary
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		filesContents As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  var res() as string
		  
		  for each dict as DictionaryEntry in self.filesContents
		    var key as string = dict.Key
		    var file as string = dict.Value
		    
		    var stlConv as new webStyleConverter(file)
		    res.AddRow(stlConv.getCSSClass(Checkbox1.Value))
		    
		    
		  next
		  
		  self.TextArea2.Value = string.FromArray(res, EndOfLine)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FileUploader1
	#tag Event
		Sub UploadFinished(Files() As WebUploadedFile)
		  
		  Var outputFile As FolderItem
		  Var textInput As TextInputStream
		  var value as string
		  
		  For Each file As WebUploadedFile In files
		    Try
		      
		      
		      
		      textInput = TextInputStream.Open(file.File)
		      textInput.Encoding = Encodings.UTF8
		      
		      self.ListBox1.AddRow(file.Name)
		      self.filesContents.Value(file.name) = textInput.ReadAll
		      
		      textInput.Close
		      
		      
		      
		      
		    Catch e As IOException
		      Continue
		    End Try
		  Next
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  FileUploader1.StartUpload
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Toolbar1
	#tag Event
		Sub Opening()
		  var a as new WebToolbarButton
		  a.Caption = "Test Panel"
		  a.Badge = "?"
		  a.Tag = 0
		  var b as new WebToolbarButton
		  b.Caption = "Converter"
		  b.Badge = "!"
		  b.Tag = 1
		  
		  me.AddItem(a)
		  me.AddItem(b)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(Item as WebToolbarButton)
		  select case item.Tag
		  case 0
		    WebPage1.Show
		  case 1
		    WebPage2.Show
		    
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabOrderWrap"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
