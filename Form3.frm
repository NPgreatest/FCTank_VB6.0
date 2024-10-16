VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00FFFFFF&
   Caption         =   "NP坦克大战"
   ClientHeight    =   9435
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12360
   LinkTopic       =   "Form3"
   ScaleHeight     =   10000
   ScaleMode       =   0  'User
   ScaleWidth      =   11492.34
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer TankMove 
      Interval        =   1
      Left            =   4320
      Top             =   3360
   End
   Begin VB.Timer MeHit 
      Interval        =   1
      Left            =   5400
      Top             =   6480
   End
   Begin VB.Timer EnemyShoting3 
      Interval        =   1
      Left            =   5760
      Top             =   4680
   End
   Begin VB.Timer EnemyShoting2 
      Interval        =   10
      Left            =   5280
      Top             =   4680
   End
   Begin VB.Timer Check 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   9720
      Top             =   3480
   End
   Begin VB.Timer EnemyMove 
      Interval        =   1
      Left            =   3600
      Top             =   4680
   End
   Begin VB.Timer EnemyMove2 
      Interval        =   1000
      Left            =   4080
      Top             =   4680
   End
   Begin VB.Timer BedrockHit 
      Interval        =   1
      Left            =   7920
      Top             =   6480
   End
   Begin VB.Timer BedrocksFlash 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   7440
      Top             =   6480
   End
   Begin VB.Timer ShootingBullet2 
      Interval        =   1
      Left            =   2160
      Top             =   7440
   End
   Begin VB.Timer WallsHit 
      Interval        =   1
      Left            =   6360
      Top             =   6480
   End
   Begin VB.Timer RiverMoving 
      Interval        =   1000
      Left            =   5880
      Top             =   6480
   End
   Begin VB.Timer ShootingBullet 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   1680
      Top             =   7440
   End
   Begin VB.Label Label7 
      BackColor       =   &H00FFFFFF&
      Caption         =   "开始游戏"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   11040
      TabIndex        =   7
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Beta 
      BackColor       =   &H00FFFFFF&
      Height          =   135
      Left            =   11040
      TabIndex        =   6
      Top             =   3240
      Width           =   1095
   End
   Begin VB.Label Label6 
      BackColor       =   &H00FFFFFF&
      Caption         =   "退出游戏"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   11040
      TabIndex        =   5
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label5 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Loading"
      Height          =   255
      Left            =   11280
      TabIndex        =   4
      Top             =   2160
      Width           =   1095
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "敌方剩余人数："
      Height          =   375
      Left            =   11040
      TabIndex        =   3
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Image EnemyShots 
      Height          =   120
      Index           =   0
      Left            =   11900
      Picture         =   "Form3.frx":0000
      Top             =   6720
      Width           =   120
   End
   Begin VB.Image EnemyTanks 
      Height          =   450
      Index           =   0
      Left            =   11760
      Picture         =   "Form3.frx":0102
      Top             =   6960
      Width           =   450
   End
   Begin VB.Image walls 
      Height          =   450
      Index           =   0
      Left            =   11760
      Picture         =   "Form3.frx":0C0E
      Top             =   7800
      Width           =   450
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "障碍物:"
      Height          =   255
      Left            =   11640
      TabIndex        =   2
      Top             =   7560
      Width           =   855
   End
   Begin VB.Image rivers 
      Height          =   450
      Index           =   0
      Left            =   11760
      Picture         =   "Form3.frx":171A
      Top             =   8760
      Width           =   450
   End
   Begin VB.Image bedrocks 
      Height          =   450
      Index           =   0
      Left            =   11760
      Picture         =   "Form3.frx":2226
      Top             =   8280
      Width           =   450
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Loading"
      Height          =   375
      Left            =   11040
      TabIndex        =   1
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      Caption         =   "我方血量："
      Height          =   255
      Left            =   11040
      TabIndex        =   0
      Top             =   960
      Width           =   975
   End
   Begin VB.Image Image1 
      Height          =   10950
      Left            =   10755
      Picture         =   "Form3.frx":2D32
      Top             =   0
      Width           =   150
   End
   Begin VB.Image Bullet 
      Height          =   120
      Left            =   5640
      Picture         =   "Form3.frx":88B4
      Top             =   8760
      Width           =   120
   End
   Begin VB.Image Tank 
      Height          =   450
      Left            =   5520
      Picture         =   "Form3.frx":89B6
      Top             =   9000
      Width           =   450
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Direaction As Integer
Dim TankHP As Integer
Dim Shoot As Boolean
Dim DiedCount As Integer
Dim Died(600) As Boolean
Dim BulletDireation As Integer
Dim RiverMove As Integer
Dim WallsHP(600) As Integer
Dim EnemyHP(600) As Integer
Dim EnemyDireaction(1 To 100) As Integer
Dim EnemyShotDireaction(1 To 100) As Integer
Dim EnemyShoot(1 To 100) As Boolean
Dim BedIndex As Integer
Function LoadMap()
Dim Ri As Integer
Dim Be As Integer
Dim Wa As Integer
Dim En As Integer
Dim c As Integer
c = 1
Ri = 1
Be = 1
Wa = 1
En = 1
Dim Draw(1 To 20, 1 To 20) As Integer
For a = 1 To 20
For b = 1 To 20
Draw(a, b) = Loads(c)
c = c + 1
If Draw(a, b) = 2 Then
m = river((b - 1) * 500, (a - 1) * 500, Ri)
Ri = Ri + 1
End If
If Draw(a, b) = 3 Then
m = Bedrock((b - 1) * 500, (a - 1) * 500, Be)
Be = Be + 1
End If
If Draw(a, b) = 4 Then
m = Wall((b - 1) * 500, (a - 1) * 500, Wa)
Wa = Wa + 1
End If
If Draw(a, b) = 5 Then
m = Enemytank((b - 1) * 500, (a - 1) * 500, En)
En = En + 1
End If
If Draw(a, b) = 6 Then
Tank.Left = (b - 1) * 500
Tank.Top = (a - 1) * 500
End If
Next b
Next a
Rem 以下是遮丑的代码（敌方子弹bug）
m = Bedrock(-500, 0, Be)
Be = Be + 1
m = Bedrock(-1000, 0, Be)
Be = Be + 1
m = Bedrock(-1500, 0, Be)
Be = Be + 1
m = Bedrock(-2000, 0, Be)
Be = Be + 1
m = Bedrock(-2500, 0, Be)
Be = Be + 1
m = Bedrock(-3000, 0, Be)
Be = Be + 1
m = Bedrock(-3500, 0, Be)
Be = Be + 1
m = Bedrock(-4000, 0, Be)
Be = Be + 1
m = Bedrock(-4500, 0, Be)
Be = Be + 1
m = Bedrock(-5000, 0, Be)
Be = Be + 1
m = Bedrock(-5500, 0, Be)
Be = Be + 1
m = Bedrock(-6000, 0, Be)
Be = Be + 1
m = Bedrock(-6500, 0, Be)
Be = Be + 1
m = Bedrock(-7000, 0, Be)
Be = Be + 1
m = Bedrock(-7500, 0, Be)
Be = Be + 1
m = Bedrock(-8000, 0, Be)
Be = Be + 1
m = Bedrock(-8500, 0, Be)
Be = Be + 1
m = Bedrock(-9000, 0, Be)
Be = Be + 1
m = Bedrock(-9500, 0, Be)
Be = Be + 1
m = Bedrock(-10000, 0, Be)
Be = Be + 1
Rem------↑------
End Function



