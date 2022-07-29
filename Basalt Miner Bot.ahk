pause
global Px
global Py

pixelExist(Color)
{
; координаты зоны с игрой, пример как должна выглядить зона - https://photo-screen.ru/i/7LXie8CJe
; ссылка на софт для определения координат - https://github.com/ElektroStudios/Mouse-Point-Viewer/releases
X1 := 424 ; угол 1
Y1 := 375 ; угол 1
X2 := 576 ; угол 2
Y2 := 530 ; угол 2

PixelSearch x1, y1, X1, Y1, X2, Y2, Color, 3, Fast
if ErrorLevel
   return 0
else
   Px := x1
   Py := y1
   return 1
}
Loop
{
   if(pixelExist(0x000000)=1) ; блок песка
   {
      MouseMove Px, Py
      Send {LButton down}
      Sleep, 10
      MouseMove 0, 0
   }
   if(pixelExist(0xFFFFFF)=1) ; блок гравия
   {
      MouseMove Px, Py
      Send {LButton down}
      Sleep, 10
      MouseMove 0, 0
   }
   if(pixelExist(0xCECECE)=1) ; блок земли
   {
      MouseMove Px, Py
      Send {LButton down}
      Sleep, 10
      MouseMove 0, 0
   }
}
return
Alt:: pause
