   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels      WpfApp7.pages.adminPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  	adminPage�� � DataContext '  !WpfApp7.ViewModels.AdminViewModel   � 	Resources    
labelcolor �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader �� Property �� Value��%�   &	        �� "  .���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$	 8.5(���  � ��$
 Bold"�.��� ���	#FFCDF0BF$	��319��$	��534��.+�&   System.Windows.Controls.DataGrid  -   $
��Data��$	��514��$
��auto��   CanUserAddRows .  ���	#FFBFAAAA$��Times New Roman)�   AutoGenerateColumns .  $��10,122,10,10q�$��Center=�$	��Top=����� *Orders+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn	   
IsReadOnly	 . 
   HeaderStyle#
 [     FontSize$ 12Q�   Header$ Id��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 35 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	OrderId+  	 . #
 [  $ Фамилия��$ 79  �� *Name+  	 . #
 [  $ 11Q�$ 
Время��$	 128  �� *When+  	 . #
 [  $ 12Q�$ UserId��$ 40  �� *UserId+  	 . #
 [  $ 12Q�$ FuelId��$ 40  �� *FuelId+  	 . #
 [  $ 12Q�$ Статус��$ 90  �� *Status+4  .System.Windows.Controls.DataGridCheckBoxColumn  $  ��#
 [  $ 40  �� *	Status2+  	 . #
 [  $ 12Q�$ Количество��$ 60  �� *Amount+  	 . #
 [  $ 12Q�$ Полная цена��$ 70  �� *
FullCost+�� $��Сохранить��$��25��$��401,92,31,0q�$	��102��$��Center=�$	��Top=����� *Updatecommand+�� $��
Поиск��$��25��$��428,10,31,0q�$��75��$��Center=�$	��Top=����� *SearchCommand+����  �� ElementName$ Combo���� $��
Юзеры��$��25��$��348,48,111,0q�$��75��$��Center=�$	��Top=�$��10(����� *ToUsersCommand+�� $��Топлива��$��25��$��428,48,31,0q�$��75��$��Center=�$	��Top=�$��10(����� *ToFuelsCommand+�� $��Times NEw Roman)�$
��Bold"�$��25��$��327,10,111,0q� �� TextWrapping$
 Wrap=�$��96��$��Center=�$	��Top=�����  �� Path$ 	Searchtbx��� $��
Выйти��$��25��$��10,10,423,0q�$	��101��$��Center=�$	��Top=����� *ToAuthorizationCommand+�� -    ��Name$ Combo��$��214,10,212,0q����	#FF9E9E9E$	��108��$��25��$��Center=�$	��Top=�.@��� $��Id���� $��Имя���� $ ��IdПользователя���� $��IdТоплива���� $��Статус���� $��Полная Цена���� $��Обновить��$��25��$��10,48,423,0q�$	��101��$��Center=�$	��Top=����� *RefreshCommand+�� $��Статистика��$��25��$��126,48,295,0q�$	��113��$��Center=�$	��Top=����� *ToStatistikaCommand+�� $��Смена пароля��$��9(�$��25��$��116,10,325,0q�$��93��$��Center=�$	��Top=����� *ChangePasswordCommand+�� $��Удалить��$��10,92,423,0q�$	��101�� J� RenderTransformOrigin$ 	0.907,0.7&�$��Center=�$	��Top=�$��25������ *Deleteordercommand+���� $
 Data��