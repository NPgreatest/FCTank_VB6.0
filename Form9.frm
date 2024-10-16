VERSION 5.00
Begin VB.Form Form9 
   BackColor       =   &H00C00000&
   Caption         =   "加载地图"
   ClientHeight    =   8100
   ClientLeft      =   3630
   ClientTop       =   2850
   ClientWidth     =   14325
   LinkTopic       =   "Form9"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8100
   ScaleWidth      =   14325
   Begin VB.CommandButton Command4 
      Caption         =   "12"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   12
      Left            =   12000
      TabIndex        =   17
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "11"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   11
      Left            =   9600
      TabIndex        =   16
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "10"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   10
      Left            =   6840
      TabIndex        =   15
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   9
      Left            =   4440
      TabIndex        =   14
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   8
      Left            =   1680
      TabIndex        =   13
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   7
      Left            =   12360
      TabIndex        =   12
      Top             =   720
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   6
      Left            =   10560
      TabIndex        =   11
      Top             =   720
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   5
      Left            =   8760
      TabIndex        =   10
      Top             =   720
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   4
      Left            =   6960
      TabIndex        =   9
      Top             =   720
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   3
      Left            =   5160
      TabIndex        =   8
      Top             =   720
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   2
      Left            =   3360
      TabIndex        =   7
      Top             =   720
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   1
      Left            =   1440
      TabIndex        =   6
      Top             =   720
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "下一个"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   8640
      TabIndex        =   3
      Top             =   4560
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   9000
      TabIndex        =   2
      Top             =   6360
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "加载它"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4800
      TabIndex        =   1
      Top             =   6240
      Width           =   3615
   End
   Begin VB.Line Line1 
      BorderWidth     =   20
      X1              =   -120
      X2              =   15840
      Y1              =   4320
      Y2              =   4320
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C00000&
      Caption         =   "剧情模式"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   1
      Left            =   1080
      TabIndex        =   5
      Top             =   240
      Width           =   2295
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C00000&
      Caption         =   "自定义"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   0
      Left            =   1680
      TabIndex        =   4
      Top             =   4680
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C00000&
      Caption         =   "Loading"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   615
      Left            =   6120
      TabIndex        =   0
      Top             =   5040
      Width           =   2175
   End
End
Attribute VB_Name = "Form9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String
Private Sub Command1_Click()
If Label1.Caption = "" Then
MsgBox "您暂时没有地图，请编辑"
Form9.Hide
Form7.Show
Else
Open App.Path + "\maps\" + Label1.Caption For Input As #1
For H = 1 To 400
Input #1, Loads(H)
Next H
Unload Me
Form9.Hide
Form3.Show
Form3.Label7.Visible = True
Close #1
End If
End Sub

Private Sub Command2_Click()
Form9.Hide
Form1.Show
End Sub

Private Sub Command3_Click()
On Error GoTo q
a = Dir
Label1.Caption = a
If Label1.Caption = "" Then
a = Dir(App.Path + "\maps\*.map")
Label1.Caption = a
End If
GoTo y
q: a = Dir(App.Path + "\maps\*.map")
Label1.Caption = a
y: End Sub

Private Sub Command4_Click(Index As Integer)
If Index = 1 Then
MsgBox "公元2203年，我们的天文台收到了一封神秘的讯息，无人知道它从何而来。", 48, ""
MsgBox "「不要回答！不要回答！不要回答！」", 17, ""
MsgBox "然而，我们还是打开了主动式信号探测器，试图找到发送它的人。", 48, ""
MsgBox "但是，并非所愿。", 48, ""
MsgBox "2个月后，一扇传送门悄然出现在纽约上空，数以千万计的飞船冲了进来，摧毁了地上的一切，不久，其他地方也遭受了同样的攻击。", 48, ""
MsgBox "不管侵略者是谁，我们都要抵抗。", 48, ""
MsgBox "所有的高科技战车AI都已经被干扰了，我们只能出动我们的古董——坦克。", 48, ""
End If
If Index = 2 Then
MsgBox "最终，这个城市安全了，你也被推选成了新市长", 48, ""
MsgBox "但是，你自己心里清楚，这个世界，仍未被完全治愈。", 48, ""
MsgBox "To Be Continued", 48, ""
End If
If Index = 3 Then
MsgBox "糟糕，被困住了", 48, ""
MsgBox "警报，一大批外形坦克即将到来", 17, "Error"
End If
If Index = 4 Then
MsgBox "潜入地方基地。。。。。。"
End If
If Index = 6 Then
MsgBox "深入地方基地。。。。。。"
MsgBox "糟糕，又被困住了", 17, ""
End If
If Index = 5 Then
MsgBox "一群敌人被困住了，速速解决它们^_^"
End If
If Index = 7 Then
MsgBox "发现几个零散敌人，消灭！", 48, ""
End If
If Index = 8 Then
MsgBox "掩护，掩护", 48, ""
End If
If Index = 9 Then
MsgBox "任务：消灭敌人！！", 48, ""
End If
If Index = 10 Then
MsgBox "发现大量敌人！！", 17, ""
End If
If Index = 11 Then
MsgBox "敌人可以通过挤压来穿墙", 17, "警告"
End If
If Index = 12 Then
MsgBox "这是最后一波敌人了"
End If
Dim k As Integer
k = Index
Open App.Path + "\RPG\" + Command4(Index).Caption + ".map" For Input As #1
For H = 1 To 400
Input #1, Loads(H)
Next H
Form9.Hide
Form3.Show
Form3.Label7.Visible = True
Close #1
End Sub

Private Sub Form_Load()
a = Dir(App.Path + "\maps\*.map")
If a = "" Then
MsgBox "您尚未编辑地图，请编辑地图", 48, "提示"
Form8.Hide
Form7.Show
Else
Label1.Caption = a
End If
End Sub

