   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5      '    !WpfApp7.pages.adminPageStatistika   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  adminPageStatistika��5
       � DataContext 5      1  +WpfApp7.ViewModels.AdminViewModelStatistika  5   
    � 	Resources 5         datagrid �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader �� Property �� Value��%�   &	        �� 5   
   "  6!   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 10(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ���	#FFCDF0BF$��
0,0,0,-209q�6"   $	��319��66   $	��534��6F   .+�5   
   ��  �� Orientation$ Vertical=�6   $	��Top=�6-   .+�5      �� $��Заказы��6   ��6'   �� *ToOrdersCommand+5      �� 5   
   $��24,50,274,160q�6   $��77��6,   $	��223��68   ���	#FFBFAAAA$��Center=�6[   $	��Top=�6x   .+�5      �� $��Times New Roman)�6   $
��Bold"�66   $��18(�6H   $3��-Статистика за все время :��6V   �� 5      $��Times New Roman)�6   $
��Bold"�66   $5��/Сумма количество литров : ��6H   �� 5      $��Times New Roman)�6%   $
��Bold"�6B   $��17(�6T   ��6b   ��  �� Path$ Allcol� L5      �� 5      $��Times New Roman)�6   $
��Bold"�66   $7��1Сумма всего потраченного : ��6H   �� 5       $��Times New Roman)�6%   $
��Bold"�6B   $��17(�6T   ��6b   �� $ 
Allfulcost� $5!      5"      �� 5#   
   $��
252,50,0,0q�6   $��77��6)   $	��269��65   ���	#FFBFAAAA$��Center=�6Y   $	��Top=�6v   .+�5$      �� $��18(�6   $��Times New Roman)�6'   $
��Bold"�6D   $;��5Статистика за текущий месяц :��6V   �� 5%      $��Times New Roman)�6   $
��Bold"�66   $5��/Сумма количество литров : ��6H   �� 5&      $��Times New Roman)�6%   $
��Bold"�6B   $��17(�6T   ��6b   �� $ Allcol2� L5'      �� 5(      $��Times New Roman)�6   $
��Bold"�66   $7��1Сумма всего потраченного : ��6I   �� 5)      $��Times New Roman)�6%   $
��Bold"�6B   $��17(�6T   ��6b   �� $ Allfulcost2� $5*      5+      �� 57   
   $��306,134,0,0q�6   $	��215��6*   $��60��66   ���	#FF99B8B9$��Center=�6Y   $	��Top=�6v   .+�58      �� $��Times New Roman)�6   $��13(�66   $��Oblique$�6D   $=��7Статистика за выбранную дату :��6X   �� 59      $��Times New Roman)�6   $��Oblique$�65   $5��/Сумма количество литров : ��6I   �� 5:      -   5         ��Name$ Allcol��5:   A   $��Times New Roman)�6$   $��17(�6Q    L5;      �� 5<      $��Times New Roman)�6   $��Oblique$�65   $7��1Сумма всего потраченного : ��6I   �� 5=      -   5        $ 
Allfulcost��5=   A   $��Times New Roman)�6$   $��17(�6U    $5>      5?      &   System.Windows.Controls.Calendar  5@   
   -   5        	  Name$	 	calendar1��5@      $	��351��6'   $��24,134,220,0q�65   $	��277��6M   
   SelectionMode$
 MultipleRange=�6Y   $��Center=�6�   $	��Top=�6�   &   System.Windows.Controls.DataGrid  5A   
   -   5        $
��Data��5A   �      
IsReadOnly .    CanUserAddRows .  ���	#FF99B8B9$��Times New Roman)�6l      AutoGenerateColumns .  $��
0,232,10,0q�6�   $
��auto��6�   $
��auto��6�   $y�	Collapsed=�6�   $��Right=�6�   $	��Top=�6  ��6%   ��    Columns 5B      0  *System.Windows.Controls.DataGridTextColumn  5C      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    HeaderStyle# [  67      Header$ Количество��6      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6_   �� $ Amount�6�     5D       .  # [  69   $% Названия топливо��6�   $	 130 6�    6a   �� $ 	Fuel.Name�6�     5E       .  # [  69   $ Цена��6�   $ 60 6�    6a   �� $ 	Fuel.Cost�6�     5F       . # [  68   $ Полная цена��6�   $	 100 6�    6`   �� $ FullCost�6�     5G       .  # [  69   $ Статус��6�   $	 100 6�    6a   �� $ Status�6�     5H       .  # [  69   $ Фамилия��6   $ 80 6�    6a   �� $
 Name�6�   5J      5K      5L      