Private Sub EnemyShoting_Timer()
For l = 1 To EnemyTanks.Count - 1
If EnemyShoot(l) = True Then
EnemyShotDireaction(l) = EnemyDireaction(l)
End If
Next l
End Sub



Private Sub EnemyShoting2_Timer()
For o = 1 To EnemyTanks.Count - 1
If EnemyShotDireaction(o) = 1 Then
EnemyShots(o).Left = EnemyShots(o).Left + 100
ElseIf EnemyShotDireaction(o) = 2 Then
EnemyShots(o).Left = EnemyShots(o).Left - 100
ElseIf EnemyShotDireaction(o) = 3 Then
EnemyShots(o).Top = EnemyShots(o).Top - 100
ElseIf EnemyShotDireaction(o) = 4 Then
EnemyShots(o).Top = EnemyShots(o).Top + 100
End If
Next o
End Sub

Private Sub EnemyShoting3_Timer()
For y = 1 To EnemyTanks.Count - 1
If EnemyShots(y).Left <= 0 Then
EnemyShoot(y) = True
EnemyShots(y).Left = EnemyTanks(y).Left + 140
EnemyShots(y).Top = EnemyTanks(y).Top + 140
EnemyShotDireaction(y) = EnemyDireaction(y)
End If
If EnemyShots(y).Top <= 0 Then
EnemyShoot(y) = True
EnemyShots(y).Left = EnemyTanks(y).Left + 140
EnemyShots(y).Top = EnemyTanks(y).Top + 140
EnemyShotDireaction(y) = EnemyDireaction(y)
End If
If EnemyShots(y).Left >= 10000 Then
EnemyShoot(y) = True
EnemyShots(y).Left = EnemyTanks(y).Left + 140
EnemyShots(y).Top = EnemyTanks(y).Top + 140
EnemyShotDireaction(y) = EnemyDireaction(y)
End If
If EnemyShots(y).Top >= 10000 Then
EnemyShoot(y) = True
EnemyShots(y).Left = EnemyTanks(y).Left + 140
EnemyShots(y).Top = EnemyTanks(y).Top + 140
EnemyShotDireaction(y) = EnemyDireaction(y)
End If
Next y
End Sub
Private Sub Clear()
For s = 1 To walls.Count - 1
Unload walls(s)
Next s
For d = 1 To bedrocks.Count - 1
Unload bedrocks(d)
Next d
For f = 1 To rivers.Count - 1
Unload rivers(f)
Next f
BedIndex = 0
For i = 0 To 600
WallsHP(i) = 2
EnemyHP(i) = 1
Next i
For a = 1 To EnemyTanks.Count - 1
Unload EnemyTanks(a)
EnemyDireaction(a) = 1
Next a
For b = 1 To EnemyShots.Count - 1
Unload EnemyShots(b)
Next b

