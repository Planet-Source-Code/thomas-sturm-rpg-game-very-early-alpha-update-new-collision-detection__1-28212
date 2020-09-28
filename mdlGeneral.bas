Attribute VB_Name = "mdlGeneral"
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer

Public MoveUp As Boolean
Public MoveDown As Boolean
Public MoveRight As Boolean
Public MoveLeft As Boolean

Public SlashFrameCount As Integer

Public InteractPossible As Boolean

Public Enum Direction
   dUp = 1
   dDown = 2
   dLeft = 3
   dRight = 4
End Enum

Public Function MovementPossible(ByVal Dir As Direction) As Boolean

InteractPossible = False

If Dir = dUp Then
   If FrmMap.PicStencil.Point(frmMain.ImgSprite.Left, frmMain.ImgSprite.Top - 3) = 255 Then
      MovementPossible = False
   ElseIf FrmMap.PicStencil.Point(frmMain.ImgSprite.Left, frmMain.ImgSprite.Top - 3) = 0 Then
      MovementPossible = True
   Else
      MovementPossible = False
      InteractPossible = True
   End If
ElseIf Dir = dDown Then
   If FrmMap.PicStencil.Point(frmMain.ImgSprite.Left, frmMain.ImgSprite.Top + 25) = 255 Then
      MovementPossible = False
   ElseIf FrmMap.PicStencil.Point(frmMain.ImgSprite.Left, frmMain.ImgSprite.Top + 25) = 0 Then
      MovementPossible = True
   Else
      MovementPossible = False
      InteractPossible = True
   End If
ElseIf Dir = dLeft Then
   If FrmMap.PicStencil.Point(frmMain.ImgSprite.Left - 3, frmMain.ImgSprite.Top) = 255 Or FrmMap.PicStencil.Point(frmMain.ImgSprite.Left - 3, frmMain.ImgSprite.Top + 22) = 255 Then
      MovementPossible = False
   ElseIf FrmMap.PicStencil.Point(frmMain.ImgSprite.Left - 3, frmMain.ImgSprite.Top) = 0 Then
      MovementPossible = True
   Else
      MovementPossible = False
      InteractPossible = True
   End If
ElseIf Dir = dRight Then
   If FrmMap.PicStencil.Point(frmMain.ImgSprite.Left + 19, frmMain.ImgSprite.Top) = 255 Or FrmMap.PicStencil.Point(frmMain.ImgSprite.Left + 19, frmMain.ImgSprite.Top + 22) = 255 Then
      MovementPossible = False
   ElseIf FrmMap.PicStencil.Point(frmMain.ImgSprite.Left + 19, frmMain.ImgSprite.Top) = 0 Then
      MovementPossible = True
   Else
      MovementPossible = False
      InteractPossible = True
   End If
End If

End Function

