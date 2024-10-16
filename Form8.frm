VERSION 5.00
Begin VB.Form Form8 
   Caption         =   "删除地图"
   ClientHeight    =   9885
   ClientLeft      =   4590
   ClientTop       =   3735
   ClientWidth     =   14940
   LinkTopic       =   "Form8"
   ScaleHeight     =   9885
   ScaleWidth      =   14940
   StartUpPosition =   2  '屏幕中心
   Begin VB.Label Label1 
      BackColor       =   &H00008080&
      Caption         =   "Loading"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   72
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   1560
      TabIndex        =   0
      Top             =   3720
      Width           =   9615
   End
   Begin VB.Image Image4 
      Height          =   1215
      Left            =   11520
      Top             =   3840
      Width           =   3135
   End
   Begin VB.Image Image3 
      Height          =   1815
      Left            =   8160
      Top             =   7080
      Width           =   3015
   End
   Begin VB.Image Image2 
      Height          =   1815
      Left            =   3720
      Top             =   7080
      Width           =   3255
   End
   Begin VB.Image Image1 
      Height          =   9900
      Left            =   0
      Picture         =   "Form8.frx":0000
      Top             =   0
      Width           =   14955
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String



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

Private Sub Image2_Click()
On Error GoTo m
o = MsgBox("你确定这么做吗？这个地图会消失很久（真的很久）", vbYesNo, "你确定这么做吗？这个地图会消失很久（真的很久）")
If o = vbYes Then
Kill App.Path + "\maps\" + Label1.Caption
MsgBox "删除成功", 48, "提示"
GoTo y
Else
GoTo y
End If
m: MsgBox "未知错误", 17, "错误"
y: End Sub

Private Sub Image3_Click()
Form8.Hide
Form7.Show
End Sub

Private Sub Image4_Click()
On Error GoTo q
a = Dir
Label1.Caption = a
If Label1.Caption = "" Then
a = Dir(App.Path + "\maps\*.map")
Label1.Caption = a
End If
GoTo w
q: a = Dir(App.Path + "\maps\*.map")
Label1.Caption = a
w: End Sub