End Sub

Private Sub BedrockHit_Timer()
Dim a As Integer
For a = 0 To bedrocks.Count - 1
For b = 1 To EnemyShots.Count - 1
If Hit(EnemyShots(b), bedrocks(a)) Then
bedrocks(a).Picture = LoadPicture(App.Path + "\pictures\Bedrock2.bmp")
EnemyShots(b).Left = -1000
BedrocksFlash.Enabled = True
BedIndex = a
End If
Next b
If Hit(Bullet, bedrocks(a)) = True Then
bedrocks(a).Picture = LoadPicture(App.Path + "\pictures\Bedrock2.bmp")
Bullet.Left = -500
BedrocksFlash.Enabled = True
BedIndex = a
End If
Next a
End Sub

Private Sub BedrocksFlash_Timer()
bedrocks(BedIndex).Picture = LoadPicture(App.Path + "\pictures\Bedrock1.bmp")
End Sub


Private Sub Check_Timer()
If DiedCount = 0 Then
MsgBox "您赢了", 48, ""
Clear
Me.Hide
Form1.Show
Check.Enabled = False
End If
Label5.Caption = DiedCount
For a = 1 To EnemyTanks.Count - 1
If EnemyHP(a) = 0 Then
EnemyShots(a).Left = -1000
EnemyShots(a).Top = -1000
If Died(a) = False Then
DiedCount = DiedCount - 1
Died(a) = True
End If
End If
If Hit(Bullet, EnemyTanks(a)) = True Then
EnemyTanks(a).Left = -300
EnemyShots(a).Left = -100000
EnemyShots(a).Top = -100000
EnemyShotDireaction(a) = 3
EnemyTanks(a).Visible = False
EnemyHP(a) = EnemyHP(a) - 1
Bullet.Left = -100
Bullet.Top = -100
End If
Next a
Label4.Caption = TankHP
If TankHP <= 0 Then
MsgBox "您输了", 48, "很遗憾"
Check.Enabled = False
Clear
Me.Hide
Form1.Show
End If
End Sub

