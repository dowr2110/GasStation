   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels      WpfApp7.pages.adminPage3   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  
adminPage2�� N� 
Background
 ����� � DataContext (  "WpfApp7.ViewModels.AdminViewModel3   � 	Resources    
labelcolor �� 
TargetType �� Property �� Value  datagrid=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 |     �� " ��.���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 14(���  � ��$
 Bold"��� "  .���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 10(���  � ��$
 Bold"�.��� ���	#FFCDF0BF$	��534��$	��319��.+�&   System.Windows.Controls.DataGrid  -   $
��Data��$	��514��$
��auto��   CanUserAddRows .  ���	#FFBFAAAA$��Times New Roman)�   AutoGenerateColumns .  $��10,122,10,10q�$��Center=�$	��Top=����� *Users+	   Columns	 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn
   HeaderStyle#
 [    
IsReadOnly .    Header$ Id��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Id+  #
 [  . $ 
Логин��$	 270  �� *Name+�� $��Сохранить��$��401,92,31,0q�$	��102��$��Center=�$	��Top=�$��25������ *Updatecommand+�� $��
Поиск��$��428,10,31,0q�$��75��$��Center=�$	��Top=�$��25������ *Searchfuelcommand+����  �� ElementName$ Combo���� $��Заказы��$��348,48,111,0q�$��75��$��Center=�$	��Top=�$��25��$��10(����� *ToOrderscommand+���� $
 fram���� $��Топлива��$��428,48,31,0q�$��75��$��Center=�$	��Top=�$��25��$��10(����� *ToFuelsCommand+���� $
 fram���� $��Смена пароля��$��9(�$��25��$��116,10,325,0q�$��93��$��Center=�$	��Top=����� *ChangePasswordCommand+�� $��Times New Roman)�$
��Bold"�$��25��$��327,10,111,0q� �� TextWrapping$
 Wrap=�$��96��$��Center=�$	��Top=�����  �� Path$ 	Searchtbx��� -    ��Name$ Combo��$��214,10,212,0q����	#FF9E9E9E$	��108��$��25��$��Center=�$	��Top=�.@��� $��Id���� $��
Логин���� $��Пароль���� $��
Выйти��$��10,10,423,0q�$	��101��$��Center=�$	��Top=�$��25������ *ToAuthorizationCommand+�� $��Times New Roman)�$
��Bold"�$��20��$��123,97,339,0q�$
 Wrap=�$��72��$��Center=�$	��Top=����� $ Nametbx��� $��Times New Roman)�$
��Bold"�$��20��$��201,97,261,0q�$
 Wrap=�$��72��$��Center=�$	��Top=����� $ Passwordtbx��� $��Добавить��$��298,93,138,0q�$��98�� J� RenderTransformOrigin$ 	0.907,0.7&�$��Center=�$	��Top=�$��24������ *Addusercommand+�� $��Удалить��$��10,92,423,0q�$	��101��$ 	0.907,0.7&�$��Center=�$	��Top=�$��25������ *Deleteusercommand+���� $
 Data���� $��Обновить��$��10,48,423,0q�$	��101��$��Center=�$	��Top=�$��25������ *RefreshCommand+�� $��Статистика��$��25��$��126,48,295,0q�$	��113��$��Center=�$	��Top=����� *ToStatistikaCommand+�� $��
Логин��#���   $��132,73,344,0q�$��Center=�$	��Top=�$��58���� $��Пароль��#���   $��201,73,269,0q�$��Center=�$	��Top=�$��64��