VERSION 5.00
Begin VB.Form frmmain 
   Caption         =   "rhtz - no x"
   ClientHeight    =   1590
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4710
   BeginProperty Font 
      Name            =   "Small Fonts"
      Size            =   6.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmmain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1590
   ScaleWidth      =   4710
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "exit"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   1800
      TabIndex        =   1
      Top             =   1200
      Width           =   1095
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "this is an example of how to make a form with no exit button  without disabling the title bar"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   4455
   End
End
Attribute VB_Name = "frmmain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' /----------------------\
' |        rhtz          |
' |  rhtz.smutstars.com  |
' \----------------------/
Option Explicit

Private Sub Form_Load()
    disablexit Me
End Sub

Private Sub Label2_Click()
    End
End Sub