Private Sub EnemyMove_Timer()
For a = 1 To EnemyTanks.Count - 1
If EnemyHP(a) = 0 Then
ElseIf EnemyHP(a) = 1 Then
If EnemyDireaction(a) = 1 Then
EnemyTanks(a).Left = EnemyTanks(a).Left + 30
EnemyTanks(a).Picture = LoadPicture(App.Path + "\pictures\EnemyRight.bmp")
If EnemyTanks(a).Left + EnemyTanks(a).Width >= 10000 Then
EnemyTanks(a).Left = EnemyTanks(a).Left - 30
End If
For z = 0 To walls.Count - 1
If Hit(EnemyTanks(a), walls(z)) = True Then
EnemyTanks(a).Left = EnemyTanks(a).Left - 30
End If
Next z
For e = 0 To bedrocks.Count - 1
If Hit(EnemyTanks(a), bedrocks(e)) = True Then
EnemyTanks(a).Left = EnemyTanks(a).Left - 30
End If
Next e
For one = 0 To rivers.Count - 1
If Hit(EnemyTanks(a), rivers(one)) = True Then
EnemyTanks(a).Left = EnemyTanks(a).Left - 30
End If
Next one
For i = 0 To EnemyTanks.Count - 1
If Hit(EnemyTanks(a), EnemyTanks(i)) = True Then
If i = a Then GoTo X
EnemyTanks(a).Left = EnemyTanks(a).Left - 30
X: End If
Next i
If Hit(EnemyTanks(a), Tank) = True Then EnemyTanks(a).Left = EnemyTanks(a).Left - 30
ElseIf EnemyDireaction(a) = 2 Then
EnemyTanks(a).Left = EnemyTanks(a).Left - 30
EnemyTanks(a).Picture = LoadPicture(App.Path + "\pictures\EnemyLeft.bmp")
If EnemyTanks(a).Left <= 0 Then
EnemyTanks(a).Left = EnemyTanks(a).Left + 30
End If
For b = 0 To walls.Count - 1
If Hit(EnemyTanks(a), walls(b)) = True Then
EnemyTanks(a).Left = EnemyTanks(a).Left + 30
End If
Next b
For f = 0 To bedrocks.Count - 1
If Hit(EnemyTanks(a), bedrocks(f)) = True Then
EnemyTanks(a).Left = EnemyTanks(a).Left + 30
End If
Next f
For two = 0 To rivers.Count - 1
If Hit(EnemyTanks(a), rivers(two)) = True Then
EnemyTanks(a).Left = EnemyTanks(a).Left + 30
End If
Next two
For ii = 0 To EnemyTanks.Count - 1
If Hit(EnemyTanks(a), EnemyTanks(ii)) = True Then
If ii = a Then GoTo v
EnemyTanks(a).Left = EnemyTanks(a).Left + 30
v: End If
Next ii
If Hit(EnemyTanks(a), Tank) = True Then EnemyTanks(a).Left = EnemyTanks(a).Left + 30
ElseIf EnemyDireaction(a) = 3 Then
EnemyTanks(a).Top = EnemyTanks(a).Top - 30
EnemyTanks(a).Picture = LoadPicture(App.Path + "\pictures\EnemyUp.bmp")
If EnemyTanks(a).Top <= 0 Then
EnemyTanks(a).Top = EnemyTanks(a).Top + 30
End If
For c = 0 To walls.Count - 1
If Hit(EnemyTanks(a), walls(c)) = True Then
EnemyTanks(a).Top = EnemyTanks(a).Top + 30
End If
Next c
For g = 0 To bedrocks.Count - 1
If Hit(EnemyTanks(a), bedrocks(g)) = True Then
EnemyTanks(a).Top = EnemyTanks(a).Top + 30
End If
Next g
For three = 0 To rivers.Count - 1
If Hit(EnemyTanks(a), rivers(three)) = True Then
EnemyTanks(a).Top = EnemyTanks(a).Top + 30
End If
Next three
For iii = 0 To EnemyTanks.Count - 1
If Hit(EnemyTanks(a), EnemyTanks(iii)) = True Then
If iii = a Then GoTo n
EnemyTanks(a).Top = EnemyTanks(a).Top + 30
n: End If
Next iii
If Hit(EnemyTanks(a), Tank) = True Then EnemyTanks(a).Top = EnemyTanks(a).Top + 30
ElseIf EnemyDireaction(a) = 4 Then
EnemyTanks(a).Top = EnemyTanks(a).Top + 30
EnemyTanks(a).Picture = LoadPicture(App.Path + "\pictures\EnemyDown.bmp")
If EnemyTanks(a).Top + EnemyTanks(a).Height >= 10000 Then
EnemyTanks(a).Top = EnemyTanks(a).Top - 30
End If
For d = 0 To walls.Count - 1
If Hit(EnemyTanks(a), walls(d)) = True Then
EnemyTanks(a).Top = EnemyTanks(a).Top - 30
End If
Next d
For H = 0 To bedrocks.Count - 1
If Hit(EnemyTanks(a), bedrocks(H)) = True Then
EnemyTanks(a).Top = EnemyTanks(a).Top - 30
End If
Next H
For four = 0 To rivers.Count - 1
If Hit(EnemyTanks(a), rivers(four)) = True Then
EnemyTanks(a).Top = EnemyTanks(a).Top - 30
End If
Next four
For iv = 0 To EnemyTanks.Count - 1
If Hit(EnemyTanks(a), EnemyTanks(iv)) = True Then
If a = iv Then GoTo m
EnemyTanks(a).Top = EnemyTanks(a).Top - 30
m: End If
Next iv
If Hit(EnemyTanks(a), Tank) = True Then EnemyTanks(a).Top = EnemyTanks(a).Top - 30
End If
End If
Next a
End Sub

