   M S B A M L   `   `   `  ����J  FOnBreak(MDT)V.2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:OnBreak_MDT_V._2OnBreak_MDT_V._2  5   	   !    OnBreak_MDT_V._2.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:OnBreak_MDT_V._2     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$&   Sistema de subsidio habitacional��5	   	   $	��600��62   $
��1080��6?    � WindowStartupLocation$ CenterScreen=�6L    � 
ResizeMode$ NoResize=�6q   $��Yu Gothic UI Semibold)�6�    � WindowStyle$
 None=�6�   .��5
      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��250 �6   �� 5      $��* �6   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ 
PrimaryMid=�6#   $��2��65   $��Stretch=�6I   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � 	 � Color$	 Black��6#   
 � Offset$
 0Q�61   � 5      $	 Black��6#   $
 1Q�61   5      .��5      � .+�5      �� $�� ��6   $��Center=�6$   $��Center=�6A   $��22(�6\   �� 5      $��Center=�6    �� Orientation$ 
Horizontal=�68   $��Right=�6Q   .+�5      �� $��Ayuda��6    $��Center=�6-   $��18(�6H   '  !MaterialDesignThemes.Wpf.PopupBox  5      $��10q�6/      PlacementMode$ BottomAndAlignRightEdges=�6;      	StaysOpen .     PopupContent. 5       �� $	��150��6%   .+�5!      �� $��Configuracion��6%   �� 5"      $��Ayuda��6%   �� 5#      �� 5$      -   5         ��Name$ ButtonPopUpSalir��5$   %   $��Cerrar Sesion��6?   6W   5&      5(      5*      5,      5-      � 5/   
   $��Stretch=�6   $��1��6-   
���   � 50      �� 51      $��70 �6    �� 52      $	��326 �6    .+�54      � $��0��6   
���   �56      �� 57      $��Stretch=�6   $��Disabled=�6@   $
��Auto=�6i   $��0,29,0,-125q�6�   $��2��6�   .��58      �� -   5         ��Name$
 Menu��58      $��10q�6+   5:      5<      �� 5B   
   -   5        $ StackPanelMain��5B      $��1��6-   $��1��6:   .+�5C      �  5D      �� 5E      $��30 �6$   �� 5F      $	��100 �6$   �� 5G      $	��47* �6$   �� 5H      $
��107* �6$   .+�5L      � $��1��6   .+�5M        $
 Dark=�6/   .��5N      �� $��Bienvenidos��6$   $��35(�67   $
��Left=�6E   $��Bottom=�6`   $��
30,50,0,10q�6{   5P      5S      � 5U      $��2��6   $��2��6$   .+�5V      �� $ Vertical=�6!   $��
 40 20 0 0q�68   .+�5X      �� $ 
Horizontal=�6%   .+�5Y      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Account=�66   $��Bottom=�6�   $	��0 4q�6�   ��6E   ��  �� ElementName$ txt_usuario�� �� Path$ BorderBrush�6�   �� 5Z      -   5         ��Name$ txt_usuario��5Z   &   $	��300��6;   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Usuario��6G      
IsFloating . 6p   5[      �� 5]      $ 
Horizontal=�6%   $��	 0 40 0 0q�6>   .+�5^        $	 Key=�66   $��Bottom=�6�   $	��0 4q�6�   ��6A   �� $ 	txt_clave��$ BorderBrush�6�   G� 5_      -   5         G�Name$ 	txt_clave��5_   *   $	��300��6=   $ Contraseña��6I    . 6u   5`      �� 5b      -   5         ��Name$ chk_recordar_contraseña��5b   #   $��Recordar Contraseña��6D   $��0 30 0 0q�6b   6v   �� 5d      )  #MaterialDesignThemes.Wpf.DialogHost   OpenDialogCommand#��Z 6!    $   MaterialDesignRaisedAccentButton#���   5e      $��Iniciar��6P   $��80��6b   $��Right=�6n   $��	0 20 70 0q�6�   ��5d   c   �� $ Hecho��5e   �   #  MaterialDesignThemes.Wpf.Card  5h      $��
0 10 10 10q�6/   $��15q�6C   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth4=�6P   .��5i      �� $ 
Horizontal=�6)   .+�5j   "   �� �� 6-   
������� $  MaterialDesignSubtitle2Hyperlink#���  6I   .�6�   ¿Olvidaste la contraseña?6�   6�   �� 5l   "   $��70 0 0 0q�6,   �� 6?   
�������#���  6\   .�6�   Registrarse6�   6�   5m      5o      5p      5s        5u      -   5          Name$ Hecho��5u   ;      IsOpen .  $��4��6J      DialogContent 5v      �� 5w      $��20q�6%   $ Vertical=�61   .+�5x      �� $$��Iniciaste sesion correctamente��6(   �� 5y      -   5        $ 	btnInicio��5y   %      CloseDialogCommand#��Z 68     MaterialDesignFlatButton#���  5z      $��Aceptar��6P   $��0 10 0 0q�6b   ��5y   {   �� $ Hecho��5z   t   5{      5      5�      5�      5�      5�      