   M S B A M L   `   `   `  ����A  =PunGen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PunGenPunGen  5   	       PunGen.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:PunGen     5   	     � Title$  PunGen��5   	   $	��350��6   $��538.92��6%    � 
ResizeMode$ NoResize=�64   .��5	      � $	��520��6   $��2q�6   .+�5
   
   �� -   5         ��Name$ buttonSelectFile��5
      $��Select dictionary file��6+   $��
10,108,0,0q�6L   $	��128��6u    �� 	IsDefault . $��20��6�   $	��Top=�6�   $
��Left=�6�   �� 5   
   -   5         ��Name$ textBoxLetterCount��5      $
��Left=�6.   $��23��6I   $��	95,10,0,0q�6U    �� TextWrapping$
 Wrap=�6h   $��4��6|   $	��Top=�6�   $��43��6�   $��Right=�6�   $��Center=�6�    �� MaxLines$ 1��6�   �� 5   
   -   5         ��Name$ labelLetters��5      $��Same letters��6&   $
��Left=�6=   $��10,7,0,0q�6X   $	��Top=�6j   $��80��6�   $��62��6�   �� 5   
   $��Right=�6   $��0,0,0,10q�63   $��Bottom=�6E   $	��297��6`   $	��377��6m   .��5      �� -   5        $ textBoxPreview��5      $
 Wrap=�6.   $��Preview here...
��6B    �� IsUndoEnabled .  	 �� 
IsReadOnly	 . "
 �� VerticalScrollBarVisibility$

 Auto=�6�   5      �� 5   
   -   5        $ textBoxLimit��5      $
��Left=�6(   $��23��6C   $��	95,41,0,0q�6O   $
 Wrap=�6b   $	��100��6v   $	��Top=�6�   $��43��6�   $��Right=�6�   $��Center=�6�   $ 1��6�   �� 5   
   -   5        $ 
labelLimit��5      $��Object limit��6$   $
��Left=�6;   $��	10,38,0,0q�6V   $	��Top=�6i   $��80��6�   $��26��6�   �� 5   
   -   5        $ buttonGenerate��5      $��	Generate!��6)   $
��Left=�6=   $��	10,0,0,10q�6X   $��Bottom=�6k   $	��128��6�   $��20��6�   �� 5   
   -   5        $ textBoxExtra��5      $
��Left=�6(   $��23��6C   $��	95,72,0,0q�6O   $
 Wrap=�6b   $��1��6v   $	��Top=�6   $��43��6�   $��Right=�6�   $��Center=�6�   $ 1��6�   �� 5   
   -	   5        $ labelLimit_Copy��5      $��Extra Length��6)   $
��Left=�6@   $��	10,69,0,0q�6[   $	��Top=�6n   $��80��6�   $��26��6�   5      5      