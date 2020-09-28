VERSION 5.00
Begin VB.Form frmSprites 
   BorderStyle     =   0  'Kein
   Caption         =   "Form1"
   ClientHeight    =   2616
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4896
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   2616
   ScaleWidth      =   4896
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Image SlashD 
      Height          =   420
      Index           =   4
      Left            =   3960
      Picture         =   "frmSprites.frx":0000
      Top             =   1680
      Width           =   396
   End
   Begin VB.Image SlashD 
      Height          =   420
      Index           =   3
      Left            =   3480
      Picture         =   "frmSprites.frx":0247
      Top             =   1680
      Width           =   396
   End
   Begin VB.Image SlashD 
      Height          =   420
      Index           =   2
      Left            =   3000
      Picture         =   "frmSprites.frx":047A
      Top             =   1680
      Width           =   396
   End
   Begin VB.Image SlashD 
      Height          =   420
      Index           =   1
      Left            =   2520
      Picture         =   "frmSprites.frx":0693
      Top             =   1680
      Width           =   396
   End
   Begin VB.Image SlashD 
      Height          =   420
      Index           =   0
      Left            =   2040
      Picture         =   "frmSprites.frx":08D7
      Top             =   1680
      Width           =   396
   End
   Begin VB.Image SlashU 
      Height          =   420
      Index           =   4
      Left            =   4320
      Picture         =   "frmSprites.frx":0B08
      Top             =   1080
      Width           =   432
   End
   Begin VB.Image SlashU 
      Height          =   420
      Index           =   3
      Left            =   3720
      Picture         =   "frmSprites.frx":0DBA
      Top             =   1080
      Width           =   432
   End
   Begin VB.Image SlashU 
      Height          =   420
      Index           =   2
      Left            =   3120
      Picture         =   "frmSprites.frx":1070
      Top             =   1080
      Width           =   432
   End
   Begin VB.Image SlashU 
      Height          =   420
      Index           =   1
      Left            =   2520
      Picture         =   "frmSprites.frx":131C
      Top             =   1080
      Width           =   432
   End
   Begin VB.Image SlashU 
      Height          =   420
      Index           =   0
      Left            =   1920
      Picture         =   "frmSprites.frx":15C8
      Top             =   960
      Width           =   432
   End
   Begin VB.Image SlashR 
      Height          =   396
      Index           =   4
      Left            =   4320
      Picture         =   "frmSprites.frx":1847
      Top             =   600
      Width           =   408
   End
   Begin VB.Image SlashR 
      Height          =   396
      Index           =   3
      Left            =   3720
      Picture         =   "frmSprites.frx":1AD1
      Top             =   600
      Width           =   408
   End
   Begin VB.Image SlashR 
      Height          =   396
      Index           =   2
      Left            =   3120
      Picture         =   "frmSprites.frx":1D6D
      Top             =   600
      Width           =   408
   End
   Begin VB.Image SlashR 
      Height          =   396
      Index           =   1
      Left            =   2520
      Picture         =   "frmSprites.frx":1FF8
      Top             =   600
      Width           =   408
   End
   Begin VB.Image SlashR 
      Height          =   396
      Index           =   0
      Left            =   1920
      Picture         =   "frmSprites.frx":227C
      Top             =   600
      Width           =   408
   End
   Begin VB.Image SlashL 
      Height          =   396
      Index           =   4
      Left            =   4200
      Picture         =   "frmSprites.frx":250C
      Top             =   120
      Width           =   408
   End
   Begin VB.Image SlashL 
      Height          =   396
      Index           =   3
      Left            =   3600
      Picture         =   "frmSprites.frx":2729
      Top             =   120
      Width           =   408
   End
   Begin VB.Image SlashL 
      Height          =   396
      Index           =   2
      Left            =   3000
      Picture         =   "frmSprites.frx":2956
      Top             =   120
      Width           =   408
   End
   Begin VB.Image SlashL 
      Height          =   396
      Index           =   1
      Left            =   2400
      Picture         =   "frmSprites.frx":2B75
      Top             =   120
      Width           =   408
   End
   Begin VB.Image SlashL 
      Height          =   396
      Index           =   0
      Left            =   1800
      Picture         =   "frmSprites.frx":2D8C
      Top             =   120
      Width           =   408
   End
   Begin VB.Image SpriteDown 
      Height          =   288
      Index           =   5
      Left            =   1320
      Picture         =   "frmSprites.frx":2FB5
      Top             =   1560
      Width           =   192
   End
   Begin VB.Image SpriteDown 
      Height          =   276
      Index           =   4
      Left            =   1080
      Picture         =   "frmSprites.frx":33A6
      Top             =   1560
      Width           =   192
   End
   Begin VB.Image SpriteDown 
      Height          =   264
      Index           =   3
      Left            =   840
      Picture         =   "frmSprites.frx":3798
      Top             =   1560
      Width           =   192
   End
   Begin VB.Image SpriteUp 
      Height          =   288
      Index           =   5
      Left            =   1320
      Picture         =   "frmSprites.frx":3B86
      Top             =   1080
      Width           =   192
   End
   Begin VB.Image SpriteUp 
      Height          =   276
      Index           =   4
      Left            =   1080
      Picture         =   "frmSprites.frx":3F70
      Top             =   1080
      Width           =   192
   End
   Begin VB.Image SpriteUp 
      Height          =   264
      Index           =   3
      Left            =   840
      Picture         =   "frmSprites.frx":4358
      Top             =   1080
      Width           =   192
   End
   Begin VB.Image SpriteRight 
      Height          =   276
      Index           =   5
      Left            =   1320
      Picture         =   "frmSprites.frx":473D
      Top             =   600
      Width           =   192
   End
   Begin VB.Image SpriteRight 
      Height          =   288
      Index           =   4
      Left            =   1080
      Picture         =   "frmSprites.frx":4B24
      Top             =   600
      Width           =   192
   End
   Begin VB.Image SpriteRight 
      Height          =   288
      Index           =   3
      Left            =   840
      Picture         =   "frmSprites.frx":4F10
      Top             =   600
      Width           =   192
   End
   Begin VB.Image SpriteLeft 
      Height          =   276
      Index           =   5
      Left            =   1320
      Picture         =   "frmSprites.frx":52FE
      Top             =   120
      Width           =   192
   End
   Begin VB.Image SpriteLeft 
      Height          =   288
      Index           =   4
      Left            =   1080
      Picture         =   "frmSprites.frx":56E3
      Top             =   120
      Width           =   192
   End
   Begin VB.Image SpriteLeft 
      Height          =   288
      Index           =   3
      Left            =   840
      Picture         =   "frmSprites.frx":5ACB
      Top             =   120
      Width           =   192
   End
   Begin VB.Image SpriteStandUp 
      Height          =   264
      Left            =   1080
      Picture         =   "frmSprites.frx":5EB3
      Top             =   2040
      Width           =   192
   End
   Begin VB.Image SpriteStandDown 
      Height          =   264
      Left            =   840
      Picture         =   "frmSprites.frx":629B
      Top             =   2040
      Width           =   192
   End
   Begin VB.Image SpriteStandRight 
      Height          =   276
      Left            =   600
      Picture         =   "frmSprites.frx":6691
      Top             =   2040
      Width           =   192
   End
   Begin VB.Image SpriteStandLeft 
      Height          =   276
      Left            =   360
      Picture         =   "frmSprites.frx":6A7B
      Top             =   2040
      Width           =   192
   End
   Begin VB.Image SpriteDown 
      Height          =   264
      Index           =   2
      Left            =   600
      Picture         =   "frmSprites.frx":6E61
      Top             =   1560
      Width           =   192
   End
   Begin VB.Image SpriteDown 
      Height          =   288
      Index           =   1
      Left            =   360
      Picture         =   "frmSprites.frx":7251
      Top             =   1560
      Width           =   192
   End
   Begin VB.Image SpriteDown 
      Height          =   276
      Index           =   0
      Left            =   120
      Picture         =   "frmSprites.frx":7641
      Top             =   1560
      Width           =   192
   End
   Begin VB.Image SpriteUp 
      Height          =   264
      Index           =   2
      Left            =   600
      Picture         =   "frmSprites.frx":7A36
      Top             =   1080
      Width           =   192
   End
   Begin VB.Image SpriteUp 
      Height          =   288
      Index           =   1
      Left            =   360
      Picture         =   "frmSprites.frx":7E15
      Top             =   1080
      Width           =   192
   End
   Begin VB.Image SpriteUp 
      Height          =   276
      Index           =   0
      Left            =   120
      Picture         =   "frmSprites.frx":81FF
      Top             =   1080
      Width           =   192
   End
   Begin VB.Image SpriteRight 
      Height          =   276
      Index           =   2
      Left            =   600
      Picture         =   "frmSprites.frx":85E5
      Top             =   600
      Width           =   204
   End
   Begin VB.Image SpriteRight 
      Height          =   288
      Index           =   1
      Left            =   360
      Picture         =   "frmSprites.frx":89CC
      Top             =   600
      Width           =   192
   End
   Begin VB.Image SpriteRight 
      Height          =   288
      Index           =   0
      Left            =   120
      Picture         =   "frmSprites.frx":8DB8
      Top             =   600
      Width           =   192
   End
   Begin VB.Image SpriteLeft 
      Height          =   276
      Index           =   2
      Left            =   600
      Picture         =   "frmSprites.frx":91A8
      Top             =   120
      Width           =   204
   End
   Begin VB.Image SpriteLeft 
      Height          =   288
      Index           =   1
      Left            =   360
      Picture         =   "frmSprites.frx":958D
      Top             =   120
      Width           =   192
   End
   Begin VB.Image SpriteLeft 
      Height          =   288
      Index           =   0
      Left            =   120
      Picture         =   "frmSprites.frx":9979
      Top             =   120
      Width           =   192
   End
End
Attribute VB_Name = "frmSprites"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