Private Sub EnemyMove2_Timer()
For a = 1 To EnemyTanks.Count - 1
Static Move As Integer
Dim i As Integer
Randomize
For i = 1 To 4
Move = Int(Rnd * (4) + 1)
Next i
If Died(a) = False Then
EnemyDireaction(a) = Move
End If
Next a
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
TankMove.Enabled = True
If KeyCode = vbKeyRight Then
Direaction = 1
End If
If KeyCode = vbKeyLeft Then
Direaction = 2
End If
If KeyCode = vbKeyUp Then
Direaction = 3
End If
If KeyCode = vbKeyDown Then
Direaction = 4
End If

If KeyCode = 32 Then
If Shoot = True Then
Bullet.Picture = LoadPicture(App.Path + "\pictures\Shot.bmp")
Bullet.Visible = True
If Direaction = 1 Then
BulletDireation = 1
Bullet.Top = Tank.Top + 140
Bullet.Left = Tank.Left + 140
ShootingBullet.Enabled = True
ElseIf Direaction = 2 Then
BulletDireation = 2
Bullet.Top = Tank.Top + 140
Bullet.Left = Tank.Left + 140
ShootingBullet.Enabled = True
ElseIf Direaction = 3 Then
BulletDireation = 3
Bullet.Top = Tank.Top + 140
Bullet.Left = Tank.Left + 140
ShootingBullet.Enabled = True
ElseIf Direaction = 4 Then
BulletDireation = 4
Bullet.Top = Tank.Top + 140
Bullet.Left = Tank.Left + 140
ShootingBullet.Enabled = True
End If
End If
End If
If KeyCode = 27 Then
End
End If
End Sub


Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If KeyCode = 27 Then
End
End If
If KeyCode = 32 Then
Exit Sub
End If
TankMove.Enabled = False
End Sub

Private Sub Label6_Click()
Clear
Me.Hide
Form1.Show
Check.Enabled = False
End Sub

Private Sub Label7_Click()
LoadMap
DiedCount = EnemyTanks.Count - 1
For k = 0 To EnemyTanks.Count - 1
EnemyHP(k) = 1
Next k
For i = 0 To 600
WallsHP(i) = 2
Died(i) = False
Next i
For a = 1 To EnemyTanks.Count - 1
EnemyDireaction(a) = 1
Next a
TankHP = 5
Shoot = True
Label4.Caption = TankHP
Bullet.Left = -1000
Check.Enabled = True
Label7.Visible = False

End Sub

Private Sub MeHit_Timer()
For a = 1 To EnemyShots.Count - 1
If Hit(EnemyShots(a), Tank) = True Then
EnemyShots(a).Left = -1000
TankHP = TankHP - 1
End If
Next a
End Sub

