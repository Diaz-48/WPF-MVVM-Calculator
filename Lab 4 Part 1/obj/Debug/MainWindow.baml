   M S B A M L   `   `   `  ����G  CLab 4 Part 1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Lab_4_Part_1Lab_4_Part_1  5   	   +clr-namespace:Lab_4_Part_1Lab_4_Part_1  5   	       Lab_4_Part_1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Lab_4_Part_1     5   	   0	viewmodelclr-namespace:Lab_4_Part_1     5   	     � Title$  
Calculator��5	   	   $��442.447��6   $��716.923��6-    � 	Resources 5
         Lab_4_Part_1.ViewModel   vm��%   &	          5   
   6+   5      .��5      � $	��400��6   $	��200��6   $��Center=�6$   $��Center=�6A    � DataContext 6\   ��  �� Source# [   � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��0��6   $��0��6   $��Number - 1 : ��6-   $��Right=�6E   6j   �� 5   
   -   5        $��txtNumb1��5   /   $��0��6   $��1��6   $��5q�6?   ��6J   ��  �� Path$ Number1��� 5   
   $��1��6   $��0��6   $��Number - 2 : ��6-   $��Right=�6E   6j   �� 5    
   -   5        $��txtNumb2��5    /   $��1��6   $��1��6   $��5q�6?   ��6J   �� $ Number2��� 5!   
   $��3��6   $��5q�6   $��+��6)   ��65   �� $ MyCommandSum��� 5#   
   $��2��6   $��0��6   $��	Result : ��6-   $��Right=�6A   �� 5$   
   $��2��6   $��1��6   $��5,4,5,6q�6/   ��6@   �� $ Result� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5%   
   $��3��6   $��5q�6   $��-��6)   $��1��6[   ��65   �� *MyCommandSubtract+6[   �� 5&   
   $��4��6   $��5q�6   $��*��6)   ��65   �� *MyCommandMultiply+�� 5'   
   $��4��6   $��5q�6   $��/��6)   $��1��6Y   ��65   �� *MyCommandDivide+6Y   5)      5*      