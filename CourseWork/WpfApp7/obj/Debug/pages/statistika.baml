   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5          WpfApp7.pages.statistika   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  
statistika��5
       � DataContext 5      ,  &WpfApp7.ViewModels.statistikaViewModel  5   
    � 	Resources 5         datagrid �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader �� Property �� Value��%�   &	        �� 5   
   "  6!   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 10(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ���	#FFCDF0BF$��
0,0,0,-255q�6"   .+�5   
   ��  �� Orientation$ Vertical=�6   $	��Top=�6,   .+�5      ��  �� IsCancel . $	��194��6%   $��Заказы��61   ��6B   �� *ToOrdersCommand+�� 5      $��
Выйти��6   $	��194��6&   ��63   �� *ToAuthorizationCommand+5      �� 5   
   $��24,76,274,0q�6   $��77��6*   $	��223��66   ���	#FFBFAAAA$��Center=�6Y   $	��Top=�6v   .+�5      �� $��18(�6   $��Times New Roman)�6&   $
��Bold"�6C   $3��-Статистика за все время :��6U   �� 5      $��Times New Roman)�6   $
��Bold"�65   $5��/Сумма количество литров : ��6G   �� 5      $��Times New Roman)�6$   $
��Bold"�6A   $��17(�6S   ��6a   ��  �� Path$ Allcol� L5      �� 5       $��Times New Roman)�6   $
��Bold"�65   $7��1Сумма всего потраченного : ��6G   �� 5!      $��Times New Roman)�6$   $
��Bold"�6A   $��17(�6S   ��6a   �� $ 
Allfulcost� $5"      5#      �� 5$   
   $��
252,76,0,0q�6   $��77��6)   $	��269��65   ���	#FFBFAAAA$��Center=�6Y   $	��Top=�6v   .+�5%      �� $��Times New Roman)�6   $
��Bold"�65   $��18(�6G   $;��5Статистика за текущий месяц :��6U   �� 5&      $��Times New Roman)�6   $
��Bold"�65   $5��/Сумма количество литров : ��6G   �� 5'      -   5        	 ��Name$		 mes��5'   a   $��Times New Roman)�6$   $
��Bold"�6A   $��17(�6S   ��6n   �� $ Allcol2� L5(      �� 5)      $��Times New Roman)�6   $
��Bold"�65   $7��1Сумма всего потраченного : ��6G   �� 5*      -   5        $
	 mes2��5*   a   $��Times New Roman)�6$   $
��Bold"�6A   $��17(�6S   ��6o   �� $ Allfulcost2� $5+      5,      �� 58   
   $��306,164,0,0q�6   $	��215��6*   $��60��66   ���	#FF99B8B9$��Center=�6Y   $	��Top=�6v   .+�59      �� $��Times New Roman)�6   $��13(�66   $��Oblique$�6D   $=��7Статистика за выбранную дату :��6X   �� 5:      $��Times New Roman)�6   $��Oblique$�66   $5��/Сумма количество литров : ��6J   �� 5;      -   5        $	 Allcol��5;   S   $��Times New Roman)�6$   $
��Bold"�6A   $��17(�6c    L5<      �� 5=      $��Times New Roman)�6   $��Oblique$�65   $7��1Сумма всего потраченного : ��6I   �� 5>      -   5        $	 
Allfulcost��5>   $   $��Times New Roman)�68   $
��Bold"�6U   $��17(�6g    $5?      5@      &   System.Windows.Controls.Calendar  5A   
   -   5        
  Name$
 	calendar1��5A      $	��351��6&      SelectionMode$ MultipleRange=�63   $��24,159,220,0q�6�   $	��277��6�   $��Center=�6�   $	��Top=�6�   &   System.Windows.Controls.DataGrid  5B   
   -   5        $
��Data��5B   �      
IsReadOnly .    CanUserAddRows .  ���	#FF99B8B9$��Times New Roman)�6k      AutoGenerateColumns .  $��
0,232,10,0q�6�   $
��auto��6�   $
��auto��6�   $y�	Collapsed=�6�   $��Right=�6�   $	��Top=�6  ��6%   ��    Columns 5C      0  *System.Windows.Controls.DataGridTextColumn  5D      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    HeaderStyle# [  68      Header$ Количество��6�      Width5  /System.Windows.Controls.DataGridLengthConverter$ 78 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6`   �� $ Amount�6�     5E       .  # [  69   $% Названия топливо��6�   $ 90 6�    6a   �� $ 	Fuel.Name�6�     5F       .  # [  69   $ Цена��6�   $ 90 6�    6a   �� $ 	Fuel.Cost�6�     5G       . # [  68   $ Полная цена��6�   $ 90 6�    6`   �� $ FullCost�6�     5H       .  # [  69   $ Статус��6�   $ 90 6�    6a   �� $ Status�6�     5I       .  # [  69   $ Фамилия��6   $ 90 6�    6a   �� $
 Name�6�   5K      �� 5L   
   -   5         ��Name$	 lab��5L      $��14(�6   $	��220��6+   $��37��67   $
��Bold"�6C   $��Times New Roman)�6U   
���  ��$��301,224,0,281q�6�   $	��Top=�6�   $��Center=�6�   �� 5M   
   $B��</Автозаправочная;component/Images/snimok4.PNG��6   $��Center=�6G   $	��465��6d   $	��Top=�6q   $	��312��6�   $��-293,77,502,0q�6�   5O      5P      