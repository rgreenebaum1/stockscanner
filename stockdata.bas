Attribute VB_Name = "Module1"
Sub testing()

Dim totalvol As Double
Dim j As Integer
Dim ws As Worksheet

For Each ws In Worksheets
        totalvol = 0
        j = 0
        
        ws.Range("I1").Value = "Ticker"
        ws.Range("J1").Value = "Total Volume"
        
        lastrow = Cells(Rows.Count, "A").End(xlUp).Row
        
        For i = 2 To lastrow
        
            If ws.Cells(i + 1, 1).Value <> ws.Cells(i, 1).Value Then
            
                totalvol = totalvol + ws.Cells(i, 7).Value
                
                ws.Range("I" & 2 + j).Value = ws.Cells(i, 1).Value
                ws.Range("J" & 2 + j).Value = totalvol
                
               j = j + 1
              
                
            Else
                totalvol = totalvol + ws.Cells(i, 7).Value
            End If
            
        Next i
        totalvol = 0
        j = 0
            
      Next ws



End Sub

