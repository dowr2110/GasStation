   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5          WpfApp7.pages.adminPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  	adminPage��5
       � DataContext 5      '  !WpfApp7.ViewModels.AdminViewModel  5   
    � 	Resources 5         
labelcolor �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader �� Property �� Value��%�   &	        �� 5   
   "  6#   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$	 8.5(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ���	#FFCDF0BF$	��319��6"   $	��534��62   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $
��Data��5   �   $	��514��62   $
��auto��6>      CanUserAddRows .  ���	#FFBFAAAA$��Times New Roman)�6z      AutoGenerateColumns .  $��10,122,10,10q�6�   $��Center=�6�   $	��Top=�6�   ��6   �� *Orders+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   
IsReadOnly	 . 
   HeaderStyle#
 [  6S      FontSize$ 12Q�6}      Header$ Id��6�      Width5  /System.Windows.Controls.DataGridLengthConverter$ 35 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *	OrderId+6�     5      	 . #
 [  6P   $ Фамилия��6z   $ 79 6�    67   �� *Name+6�     5      	 . #
 [  6P   $ 11Q�6z   $ 
Время��6�   $	 128 6�    67   �� *When+6�     5      	 . #
 [  6S   $ 12Q�6}   $ UserId��6�   $ 40 6�    67   �� *UserId+6�     5      	 . #
 [  6R   $ 12Q�6|   $ FuelId��6�   $ 40 6�    67   �� *FuelId+6�     5      	 . #
 [  6R   $ 12Q�6|   $ Статус��6�   $ 90 6�    67   �� *Status+6�   4  .System.Windows.Controls.DataGridCheckBoxColumn  5      $  ��6*   #
 [  6S   $ 40 6~    67   �� *	Status2+6~     5       	 . #
 [  6R   $ 12Q�6}   $ Количество��6�   $ 60 6�    67   �� *Amount+6�     5!      	 . #
 [  6T   $ 12Q�6   $ Полная цена��6�   $ 70 6�    67   �� *
FullCost+6�   5#      �� 5$   
   $��Сохранить��6   $��25��6G   $��401,92,31,0q�6S   $	��102��6h   $��Center=�6t   $	��Top=�6�   ��6%   �� *Updatecommand+6�   �� 5%   
   $��
Поиск��6   $��25��6C   $��428,10,31,0q�6~   $��75��6�   $��Center=�6�   $	��Top=�6�   ��6!   �� *SearchCommand+��6O   ��  �� ElementName$ Combo��6�   �� 5&   
   $��
Юзеры��6   $��25��6D   $��348,48,111,0q�6P   $��75��6f   $��Center=�6q   $	��Top=�6�   $��10(�6�   ��6!   �� *ToUsersCommand+6�   �� 5'   
   $��Топлива��6   $��25��6G   $��428,48,31,0q�6S   $��75��6h   $��Center=�6s   $	��Top=�6�   $��10(�6�   ��6$   �� *ToFuelsCommand+6�   �� 5(   
   $��Times NEw Roman)�62   $
��Bold"�6O   $��25��6a   $��327,10,111,0q�6m    �� TextWrapping$
 Wrap=�6�   $��96��6�   $��Center=�6�   $	��Top=�6�   ��6   ��  �� Path$ 	Searchtbx�6�   �� 5)   
   $��
Выйти��6   $��25��6L   $��10,10,423,0q�6X   $	��101��6m   $��Center=�6y   $	��Top=�6�   ��6!   �� *ToAuthorizationCommand+6�   �� 5+   
   -   5         ��Name$ Combo��5+      $��214,10,212,0q�6"   ���	#FF9E9E9E$	��108��6O   $��25��6[   $��Center=�6g   $	��Top=�6�   .@�5,      �� $��Id��6   �� 5-      $��Имя��6   �� 5.      $ ��IdПользователя��6   �� 5/      $��IdТоплива��6   �� 50      $��Статус��6   �� 51      $��Полная Цена��6   52      �� 53   
   $��Обновить��6   $��25��6G   $��10,48,423,0q�6S   $	��101��6h   $��Center=�6t   $	��Top=�6�   ��6$   �� *RefreshCommand+6�   �� 54   
   $��Статистика��6   $��25��6N   $��126,48,295,0q�6Z   $	��113��6p   $��Center=�6|   $	��Top=�6�   ��6&   �� *ToStatistikaCommand+6�   �� 55   
   $��Смена пароля��6   $��9(�6(   $��25��6_   $��116,10,325,0q�6k   $��93��6�   $��Center=�6�   $	��Top=�6�   ��65   �� *ChangePasswordCommand+6�   �� 56   
   $��Удалить��6   $��10,92,423,0q�6x   $	��101��6�    J� RenderTransformOrigin$ 	0.907,0.7&�6�   $��Center=�6�   $	��Top=�6�   $��25��6�   ��6#   �� *Deleteordercommand+��6J   �� $
 Data��6�   58      59      