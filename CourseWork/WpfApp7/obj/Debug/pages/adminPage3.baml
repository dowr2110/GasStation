   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5          WpfApp7.pages.adminPage3   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  
adminPage2��5
       N� 
Background
 ����� � DataContext 5      (  "WpfApp7.ViewModels.AdminViewModel3  5   
    � 	Resources 5         
labelcolor �� 
TargetType �� Property �� Value  datagrid=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%�  &	        &	 �     �� 5   
   " ��6#   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 14(�6)   �� 5       � ��$
 Bold"�6+   5      �� 5   
   "  6!   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 10(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ���	#FFCDF0BF$	��534��6#   $	��319��62   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $
��Data��5   �   $	��514��61   $
��auto��6=      CanUserAddRows .  ���	#FFBFAAAA$��Times New Roman)�6y      AutoGenerateColumns .  $��10,122,10,10q�6�   $��Center=�6�   $	��Top=�6�   ��6   �� *Users+	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5       ,  &System.Windows.Controls.DataGridColumn
   HeaderStyle#
 [ 6%      
IsReadOnly .    Header$ Id��6v      Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6_   �� *Id+6�     5!      #
 [ 6&    . $ 
Логин��6y   $	 270 6�    6`   �� *Name+6�   5$      �� 5%   
   $��Сохранить��6   $��401,92,31,0q�6G   $	��102��6\   $��Center=�6h   $	��Top=�6�   $��25��6�   ��6%   �� *Updatecommand+6�   �� 5'   
   $��
Поиск��6f   $��428,10,31,0q�6v   $��75��6�   $��Center=�6�   $	��Top=�6�   $��25��6�   ��6   �� *Searchfuelcommand+��67   ��  �� ElementName$ Combo��6�   �� 5(   
   $��Заказы��6   $��348,48,111,0q�6u   $��75��6�   $��Center=�6�   $	��Top=�6�   $��25��6�   $��10(�6�   ��6"   �� *ToOrderscommand+��6F   �� $
 fram��6�   �� 5)   
   $��Топлива��6   $��428,48,31,0q�6v   $��75��6�   $��Center=�6�   $	��Top=�6�   $��25��6�   $��10(�6�   ��6$   �� *ToFuelsCommand+��6G   �� $
 fram��6�   �� 5*   
   $��Смена пароля��6   $��9(�6(   $��25��6_   $��116,10,325,0q�6k   $��93��6�   $��Center=�6�   $	��Top=�6�   ��65   �� *ChangePasswordCommand+6�   �� 5,   
   $��Times New Roman)�62   $
��Bold"�6O   $��25��6a   $��327,10,111,0q�6m    �� TextWrapping$
 Wrap=�6�   $��96��6�   $��Center=�6�   $	��Top=�6�   ��6   ��  �� Path$ 	Searchtbx�6�   �� 5-   
   -   5         ��Name$ Combo��5-      $��214,10,212,0q�6"   ���	#FF9E9E9E$	��108��6O   $��25��6[   $��Center=�6g   $	��Top=�6�   .@�5.      �� $��Id��6   �� 5/      $��
Логин��6   �� 50      $��Пароль��6   51      �� 52   
   $��
Выйти��6   $��10,10,423,0q�6L   $	��101��6a   $��Center=�6m   $	��Top=�6�   $��25��6�   ��6!   �� *ToAuthorizationCommand+6�   �� 53   
   $��Times New Roman)�60   $
��Bold"�6M   $��20��6_   $��123,97,339,0q�6k   $
 Wrap=�6�   $��72��6�   $��Center=�6�   $	��Top=�6�   ��6   �� $ Nametbx�6�   �� 54   
   $��Times New Roman)�64   $
��Bold"�6Q   $��20��6c   $��201,97,261,0q�6o   $
 Wrap=�6�   $��72��6�   $��Center=�6�   $	��Top=�6�   ��6   �� $ Passwordtbx�6�   �� 55   
   $��Добавить��6   $��298,93,138,0q�6G   $��98��6]    J� RenderTransformOrigin$ 	0.907,0.7&�6h   $��Center=�6�   $	��Top=�6�   $��24��6�   ��6$   �� *Addusercommand+6�   �� 56   
   $��Удалить��6   $��10,92,423,0q�6w   $	��101��6�   $ 	0.907,0.7&�6�   $��Center=�6�   $	��Top=�6�   $��25��6�   ��6#   �� *Deleteusercommand+��6I   �� $
 Data��6�   �� 57   
   $��Обновить��6   $��10,48,423,0q�6G   $	��101��6\   $��Center=�6h   $	��Top=�6�   $��25��6�   ��6$   �� *RefreshCommand+6�   �� 58   
   $��Статистика��6   $��25��6N   $��126,48,295,0q�6Z   $	��113��6p   $��Center=�6|   $	��Top=�6�   ��6&   �� *ToStatistikaCommand+6�   �� 59   
   $��
Логин��6   #���   6    $��132,73,344,0q�6E   $��Center=�6[   $	��Top=�6x   $��58��6�   �� 5:   
   $��Пароль��6   #���   6!   $��201,73,269,0q�6F   $��Center=�6\   $	��Top=�6y   $��64��6�   5<      5=      