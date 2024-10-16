VERSION 5.00
Begin VB.Form Form7 
   BackColor       =   &H00C0C0FF&
   Caption         =   "编辑地图"
   ClientHeight    =   9630
   ClientLeft      =   4770
   ClientTop       =   2085
   ClientWidth     =   13305
   LinkTopic       =   "Form7"
   ScaleHeight     =   9630
   ScaleWidth      =   13305
   StartUpPosition =   2  '屏幕中心
   Begin VB.PictureBox P6 
      Height          =   495
      Left            =   9960
      ScaleHeight     =   435
      ScaleWidth      =   75
      TabIndex        =   9
      Top             =   6960
      Width           =   135
   End
   Begin VB.PictureBox P5 
      Height          =   495
      Left            =   9960
      ScaleHeight     =   435
      ScaleWidth      =   75
      TabIndex        =   8
      Top             =   6480
      Width           =   135
   End
   Begin VB.PictureBox P4 
      Height          =   495
      Left            =   9960
      ScaleHeight     =   435
      ScaleWidth      =   75
      TabIndex        =   7
      Top             =   6000
      Width           =   135
   End
   Begin VB.PictureBox P3 
      Height          =   495
      Left            =   9960
      ScaleHeight     =   435
      ScaleWidth      =   75
      TabIndex        =   6
      Top             =   5520
      Width           =   135
   End
   Begin VB.PictureBox P2 
      Height          =   495
      Left            =   9960
      ScaleHeight     =   435
      ScaleWidth      =   75
      TabIndex        =   5
      Top             =   5040
      Width           =   135
   End
   Begin VB.PictureBox P1 
      Height          =   495
      Left            =   9960
      ScaleHeight     =   435
      ScaleWidth      =   75
      TabIndex        =   4
      Top             =   4560
      Width           =   135
   End
   Begin VB.CommandButton Command4 
      Caption         =   "删除地图"
      Height          =   495
      Left            =   9960
      TabIndex        =   3
      Top             =   9000
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "取消"
      Height          =   495
      Left            =   9960
      TabIndex        =   2
      Top             =   8520
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "清除"
      Height          =   495
      Left            =   9960
      TabIndex        =   1
      Top             =   8040
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   495
      Left            =   9960
      Picture         =   "Form7.frx":0000
      TabIndex        =   0
      Top             =   7560
      Width           =   1215
   End
   Begin VB.Image Image2 
      Height          =   4470
      Left            =   9840
      Picture         =   "Form7.frx":FD77
      Top             =   0
      Width           =   3330
   End
   Begin VB.Label Label6 
      BackColor       =   &H00C0C0FF&
      Caption         =   "己方坦克（仅一个）"
      Height          =   255
      Left            =   10560
      TabIndex        =   15
      Top             =   7080
      Width           =   2775
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C0C0FF&
      Caption         =   "空白"
      Height          =   255
      Left            =   10560
      TabIndex        =   14
      Top             =   4680
      Width           =   2655
   End
   Begin VB.Label Label4 
      BackColor       =   &H00C0C0FF&
      Caption         =   "子弹能过去，坦克不能过去的河"
      Height          =   255
      Left            =   10560
      TabIndex        =   13
      Top             =   5160
      Width           =   2775
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0C0FF&
      Caption         =   "敌人坦克"
      Height          =   255
      Left            =   10560
      TabIndex        =   12
      Top             =   6600
      Width           =   2175
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "打两下就没的墙"
      Height          =   495
      Left            =   10560
      TabIndex        =   11
      Top             =   6120
      Width           =   2175
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "打不透的墙"
      Height          =   495
      Left            =   10560
      TabIndex        =   10
      Top             =   5640
      Width           =   1935
   End
   Begin VB.Image Clear 
      Height          =   465
      Left            =   10080
      Picture         =   "Form7.frx":1814C
      Top             =   4560
      Width           =   465
   End
   Begin VB.Image walls 
      Height          =   450
      Left            =   10080
      Picture         =   "Form7.frx":18D2E
      Top             =   6000
      Width           =   450
   End
   Begin VB.Image tank 
      Height          =   450
      Left            =   10080
      Picture         =   "Form7.frx":1983A
      Top             =   6960
      Width           =   450
   End
   Begin VB.Image river 
      Height          =   450
      Left            =   10080
      Picture         =   "Form7.frx":1A346
      Top             =   5040
      Width           =   450
   End
   Begin VB.Image enemy 
      Height          =   450
      Left            =   10080
      Picture         =   "Form7.frx":1AE52
      Top             =   6480
      Width           =   450
   End
   Begin VB.Image bedrocks 
      Height          =   450
      Left            =   10080
      Picture         =   "Form7.frx":1B0B4
      Top             =   5520
      Width           =   450
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   400
      Left            =   9120
      Picture         =   "Form7.frx":1BBC0
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   399
      Left            =   8640
      Picture         =   "Form7.frx":1C7A2
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   398
      Left            =   8160
      Picture         =   "Form7.frx":1D384
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   397
      Left            =   7680
      Picture         =   "Form7.frx":1DF66
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   396
      Left            =   7200
      Picture         =   "Form7.frx":1EB48
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   395
      Left            =   6720
      Picture         =   "Form7.frx":1F72A
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   394
      Left            =   6240
      Picture         =   "Form7.frx":2030C
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   393
      Left            =   5760
      Picture         =   "Form7.frx":20EEE
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   392
      Left            =   5280
      Picture         =   "Form7.frx":21AD0
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   391
      Left            =   4800
      Picture         =   "Form7.frx":226B2
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   390
      Left            =   4320
      Picture         =   "Form7.frx":23294
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   389
      Left            =   3840
      Picture         =   "Form7.frx":23E76
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   388
      Left            =   3360
      Picture         =   "Form7.frx":24A58
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   387
      Left            =   2880
      Picture         =   "Form7.frx":2563A
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   386
      Left            =   2400
      Picture         =   "Form7.frx":2621C
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   385
      Left            =   1920
      Picture         =   "Form7.frx":26DFE
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   384
      Left            =   1440
      Picture         =   "Form7.frx":279E0
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   383
      Left            =   960
      Picture         =   "Form7.frx":285C2
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   382
      Left            =   480
      Picture         =   "Form7.frx":291A4
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   381
      Left            =   0
      Picture         =   "Form7.frx":29D86
      Top             =   9120
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   380
      Left            =   9120
      Picture         =   "Form7.frx":2A968
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   379
      Left            =   8640
      Picture         =   "Form7.frx":2B54A
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   378
      Left            =   8160
      Picture         =   "Form7.frx":2C12C
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   377
      Left            =   7680
      Picture         =   "Form7.frx":2CD0E
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   376
      Left            =   7200
      Picture         =   "Form7.frx":2D8F0
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   375
      Left            =   6720
      Picture         =   "Form7.frx":2E4D2
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   374
      Left            =   6240
      Picture         =   "Form7.frx":2F0B4
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   373
      Left            =   5760
      Picture         =   "Form7.frx":2FC96
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   372
      Left            =   5280
      Picture         =   "Form7.frx":30878
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   371
      Left            =   4800
      Picture         =   "Form7.frx":3145A
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   370
      Left            =   4320
      Picture         =   "Form7.frx":3203C
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   369
      Left            =   3840
      Picture         =   "Form7.frx":32C1E
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   368
      Left            =   3360
      Picture         =   "Form7.frx":33800
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   367
      Left            =   2880
      Picture         =   "Form7.frx":343E2
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   366
      Left            =   2400
      Picture         =   "Form7.frx":34FC4
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   365
      Left            =   1920
      Picture         =   "Form7.frx":35BA6
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   364
      Left            =   1440
      Picture         =   "Form7.frx":36788
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   363
      Left            =   960
      Picture         =   "Form7.frx":3736A
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   362
      Left            =   480
      Picture         =   "Form7.frx":37F4C
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   361
      Left            =   0
      Picture         =   "Form7.frx":38B2E
      Top             =   8640
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   360
      Left            =   9120
      Picture         =   "Form7.frx":39710
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   359
      Left            =   8640
      Picture         =   "Form7.frx":3A2F2
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   358
      Left            =   8160
      Picture         =   "Form7.frx":3AED4
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   357
      Left            =   7680
      Picture         =   "Form7.frx":3BAB6
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   356
      Left            =   7200
      Picture         =   "Form7.frx":3C698
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   355
      Left            =   6720
      Picture         =   "Form7.frx":3D27A
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   354
      Left            =   6240
      Picture         =   "Form7.frx":3DE5C
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   353
      Left            =   5760
      Picture         =   "Form7.frx":3EA3E
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   352
      Left            =   5280
      Picture         =   "Form7.frx":3F620
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   351
      Left            =   4800
      Picture         =   "Form7.frx":40202
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   350
      Left            =   4320
      Picture         =   "Form7.frx":40DE4
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   349
      Left            =   3840
      Picture         =   "Form7.frx":419C6
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   348
      Left            =   3360
      Picture         =   "Form7.frx":425A8
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   347
      Left            =   2880
      Picture         =   "Form7.frx":4318A
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   346
      Left            =   2400
      Picture         =   "Form7.frx":43D6C
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   345
      Left            =   1920
      Picture         =   "Form7.frx":4494E
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   344
      Left            =   1440
      Picture         =   "Form7.frx":45530
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   343
      Left            =   960
      Picture         =   "Form7.frx":46112
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   342
      Left            =   480
      Picture         =   "Form7.frx":46CF4
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   341
      Left            =   0
      Picture         =   "Form7.frx":478D6
      Top             =   8160
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   340
      Left            =   9120
      Picture         =   "Form7.frx":484B8
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   339
      Left            =   8640
      Picture         =   "Form7.frx":4909A
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   338
      Left            =   8160
      Picture         =   "Form7.frx":49C7C
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   337
      Left            =   7680
      Picture         =   "Form7.frx":4A85E
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   336
      Left            =   7200
      Picture         =   "Form7.frx":4B440
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   335
      Left            =   6720
      Picture         =   "Form7.frx":4C022
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   334
      Left            =   6240
      Picture         =   "Form7.frx":4CC04
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   333
      Left            =   5760
      Picture         =   "Form7.frx":4D7E6
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   332
      Left            =   5280
      Picture         =   "Form7.frx":4E3C8
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   331
      Left            =   4800
      Picture         =   "Form7.frx":4EFAA
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   330
      Left            =   4320
      Picture         =   "Form7.frx":4FB8C
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   329
      Left            =   3840
      Picture         =   "Form7.frx":5076E
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   328
      Left            =   3360
      Picture         =   "Form7.frx":51350
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   327
      Left            =   2880
      Picture         =   "Form7.frx":51F32
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   326
      Left            =   2400
      Picture         =   "Form7.frx":52B14
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   325
      Left            =   1920
      Picture         =   "Form7.frx":536F6
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   324
      Left            =   1440
      Picture         =   "Form7.frx":542D8
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   323
      Left            =   960
      Picture         =   "Form7.frx":54EBA
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   322
      Left            =   480
      Picture         =   "Form7.frx":55A9C
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   321
      Left            =   0
      Picture         =   "Form7.frx":5667E
      Top             =   7680
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   320
      Left            =   9120
      Picture         =   "Form7.frx":57260
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   319
      Left            =   8640
      Picture         =   "Form7.frx":57E42
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   318
      Left            =   8160
      Picture         =   "Form7.frx":58A24
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   317
      Left            =   7680
      Picture         =   "Form7.frx":59606
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   316
      Left            =   7200
      Picture         =   "Form7.frx":5A1E8
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   315
      Left            =   6720
      Picture         =   "Form7.frx":5ADCA
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   314
      Left            =   6240
      Picture         =   "Form7.frx":5B9AC
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   313
      Left            =   5760
      Picture         =   "Form7.frx":5C58E
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   312
      Left            =   5280
      Picture         =   "Form7.frx":5D170
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   311
      Left            =   4800
      Picture         =   "Form7.frx":5DD52
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   310
      Left            =   4320
      Picture         =   "Form7.frx":5E934
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   309
      Left            =   3840
      Picture         =   "Form7.frx":5F516
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   308
      Left            =   3360
      Picture         =   "Form7.frx":600F8
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   307
      Left            =   2880
      Picture         =   "Form7.frx":60CDA
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   306
      Left            =   2400
      Picture         =   "Form7.frx":618BC
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   305
      Left            =   1920
      Picture         =   "Form7.frx":6249E
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   304
      Left            =   1440
      Picture         =   "Form7.frx":63080
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   303
      Left            =   960
      Picture         =   "Form7.frx":63C62
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   302
      Left            =   480
      Picture         =   "Form7.frx":64844
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   301
      Left            =   0
      Picture         =   "Form7.frx":65426
      Top             =   7200
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   300
      Left            =   9120
      Picture         =   "Form7.frx":66008
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   299
      Left            =   8640
      Picture         =   "Form7.frx":66BEA
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   298
      Left            =   8160
      Picture         =   "Form7.frx":677CC
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   297
      Left            =   7680
      Picture         =   "Form7.frx":683AE
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   296
      Left            =   7200
      Picture         =   "Form7.frx":68F90
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   295
      Left            =   6720
      Picture         =   "Form7.frx":69B72
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   294
      Left            =   6240
      Picture         =   "Form7.frx":6A754
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   293
      Left            =   5760
      Picture         =   "Form7.frx":6B336
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   292
      Left            =   5280
      Picture         =   "Form7.frx":6BF18
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   291
      Left            =   4800
      Picture         =   "Form7.frx":6CAFA
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   290
      Left            =   4320
      Picture         =   "Form7.frx":6D6DC
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   289
      Left            =   3840
      Picture         =   "Form7.frx":6E2BE
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   288
      Left            =   3360
      Picture         =   "Form7.frx":6EEA0
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   287
      Left            =   2880
      Picture         =   "Form7.frx":6FA82
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   286
      Left            =   2400
      Picture         =   "Form7.frx":70664
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   285
      Left            =   1920
      Picture         =   "Form7.frx":71246
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   284
      Left            =   1440
      Picture         =   "Form7.frx":71E28
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   283
      Left            =   960
      Picture         =   "Form7.frx":72A0A
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   282
      Left            =   480
      Picture         =   "Form7.frx":735EC
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   281
      Left            =   0
      Picture         =   "Form7.frx":741CE
      Top             =   6720
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   280
      Left            =   9120
      Picture         =   "Form7.frx":74DB0
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   279
      Left            =   8640
      Picture         =   "Form7.frx":75992
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   278
      Left            =   8160
      Picture         =   "Form7.frx":76574
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   277
      Left            =   7680
      Picture         =   "Form7.frx":77156
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   276
      Left            =   7200
      Picture         =   "Form7.frx":77D38
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   275
      Left            =   6720
      Picture         =   "Form7.frx":7891A
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   274
      Left            =   6240
      Picture         =   "Form7.frx":794FC
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   273
      Left            =   5760
      Picture         =   "Form7.frx":7A0DE
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   272
      Left            =   5280
      Picture         =   "Form7.frx":7ACC0
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   271
      Left            =   4800
      Picture         =   "Form7.frx":7B8A2
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   270
      Left            =   4320
      Picture         =   "Form7.frx":7C484
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   269
      Left            =   3840
      Picture         =   "Form7.frx":7D066
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   268
      Left            =   3360
      Picture         =   "Form7.frx":7DC48
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   267
      Left            =   2880
      Picture         =   "Form7.frx":7E82A
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   266
      Left            =   2400
      Picture         =   "Form7.frx":7F40C
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   265
      Left            =   1920
      Picture         =   "Form7.frx":7FFEE
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   264
      Left            =   1440
      Picture         =   "Form7.frx":80BD0
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   263
      Left            =   960
      Picture         =   "Form7.frx":817B2
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   262
      Left            =   480
      Picture         =   "Form7.frx":82394
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   261
      Left            =   0
      Picture         =   "Form7.frx":82F76
      Top             =   6240
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   260
      Left            =   9120
      Picture         =   "Form7.frx":83B58
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   259
      Left            =   8640
      Picture         =   "Form7.frx":8473A
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   258
      Left            =   8160
      Picture         =   "Form7.frx":8531C
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   257
      Left            =   7680
      Picture         =   "Form7.frx":85EFE
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   256
      Left            =   7200
      Picture         =   "Form7.frx":86AE0
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   255
      Left            =   6720
      Picture         =   "Form7.frx":876C2
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   254
      Left            =   6240
      Picture         =   "Form7.frx":882A4
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   253
      Left            =   5760
      Picture         =   "Form7.frx":88E86
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   252
      Left            =   5280
      Picture         =   "Form7.frx":89A68
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   251
      Left            =   4800
      Picture         =   "Form7.frx":8A64A
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   250
      Left            =   4320
      Picture         =   "Form7.frx":8B22C
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   249
      Left            =   3840
      Picture         =   "Form7.frx":8BE0E
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   248
      Left            =   3360
      Picture         =   "Form7.frx":8C9F0
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   247
      Left            =   2880
      Picture         =   "Form7.frx":8D5D2
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   246
      Left            =   2400
      Picture         =   "Form7.frx":8E1B4
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   245
      Left            =   1920
      Picture         =   "Form7.frx":8ED96
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   244
      Left            =   1440
      Picture         =   "Form7.frx":8F978
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   243
      Left            =   960
      Picture         =   "Form7.frx":9055A
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   242
      Left            =   480
      Picture         =   "Form7.frx":9113C
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   241
      Left            =   0
      Picture         =   "Form7.frx":91D1E
      Top             =   5760
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   240
      Left            =   9120
      Picture         =   "Form7.frx":92900
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   239
      Left            =   8640
      Picture         =   "Form7.frx":934E2
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   238
      Left            =   8160
      Picture         =   "Form7.frx":940C4
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   237
      Left            =   7680
      Picture         =   "Form7.frx":94CA6
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   236
      Left            =   7200
      Picture         =   "Form7.frx":95888
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   235
      Left            =   6720
      Picture         =   "Form7.frx":9646A
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   234
      Left            =   6240
      Picture         =   "Form7.frx":9704C
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   233
      Left            =   5760
      Picture         =   "Form7.frx":97C2E
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   232
      Left            =   5280
      Picture         =   "Form7.frx":98810
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   231
      Left            =   4800
      Picture         =   "Form7.frx":993F2
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   230
      Left            =   4320
      Picture         =   "Form7.frx":99FD4
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   229
      Left            =   3840
      Picture         =   "Form7.frx":9ABB6
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   228
      Left            =   3360
      Picture         =   "Form7.frx":9B798
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   227
      Left            =   2880
      Picture         =   "Form7.frx":9C37A
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   226
      Left            =   2400
      Picture         =   "Form7.frx":9CF5C
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   225
      Left            =   1920
      Picture         =   "Form7.frx":9DB3E
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   224
      Left            =   1440
      Picture         =   "Form7.frx":9E720
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   223
      Left            =   960
      Picture         =   "Form7.frx":9F302
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   222
      Left            =   480
      Picture         =   "Form7.frx":9FEE4
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   221
      Left            =   0
      Picture         =   "Form7.frx":A0AC6
      Top             =   5280
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   220
      Left            =   9120
      Picture         =   "Form7.frx":A16A8
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   219
      Left            =   8640
      Picture         =   "Form7.frx":A228A
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   218
      Left            =   8160
      Picture         =   "Form7.frx":A2E6C
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   217
      Left            =   7680
      Picture         =   "Form7.frx":A3A4E
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   216
      Left            =   7200
      Picture         =   "Form7.frx":A4630
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   215
      Left            =   6720
      Picture         =   "Form7.frx":A5212
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   214
      Left            =   6240
      Picture         =   "Form7.frx":A5DF4
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   213
      Left            =   5760
      Picture         =   "Form7.frx":A69D6
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   212
      Left            =   5280
      Picture         =   "Form7.frx":A75B8
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   211
      Left            =   4800
      Picture         =   "Form7.frx":A819A
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   210
      Left            =   4320
      Picture         =   "Form7.frx":A8D7C
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   209
      Left            =   3840
      Picture         =   "Form7.frx":A995E
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   208
      Left            =   3360
      Picture         =   "Form7.frx":AA540
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   207
      Left            =   2880
      Picture         =   "Form7.frx":AB122
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   206
      Left            =   2400
      Picture         =   "Form7.frx":ABD04
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   205
      Left            =   1920
      Picture         =   "Form7.frx":AC8E6
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   204
      Left            =   1440
      Picture         =   "Form7.frx":AD4C8
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   203
      Left            =   960
      Picture         =   "Form7.frx":AE0AA
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   202
      Left            =   480
      Picture         =   "Form7.frx":AEC8C
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   201
      Left            =   0
      Picture         =   "Form7.frx":AF86E
      Top             =   4800
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   200
      Left            =   9120
      Picture         =   "Form7.frx":B0450
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   199
      Left            =   8640
      Picture         =   "Form7.frx":B1032
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   198
      Left            =   8160
      Picture         =   "Form7.frx":B1C14
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   197
      Left            =   7680
      Picture         =   "Form7.frx":B27F6
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   196
      Left            =   7200
      Picture         =   "Form7.frx":B33D8
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   195
      Left            =   6720
      Picture         =   "Form7.frx":B3FBA
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   194
      Left            =   6240
      Picture         =   "Form7.frx":B4B9C
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   193
      Left            =   5760
      Picture         =   "Form7.frx":B577E
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   192
      Left            =   5280
      Picture         =   "Form7.frx":B6360
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   191
      Left            =   4800
      Picture         =   "Form7.frx":B6F42
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   190
      Left            =   4320
      Picture         =   "Form7.frx":B7B24
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   189
      Left            =   3840
      Picture         =   "Form7.frx":B8706
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   188
      Left            =   3360
      Picture         =   "Form7.frx":B92E8
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   187
      Left            =   2880
      Picture         =   "Form7.frx":B9ECA
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   186
      Left            =   2400
      Picture         =   "Form7.frx":BAAAC
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   185
      Left            =   1920
      Picture         =   "Form7.frx":BB68E
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   184
      Left            =   1440
      Picture         =   "Form7.frx":BC270
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   183
      Left            =   960
      Picture         =   "Form7.frx":BCE52
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   182
      Left            =   480
      Picture         =   "Form7.frx":BDA34
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   181
      Left            =   0
      Picture         =   "Form7.frx":BE616
      Top             =   4320
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   180
      Left            =   9120
      Picture         =   "Form7.frx":BF1F8
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   179
      Left            =   8640
      Picture         =   "Form7.frx":BFDDA
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   178
      Left            =   8160
      Picture         =   "Form7.frx":C09BC
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   177
      Left            =   7680
      Picture         =   "Form7.frx":C159E
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   176
      Left            =   7200
      Picture         =   "Form7.frx":C2180
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   175
      Left            =   6720
      Picture         =   "Form7.frx":C2D62
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   174
      Left            =   6240
      Picture         =   "Form7.frx":C3944
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   173
      Left            =   5760
      Picture         =   "Form7.frx":C4526
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   172
      Left            =   5280
      Picture         =   "Form7.frx":C5108
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   171
      Left            =   4800
      Picture         =   "Form7.frx":C5CEA
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   170
      Left            =   4320
      Picture         =   "Form7.frx":C68CC
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   169
      Left            =   3840
      Picture         =   "Form7.frx":C74AE
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   168
      Left            =   3360
      Picture         =   "Form7.frx":C8090
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   167
      Left            =   2880
      Picture         =   "Form7.frx":C8C72
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   166
      Left            =   2400
      Picture         =   "Form7.frx":C9854
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   165
      Left            =   1920
      Picture         =   "Form7.frx":CA436
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   164
      Left            =   1440
      Picture         =   "Form7.frx":CB018
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   163
      Left            =   960
      Picture         =   "Form7.frx":CBBFA
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   162
      Left            =   480
      Picture         =   "Form7.frx":CC7DC
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   161
      Left            =   0
      Picture         =   "Form7.frx":CD3BE
      Top             =   3840
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   160
      Left            =   9120
      Picture         =   "Form7.frx":CDFA0
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   159
      Left            =   8640
      Picture         =   "Form7.frx":CEB82
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   158
      Left            =   8160
      Picture         =   "Form7.frx":CF764
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   157
      Left            =   7680
      Picture         =   "Form7.frx":D0346
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   156
      Left            =   7200
      Picture         =   "Form7.frx":D0F28
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   155
      Left            =   6720
      Picture         =   "Form7.frx":D1B0A
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   154
      Left            =   6240
      Picture         =   "Form7.frx":D26EC
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   153
      Left            =   5760
      Picture         =   "Form7.frx":D32CE
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   152
      Left            =   5280
      Picture         =   "Form7.frx":D3EB0
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   151
      Left            =   4800
      Picture         =   "Form7.frx":D4A92
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   150
      Left            =   4320
      Picture         =   "Form7.frx":D5674
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   149
      Left            =   3840
      Picture         =   "Form7.frx":D6256
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   148
      Left            =   3360
      Picture         =   "Form7.frx":D6E38
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   147
      Left            =   2880
      Picture         =   "Form7.frx":D7A1A
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   146
      Left            =   2400
      Picture         =   "Form7.frx":D85FC
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   145
      Left            =   1920
      Picture         =   "Form7.frx":D91DE
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   144
      Left            =   1440
      Picture         =   "Form7.frx":D9DC0
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   143
      Left            =   960
      Picture         =   "Form7.frx":DA9A2
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   142
      Left            =   480
      Picture         =   "Form7.frx":DB584
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   141
      Left            =   0
      Picture         =   "Form7.frx":DC166
      Top             =   3360
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   140
      Left            =   9120
      Picture         =   "Form7.frx":DCD48
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   139
      Left            =   8640
      Picture         =   "Form7.frx":DD92A
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   138
      Left            =   8160
      Picture         =   "Form7.frx":DE50C
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   137
      Left            =   7680
      Picture         =   "Form7.frx":DF0EE
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   136
      Left            =   7200
      Picture         =   "Form7.frx":DFCD0
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   135
      Left            =   6720
      Picture         =   "Form7.frx":E08B2
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   134
      Left            =   6240
      Picture         =   "Form7.frx":E1494
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   133
      Left            =   5760
      Picture         =   "Form7.frx":E2076
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   132
      Left            =   5280
      Picture         =   "Form7.frx":E2C58
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   131
      Left            =   4800
      Picture         =   "Form7.frx":E383A
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   130
      Left            =   4320
      Picture         =   "Form7.frx":E441C
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   129
      Left            =   3840
      Picture         =   "Form7.frx":E4FFE
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   128
      Left            =   3360
      Picture         =   "Form7.frx":E5BE0
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   127
      Left            =   2880
      Picture         =   "Form7.frx":E67C2
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   126
      Left            =   2400
      Picture         =   "Form7.frx":E73A4
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   125
      Left            =   1920
      Picture         =   "Form7.frx":E7F86
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   124
      Left            =   1440
      Picture         =   "Form7.frx":E8B68
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   123
      Left            =   960
      Picture         =   "Form7.frx":E974A
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   122
      Left            =   480
      Picture         =   "Form7.frx":EA32C
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   121
      Left            =   0
      Picture         =   "Form7.frx":EAF0E
      Top             =   2880
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   120
      Left            =   9120
      Picture         =   "Form7.frx":EBAF0
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   119
      Left            =   8640
      Picture         =   "Form7.frx":EC6D2
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   118
      Left            =   8160
      Picture         =   "Form7.frx":ED2B4
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   117
      Left            =   7680
      Picture         =   "Form7.frx":EDE96
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   116
      Left            =   7200
      Picture         =   "Form7.frx":EEA78
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   115
      Left            =   6720
      Picture         =   "Form7.frx":EF65A
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   114
      Left            =   6240
      Picture         =   "Form7.frx":F023C
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   113
      Left            =   5760
      Picture         =   "Form7.frx":F0E1E
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   112
      Left            =   5280
      Picture         =   "Form7.frx":F1A00
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   111
      Left            =   4800
      Picture         =   "Form7.frx":F25E2
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   110
      Left            =   4320
      Picture         =   "Form7.frx":F31C4
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   109
      Left            =   3840
      Picture         =   "Form7.frx":F3DA6
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   108
      Left            =   3360
      Picture         =   "Form7.frx":F4988
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   107
      Left            =   2880
      Picture         =   "Form7.frx":F556A
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   106
      Left            =   2400
      Picture         =   "Form7.frx":F614C
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   105
      Left            =   1920
      Picture         =   "Form7.frx":F6D2E
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   104
      Left            =   1440
      Picture         =   "Form7.frx":F7910
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   103
      Left            =   960
      Picture         =   "Form7.frx":F84F2
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   102
      Left            =   480
      Picture         =   "Form7.frx":F90D4
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   101
      Left            =   0
      Picture         =   "Form7.frx":F9CB6
      Top             =   2400
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   100
      Left            =   9120
      Picture         =   "Form7.frx":FA898
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   99
      Left            =   8640
      Picture         =   "Form7.frx":FB47A
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   98
      Left            =   8160
      Picture         =   "Form7.frx":FC05C
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   97
      Left            =   7680
      Picture         =   "Form7.frx":FCC3E
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   96
      Left            =   7200
      Picture         =   "Form7.frx":FD820
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   95
      Left            =   6720
      Picture         =   "Form7.frx":FE402
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   94
      Left            =   6240
      Picture         =   "Form7.frx":FEFE4
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   93
      Left            =   5760
      Picture         =   "Form7.frx":FFBC6
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   92
      Left            =   5280
      Picture         =   "Form7.frx":1007A8
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   91
      Left            =   4800
      Picture         =   "Form7.frx":10138A
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   90
      Left            =   4320
      Picture         =   "Form7.frx":101F6C
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   89
      Left            =   3840
      Picture         =   "Form7.frx":102B4E
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   88
      Left            =   3360
      Picture         =   "Form7.frx":103730
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   87
      Left            =   2880
      Picture         =   "Form7.frx":104312
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   86
      Left            =   2400
      Picture         =   "Form7.frx":104EF4
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   85
      Left            =   1920
      Picture         =   "Form7.frx":105AD6
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   84
      Left            =   1440
      Picture         =   "Form7.frx":1066B8
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   83
      Left            =   960
      Picture         =   "Form7.frx":10729A
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   82
      Left            =   480
      Picture         =   "Form7.frx":107E7C
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   81
      Left            =   0
      Picture         =   "Form7.frx":108A5E
      Top             =   1920
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   80
      Left            =   9120
      Picture         =   "Form7.frx":109640
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   79
      Left            =   8640
      Picture         =   "Form7.frx":10A222
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   78
      Left            =   8160
      Picture         =   "Form7.frx":10AE04
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   77
      Left            =   7680
      Picture         =   "Form7.frx":10B9E6
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   76
      Left            =   7200
      Picture         =   "Form7.frx":10C5C8
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   75
      Left            =   6720
      Picture         =   "Form7.frx":10D1AA
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   74
      Left            =   6240
      Picture         =   "Form7.frx":10DD8C
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   73
      Left            =   5760
      Picture         =   "Form7.frx":10E96E
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   72
      Left            =   5280
      Picture         =   "Form7.frx":10F550
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   71
      Left            =   4800
      Picture         =   "Form7.frx":110132
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   70
      Left            =   4320
      Picture         =   "Form7.frx":110D14
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   69
      Left            =   3840
      Picture         =   "Form7.frx":1118F6
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   68
      Left            =   3360
      Picture         =   "Form7.frx":1124D8
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   67
      Left            =   2880
      Picture         =   "Form7.frx":1130BA
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   66
      Left            =   2400
      Picture         =   "Form7.frx":113C9C
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   65
      Left            =   1920
      Picture         =   "Form7.frx":11487E
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   64
      Left            =   1440
      Picture         =   "Form7.frx":115460
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   63
      Left            =   960
      Picture         =   "Form7.frx":116042
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   62
      Left            =   480
      Picture         =   "Form7.frx":116C24
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   61
      Left            =   0
      Picture         =   "Form7.frx":117806
      Top             =   1440
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   60
      Left            =   9120
      Picture         =   "Form7.frx":1183E8
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   59
      Left            =   8640
      Picture         =   "Form7.frx":118FCA
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   58
      Left            =   8160
      Picture         =   "Form7.frx":119BAC
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   57
      Left            =   7680
      Picture         =   "Form7.frx":11A78E
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   56
      Left            =   7200
      Picture         =   "Form7.frx":11B370
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   55
      Left            =   6720
      Picture         =   "Form7.frx":11BF52
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   54
      Left            =   6240
      Picture         =   "Form7.frx":11CB34
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   53
      Left            =   5760
      Picture         =   "Form7.frx":11D716
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   52
      Left            =   5280
      Picture         =   "Form7.frx":11E2F8
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   51
      Left            =   4800
      Picture         =   "Form7.frx":11EEDA
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   50
      Left            =   4320
      Picture         =   "Form7.frx":11FABC
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   49
      Left            =   3840
      Picture         =   "Form7.frx":12069E
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   48
      Left            =   3360
      Picture         =   "Form7.frx":121280
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   47
      Left            =   2880
      Picture         =   "Form7.frx":121E62
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   46
      Left            =   2400
      Picture         =   "Form7.frx":122A44
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   45
      Left            =   1920
      Picture         =   "Form7.frx":123626
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   44
      Left            =   1440
      Picture         =   "Form7.frx":124208
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   43
      Left            =   960
      Picture         =   "Form7.frx":124DEA
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   42
      Left            =   480
      Picture         =   "Form7.frx":1259CC
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   41
      Left            =   0
      Picture         =   "Form7.frx":1265AE
      Top             =   960
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   40
      Left            =   9120
      Picture         =   "Form7.frx":127190
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   39
      Left            =   8640
      Picture         =   "Form7.frx":127D72
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   38
      Left            =   8160
      Picture         =   "Form7.frx":128954
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   37
      Left            =   7680
      Picture         =   "Form7.frx":129536
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   36
      Left            =   7200
      Picture         =   "Form7.frx":12A118
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   35
      Left            =   6720
      Picture         =   "Form7.frx":12ACFA
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   34
      Left            =   6240
      Picture         =   "Form7.frx":12B8DC
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   33
      Left            =   5760
      Picture         =   "Form7.frx":12C4BE
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   32
      Left            =   5280
      Picture         =   "Form7.frx":12D0A0
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   31
      Left            =   4800
      Picture         =   "Form7.frx":12DC82
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   30
      Left            =   4320
      Picture         =   "Form7.frx":12E864
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   29
      Left            =   3840
      Picture         =   "Form7.frx":12F446
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   28
      Left            =   3360
      Picture         =   "Form7.frx":130028
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   27
      Left            =   2880
      Picture         =   "Form7.frx":130C0A
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   26
      Left            =   2400
      Picture         =   "Form7.frx":1317EC
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   25
      Left            =   1920
      Picture         =   "Form7.frx":1323CE
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   24
      Left            =   1440
      Picture         =   "Form7.frx":132FB0
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   23
      Left            =   960
      Picture         =   "Form7.frx":133B92
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   22
      Left            =   480
      Picture         =   "Form7.frx":134774
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   21
      Left            =   0
      Picture         =   "Form7.frx":135356
      Top             =   480
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   20
      Left            =   9120
      Picture         =   "Form7.frx":135F38
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   19
      Left            =   8640
      Picture         =   "Form7.frx":136B1A
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   18
      Left            =   8160
      Picture         =   "Form7.frx":1376FC
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   17
      Left            =   7680
      Picture         =   "Form7.frx":1382DE
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   16
      Left            =   7200
      Picture         =   "Form7.frx":138EC0
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   15
      Left            =   6720
      Picture         =   "Form7.frx":139AA2
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   14
      Left            =   6240
      Picture         =   "Form7.frx":13A684
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   13
      Left            =   5760
      Picture         =   "Form7.frx":13B266
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   12
      Left            =   5280
      Picture         =   "Form7.frx":13BE48
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   11
      Left            =   4800
      Picture         =   "Form7.frx":13CA2A
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   10
      Left            =   4320
      Picture         =   "Form7.frx":13D60C
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   9
      Left            =   3840
      Picture         =   "Form7.frx":13E1EE
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   8
      Left            =   3360
      Picture         =   "Form7.frx":13EDD0
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   7
      Left            =   2880
      Picture         =   "Form7.frx":13F9B2
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   6
      Left            =   2400
      Picture         =   "Form7.frx":140594
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   5
      Left            =   1920
      Picture         =   "Form7.frx":141176
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   4
      Left            =   1440
      Picture         =   "Form7.frx":141D58
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   3
      Left            =   960
      Picture         =   "Form7.frx":14293A
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   2
      Left            =   480
      Picture         =   "Form7.frx":14351C
      Top             =   0
      Width           =   465
   End
   Begin VB.Image map 
      Height          =   465
      Index           =   1
      Left            =   0
      Picture         =   "Form7.frx":1440FE
      Top             =   0
      Width           =   465
   End
   Begin VB.Image Image1 
      Height          =   10950
      Left            =   9600
      Picture         =   "Form7.frx":144CE0
      Top             =   0
      Width           =   150
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Click As Integer
Dim a As Boolean
Dim MapSave(1 To 400) As Integer
Private Sub bedrocks_Click()
P1.Picture = LoadPicture("")
P2.Picture = LoadPicture("")
P3.Picture = LoadPicture("")
P4.Picture = LoadPicture("")
P5.Picture = LoadPicture("")
P6.Picture = LoadPicture("")
P3.Picture = LoadPicture(App.Path + "\pictures\墙.bmp")
Click = 3
End Sub

