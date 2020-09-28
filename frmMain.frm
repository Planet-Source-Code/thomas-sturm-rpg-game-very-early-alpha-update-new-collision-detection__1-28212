VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000004&
   BorderStyle     =   3  'Fester Dialog
   Caption         =   "RPG Test - Press ESC to end"
   ClientHeight    =   5316
   ClientLeft      =   36
   ClientTop       =   336
   ClientWidth     =   6732
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmMain.frx":0000
   ScaleHeight     =   443
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   561
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Timer tmrDirection 
      Interval        =   25
      Left            =   2000
      Top             =   120
   End
   Begin VB.Timer tmrMovement 
      Interval        =   1
      Left            =   1560
      Top             =   120
   End
   Begin VB.Image ImgSprite 
      Height          =   495
      Left            =   2760
      Top             =   1920
      Width           =   375
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Standing As Boolean
Private FrameCount As Integer
Private Const FrameMax As Integer = 5

Private Sub Form_Load()
MoveUp = False
MoveDown = True
MoveLeft = False
MoveRight = False
Standing = True
FrameCount = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload frmSprites
Unload FrmMap
End
End Sub

Private Sub tmrDirection_Timer()

If MoveUp Then
    If Standing = True Then
        ImgSprite.Picture = frmSprites.SpriteStandUp.Picture
        Exit Sub
    End If
    If MovementPossible(dUp) Then
        If Not MoveLeft And Not MoveRight Then
            FrameCount = FrameCount + 1
            ImgSprite.Picture = frmSprites.SpriteUp(FrameCount).Picture
            If FrameCount = FrameMax Then FrameCount = -1
        End If
        ImgSprite.Top = ImgSprite.Top - 3
    End If
End If

If MoveDown Then
    If Standing = True Then
        ImgSprite.Picture = frmSprites.SpriteStandDown.Picture
        Exit Sub
    End If
    If MovementPossible(dDown) Then
        If Not MoveLeft And Not MoveRight Then
            FrameCount = FrameCount + 1
            ImgSprite.Picture = frmSprites.SpriteDown(FrameCount).Picture
        End If
        If FrameCount = FrameMax Then FrameCount = -1
        ImgSprite.Top = ImgSprite.Top + 3
    End If
End If

If MoveRight Then
    If Standing = True Then
        ImgSprite.Picture = frmSprites.SpriteStandRight.Picture
        Exit Sub
    End If
    If MovementPossible(dRight) Then
        FrameCount = FrameCount + 1
        ImgSprite.Picture = frmSprites.SpriteRight(FrameCount).Picture
        If FrameCount = FrameMax Then FrameCount = -1
        ImgSprite.Left = ImgSprite.Left + 3
    End If
End If

If MoveLeft Then
    If Standing = True Then
        ImgSprite.Picture = frmSprites.SpriteStandLeft.Picture
        Exit Sub
    End If
    If MovementPossible(dLeft) Then
        FrameCount = FrameCount + 1
        ImgSprite.Picture = frmSprites.SpriteLeft(FrameCount).Picture
        If FrameCount = FrameMax Then FrameCount = -1
        ImgSprite.Left = ImgSprite.Left - 3
    End If
End If

End Sub

Private Sub tmrMovement_Timer()
If GetAsyncKeyState(vbKeyUp) = 0 And GetAsyncKeyState(vbKeyDown) = 0 _
And GetAsyncKeyState(vbKeyRight) = 0 And GetAsyncKeyState(vbKeyLeft) = 0 Then
    Standing = True
End If

If GetAsyncKeyState(vbKeyUp) < 0 Then
    Standing = False
    MoveUp = True
    MoveDown = False
    MoveRight = False
    MoveLeft = False
End If
If GetAsyncKeyState(vbKeyUp) < 0 And GetAsyncKeyState(vbKeyLeft) < 0 Then
    Standing = False
    MoveUp = True
    MoveDown = False
    MoveRight = False
    MoveLeft = True
End If
If GetAsyncKeyState(vbKeyUp) < 0 And GetAsyncKeyState(vbKeyRight) < 0 Then
    Standing = False
    MoveUp = True
    MoveDown = False
    MoveRight = True
    MoveLeft = False
End If

If GetAsyncKeyState(vbKeyDown) < 0 Then
    Standing = False
    MoveUp = False
    MoveDown = True
    MoveRight = False
    MoveLeft = False
End If
If GetAsyncKeyState(vbKeyDown) < 0 And GetAsyncKeyState(vbKeyLeft) < 0 Then
    Standing = False
    MoveUp = False
    MoveDown = True
    MoveRight = False
    MoveLeft = True
End If
If GetAsyncKeyState(vbKeyDown) < 0 And GetAsyncKeyState(vbKeyRight) < 0 Then
    Standing = False
    MoveUp = False
    MoveDown = True
    MoveRight = True
    MoveLeft = False
End If

If GetAsyncKeyState(vbKeyLeft) < 0 Then
    Standing = False
    MoveUp = False
    MoveDown = False
    MoveRight = False
    MoveLeft = True
End If
If GetAsyncKeyState(vbKeyLeft) < 0 And GetAsyncKeyState(vbKeyUp) < 0 Then
    Standing = False
    MoveUp = True
    MoveDown = False
    MoveRight = False
    MoveLeft = True
End If
If GetAsyncKeyState(vbKeyLeft) < 0 And GetAsyncKeyState(vbKeyDown) < 0 Then
    Standing = False
    MoveUp = False
    MoveDown = True
    MoveRight = False
    MoveLeft = True
End If

If GetAsyncKeyState(vbKeyRight) < 0 Then
    Standing = False
    MoveUp = False
    MoveDown = False
    MoveRight = True
    MoveLeft = False
End If
If GetAsyncKeyState(vbKeyRight) < 0 And GetAsyncKeyState(vbKeyUp) < 0 Then
    Standing = False
    MoveUp = True
    MoveDown = False
    MoveRight = True
    MoveLeft = False
End If
If GetAsyncKeyState(vbKeyRight) < 0 And GetAsyncKeyState(vbKeyDown) < 0 Then
    Standing = False
    MoveUp = False
    MoveDown = True
    MoveRight = True
    MoveLeft = False
End If

If GetAsyncKeyState(vbKeyEscape) < 0 Then
    Unload Me
End If

Me.Caption = "Press Esc to exit. Co-Ords:" & ImgSprite.Left & ":" & ImgSprite.Top

If InteractPossible Then
   Me.Caption = "Press Esc to exit. Co-Ords:" & ImgSprite.Left & ":" & ImgSprite.Top & "   This is an interactable object"
End If

End Sub
