VERSION 5.00
Begin VB.Form frmMap 
   BorderStyle     =   0  'Kein
   Caption         =   "Form1"
   ClientHeight    =   6672
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6816
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6672
   ScaleWidth      =   6816
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.PictureBox PicStencil 
      Appearance      =   0  '2D
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'Kein
      ForeColor       =   &H80000008&
      Height          =   4284
      Left            =   0
      Picture         =   "frmMap.frx":0000
      ScaleHeight     =   357
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   452
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   5424
   End
   Begin VB.Label Label3 
      Caption         =   "Blue is an interactive object"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   6240
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "Red and blue are non walkable areas"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   5880
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "Black is walkable area"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   5520
      Width           =   1935
   End
End
Attribute VB_Name = "FrmMap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
