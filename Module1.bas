Attribute VB_Name = "Module1"
Public Boss As Boolean
Public Loads(1 To 400) As Integer
Function Hit(a, b) As Boolean
If a.Left + a.Width >= b.Left Then
If a.Left <= b.Left + b.Width Then
If a.Top + a.Width >= b.Top Then
If a.Top <= b.Top + b.Height Then
Hit = True
End If
End If
End If
End If
End Function