Private Sub RiverMoving_Timer()
RiverMove = RiverMove + 1
Dim a As Integer
a = rivers().Count
If RiverMove Mod 2 Then
For b = 0 To a - 1
rivers(b).Picture = LoadPicture(App.Path + "\pictures\River2.bmp")
Next b
Else
For b = 0 To a - 1
rivers(b).Picture = LoadPicture(App.Path + "\pictures\River1.bmp")
Next b
End If
End Sub

Private Sub ShootingBullet_Timer()
If BulletDireation = 1 Then
Bullet.Left = Bullet.Left + 120
End If
If BulletDireation = 2 Then
Bullet.Left = Bullet.Left - 120
End If
If BulletDireation = 3 Then
Bullet.Top = Bullet.Top - 120
End If
If BulletDireation = 4 Then
Bullet.Top = Bullet.Top + 120
End If
Shoot = False
End Sub
Private Sub ShootingBullet2_Timer()
If Bullet.Left > 10000 Or Bullet.Top > 10000 Then
Shoot = True
Bullet.Left = -200
ShootingBullet.Enabled = False
ElseIf Bullet.Left < 0 Or Bullet.Top < 0 Then
Shoot = True
Bullet.Left = -200
ShootingBullet.Enabled = False
End If
End Sub


Private Sub TankMove_Timer()
If Direaction = 1 Then
Tank.Left = Tank.Left + 45
If TankHP < 3 Then
Tank.Picture = LoadPicture(App.Path + "\pictures\TankRightOut.bmp")
Else
Tank.Picture = LoadPicture(App.Path + "\pictures\TankRight.bmp")
End If
If Tank.Left + 500 >= 10000 Then Tank.Left = Tank.Left - 45
For a = 0 To walls.Count - 1
If Hit(Tank, walls(a)) = True Then
Tank.Left = Tank.Left - 45
End If
Next a
For e = 0 To bedrocks.Count - 1
If Hit(Tank, bedrocks(e)) = True Then
Tank.Left = Tank.Left - 45
End If
Next e
For aa = 1 To EnemyTanks.Count - 1
If Hit(Tank, EnemyTanks(aa)) = True Then
Tank.Left = Tank.Left - 45
End If
Next aa
For one = 0 To rivers.Count - 1
If Hit(Tank, rivers(one)) = True Then
Tank.Left = Tank.Left - 45
End If
Next one
ElseIf Direaction = 2 Then
Tank.Left = Tank.Left - 45
If TankHP < 3 Then
Tank.Picture = LoadPicture(App.Path + "\pictures\TankLeftOut.bmp")
Else
Tank.Picture = LoadPicture(App.Path + "\pictures\TankLeft.bmp")
End If
If Tank.Left <= 0 Then Tank.Left = Tank.Left + 45
For b = 0 To walls.Count - 1
If Hit(Tank, walls(b)) = True Then
Tank.Left = Tank.Left + 45
End If
Next b
For f = 0 To bedrocks.Count - 1
If Hit(Tank, bedrocks(f)) = True Then
Tank.Left = Tank.Left + 45
End If
Next f
For two = 0 To rivers.Count - 1
If Hit(Tank, rivers(two)) = True Then
Tank.Left = Tank.Left + 45
End If
Next two