Private Sub Clear_Click()
P1.Picture = LoadPicture("")
P2.Picture = LoadPicture("")
P3.Picture = LoadPicture("")
P4.Picture = LoadPicture("")
P5.Picture = LoadPicture("")
P6.Picture = LoadPicture("")
P1.Picture = LoadPicture(App.Path + "\pictures\墙.bmp")
Click = 1
End Sub

Private Sub Command1_Click()
On Error GoTo Wrong
Dim Name As String
If a = False Then
MsgBox "请把自己放在地图上，谢谢", 48, "提示"
GoTo u
End If
Name = InputBox("请输入地图名字", "^_^")
Open App.Path + "\maps\" & Name & ".map" For Append As #1
For m = 1 To 400
Write #1, MapSave(m)
Next m
Write #1, Name
Close #1
GoTo u
Wrong: MsgBox "发生未知错误，请检查地图名字", 17, "错误"
u: End Sub

Private Sub Command2_Click()
For H = 1 To 400
MapSave(H) = 1
map(H).Picture = LoadPicture(App.Path + "\pictures\1.bmp")
a = False
Next H
End Sub

Private Sub Command3_Click()
Form7.Hide
Form1.Show
End Sub

Private Sub Command4_Click()
Form7.Hide
Form8.Show
End Sub

