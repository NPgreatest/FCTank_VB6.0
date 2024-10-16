VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "星际：战争阴影中文版beta0.0.1"
   ClientHeight    =   12000
   ClientLeft      =   1230
   ClientTop       =   450
   ClientWidth     =   18390
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   12000
   ScaleWidth      =   18390
   Begin VB.Image Image6 
      Height          =   660
      Left            =   6720
      Picture         =   "Form1.frx":95E0F
      Top             =   9240
      Width           =   2610
   End
   Begin VB.Image Image5 
      Height          =   660
      Left            =   10320
      Picture         =   "Form1.frx":970D2
      Top             =   9240
      Width           =   2430
   End
   Begin VB.Image Image4 
      Height          =   660
      Left            =   6720
      Picture         =   "Form1.frx":97F35
      Top             =   8160
      Width           =   6060
   End
   Begin VB.Image Image3 
      Height          =   660
      Left            =   6720
      Picture         =   "Form1.frx":99C8A
      Top             =   7200
      Width           =   6060
   End
   Begin VB.Image Image2 
      Height          =   660
      Left            =   6720
      Picture         =   "Form1.frx":9BA50
      Top             =   6240
      Width           =   6060
   End
   Begin VB.Image Image1 
      Height          =   13920
      Left            =   0
      Picture         =   "Form1.frx":9D6CE
      Top             =   0
      Width           =   18540
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Image2_Click()
Form1.Hide
Form9.Show
End Sub

Private Sub Image3_Click()
Form1.Hide
Form7.Show
End Sub

Private Sub Image4_Click()
Form2.Show
End Sub

Private Sub Image5_Click()
End
End Sub

Private Sub Image6_Click()
Form1.Hide
Form4.Show
End Sub