For bb = 1 To EnemyTanks.Count - 1
If Hit(Tank, EnemyTanks(bb)) = True Then
Tank.Left = Tank.Left + 45
End If
Next bb
ElseIf Direaction = 3 Then
Tank.Top = Tank.Top - 45
If TankHP < 3 Then
Tank.Picture = LoadPicture(App.Path + "\pictures\TankUpOut.bmp")
Else
Tank.Picture = LoadPicture(App.Path + "\pictures\TankUp.bmp")
End If
If Tank.Top <= 0 Then Tank.Top = Tank.Top + 45
For c = 0 To walls.Count - 1
If Hit(Tank, walls(c)) = True Then
Tank.Top = Tank.Top + 45
End If
Next c
For g = 0 To bedrocks.Count - 1
If Hit(Tank, bedrocks(g)) = True Then
Tank.Top = Tank.Top + 45
End If
Next g
For three = 0 To rivers.Count - 1
If Hit(Tank, rivers(three)) = True Then
Tank.Top = Tank.Top + 45
End If
Next three
For cc = 1 To EnemyTanks.Count - 1
If Hit(Tank, EnemyTanks(cc)) = True Then
Tank.Top = Tank.Top + 45
End If
Next cc
ElseIf Direaction = 4 Then
If TankHP < 3 Then
Tank.Picture = LoadPicture(App.Path + "\pictures\TankDownOut.bmp")
Else
Tank.Picture = LoadPicture(App.Path + "\pictures\TankDown.bmp")
End If
Tank.Top = Tank.Top + 45
If Tank.Top + 500 >= 10000 Then Tank.Top = Tank.Top - 45
For d = 0 To walls.Count - 1
If Hit(Tank, walls(d)) = True Then
Tank.Top = Tank.Top - 45
End If
Next d
For H = 0 To bedrocks.Count - 1
If Hit(Tank, bedrocks(H)) = True Then
Tank.Top = Tank.Top - 45
End If
Next H
For four = 0 To rivers.Count - 1
If Hit(Tank, rivers(four)) = True Then
Tank.Top = Tank.Top - 45
End If
Next four
For dd = 1 To EnemyTanks.Count - 1
If Hit(Tank, EnemyTanks(dd)) = True Then
Tank.Top = Tank.Top - 45
End If
Next dd
End If











End Sub

Private Sub WallsHit_Timer()
For a = 0 To walls.Count - 1
For b = 1 To EnemyTanks.Count - 1
If Hit(EnemyShots(b), walls(a)) = True Then
If WallsHP(a) = 2 Then
walls(a).Picture = LoadPicture(App.Path + "\pictures\Wall2.bmp")
WallsHP(a) = 1
EnemyShots(b).Left = -1000
ElseIf WallsHP(a) = 1 Then
walls(a).Left = -2000
walls(a).Visible = False
EnemyShots(b).Left = -1000
End If
End If
Next b
If Hit(Bullet, walls(a)) = True Then
If WallsHP(a) = 2 Then
walls(a).Picture = LoadPicture(App.Path + "\pictures\Wall2.bmp")
WallsHP(a) = 1
Bullet.Left = -500
ElseIf WallsHP(a) = 1 Then
walls(a).Left = -2000
walls(a).Visible = False
Bullet.Left = -500
End If
End If
Next a
End Sub
Function Enemytank(X As Integer, y As Integer, TanksIndex As Integer)
Load EnemyTanks(TanksIndex)
Load EnemyShots(TanksIndex)
EnemyTanks(TanksIndex).Left = X
EnemyTanks(TanksIndex).Top = y
EnemyTanks(TanksIndex).Picture = LoadPicture(App.Path + "\pictures\EnemyUp.bmp")
EnemyTanks(TanksIndex).Visible = True
EnemyShots(TanksIndex).Left = -1000
EnemyShots(TanksIndex).Top = -1000
EnemyShots(TanksIndex).Picture = LoadPicture(App.Path + "\pictures\EnemyShot.bmp")
EnemyShots(TanksIndex).Visible = True
End Function
Function Wall(X As Integer, y As Integer, WallIndex As Integer)
Load walls(WallIndex)
walls(WallIndex).Picture = LoadPicture(App.Path + "\pictures\Wall1.bmp")
walls(WallIndex).Visible = True
walls(WallIndex).Left = X
walls(WallIndex).Top = y
End Function
Function Bedrock(X As Integer, y As Integer, BedrockIndex As Integer)
Load bedrocks(BedrockIndex)
bedrocks(BedrockIndex).Picture = LoadPicture(App.Path + "\pictures\Bedrock1.bmp")
bedrocks(BedrockIndex).Visible = True
bedrocks(BedrockIndex).Enabled = True
bedrocks(BedrockIndex).Left = X
bedrocks(BedrockIndex).Top = y
End Function
Function river(X As Integer, y As Integer, RiverIndex As Integer)
Load rivers(RiverIndex)
rivers(RiverIndex).Picture = LoadPicture(App.Path + "\pictures\River1.bmp")
rivers(RiverIndex).Visible = True
rivers(RiverIndex).Enabled = True
rivers(RiverIndex).Left = X
rivers(RiverIndex).Top = y
End Function