Private Sub enemy_Click()
P1.Picture = LoadPicture("")
P2.Picture = LoadPicture("")
P3.Picture = LoadPicture("")
P4.Picture = LoadPicture("")
P5.Picture = LoadPicture("")
P6.Picture = LoadPicture("")
P5.Picture = LoadPicture(App.Path + "\pictures\墙.bmp")
Click = 5
End Sub

Private Sub Form_Load()
For b = 1 To 400
MapSave(b) = 1
Next b
End Sub

Private Sub map_Click(Index As Integer)
If Click = 6 Then
If a = False Then
MapSave(Index) = Click
a = True
ElseIf Click = 6 Then
If a = True Then
MsgBox "只能放一个自己哦", 48, "提示"
GoTo y
Else
MapSave(Index) = Click
End If
End If
End If
If Click = 1 Then
If a = True Then
If MapSave(Index) = 6 Then
MapSave(Index) = Click
a = False
End If
End If
End If
If Click = 1 Then
map(Index).Picture = LoadPicture(App.Path + "\pictures\1.bmp")
MapSave(Index) = Click
ElseIf Click = 2 Then
map(Index).Picture = LoadPicture(App.Path + "\pictures\River1.bmp")
MapSave(Index) = Click
ElseIf Click = 3 Then
map(Index).Picture = LoadPicture(App.Path + "\pictures\Bedrock1.bmp")
MapSave(Index) = Click
ElseIf Click = 4 Then
map(Index).Picture = LoadPicture(App.Path + "\pictures\Wall1.bmp")
MapSave(Index) = Click
ElseIf Click = 5 Then
map(Index).Picture = LoadPicture(App.Path + "\pictures\EnemyUp.bmp")
MapSave(Index) = Click
ElseIf Click = 6 Then
map(Index).Picture = LoadPicture(App.Path + "\pictures\TankUp.bmp")
MapSave(Index) = Click
y: End If
End Sub

Private Sub river_Click()
P1.Picture = LoadPicture("")
P2.Picture = LoadPicture("")
P3.Picture = LoadPicture("")
P4.Picture = LoadPicture("")
P5.Picture = LoadPicture("")
P6.Picture = LoadPicture("")
P2.Picture = LoadPicture(App.Path + "\pictures\墙.bmp")
Click = 2
End Sub

Private Sub tank_Click()
P1.Picture = LoadPicture("")
P2.Picture = LoadPicture("")
P3.Picture = LoadPicture("")
P4.Picture = LoadPicture("")
P5.Picture = LoadPicture("")
P6.Picture = LoadPicture("")
P6.Picture = LoadPicture(App.Path + "\pictures\墙.bmp")
Click = 6
End Sub

Private Sub walls_Click()
P1.Picture = LoadPicture("")
P2.Picture = LoadPicture("")
P3.Picture = LoadPicture("")
P4.Picture = LoadPicture("")
P5.Picture = LoadPicture("")
P6.Picture = LoadPicture("")
P4.Picture = LoadPicture(App.Path + "\pictures\墙.bmp")
Click = 4
End Sub
