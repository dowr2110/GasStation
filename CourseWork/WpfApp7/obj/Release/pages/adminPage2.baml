   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels      WpfApp7.pages.adminPage2   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  
adminPage2�� N� 
Background
 ����� � DataContext (  "WpfApp7.ViewModels.AdminViewModel2   � 	Resources    
labelcolor �� 
TargetType �� Property �� Value  datagrid=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 |     �� " ��.���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 14(���  � ��$
 Bold"��� "  .���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 10(���  � ��$
 Bold"�.��� ���	#FFCDF0BF$	��534��$	��319��.+�&   System.Windows.Controls.DataGrid  -   $
��Data��$	��514��$
��auto��   CanUserAddRows .  ���	#FFBFAAAA$��Times New Roman)�   AutoGenerateColumns .  $��10,122,10,10q�$��Center=�$	��Top=����� *Fuels+	   Columns	 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn
   
IsReadOnly
 .    HeaderStyle# [    Header$ Id��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *FuelId+  
 .  # [ $ Название��$	 140  �� *Name+  
 .  # [ $ Цена��$	 100  �� *Cost+  
 .  # [ $ Осталось��$	 125  �� *Left+�� $��Сохранить��$��401,92,31,0q�$	��102��$��Center=�$	��Top=�$��25������ *Updatecommand+�� $��Times New Roman)�$
��Bold"�$��20��$��49,97,413,0q� �� TextWrapping$
 Wrap=�$��72��$��Center=�$	��Top=�����  �� Path$ Nametbx��� $��Times New Roman)�$
��Bold"�$��20��$��126,97,336,0q�$
 Wrap=�$��72��$��Center=�$	��Top=����� $ Costtbx��� $��Times New Roman)�$
��Bold"�$��20��$��204,97,258,0q�$
 Wrap=�$��72��$��Center=�$	��Top=����� $ Lefttbx��� $��Добавить��$��298,93,138,0q�$��98�� J� RenderTransformOrigin$ 	0.907,0.7&�$��Center=�$	��Top=�$��25������ *Addfuelcommand+�� $��
Поиск��$��428,10,31,0q�$��75��$��Center=�$	��Top=�$��25������ *Searchfuelcommand+����  �� ElementName$ Combo���� $��
Юзеры��$��348,48,111,0q�$��75��$��Center=�$	��Top=�$��25��$��10(����� *ToUsersCommand+���� $
 fram���� $��Заказы��$��428,48,31,0q�$��75��$��Center=�$	��Top=�$��25��$��10(����� *ToOrderscommand+���� $
 fram���� $��Смена пароля��$��9(�$��25��$��116,10,325,0q�$��93��$��Center=�$	��Top=����� *ChangePasswordCommand+�� $��Times New Roman)�$
��Bold"�$��25��$��327,10,111,0q�$
 Wrap=�$��96��$��Center=�$	��Top=����� $ 	Searchtbx��� -    ��Name$ Combo��$��214,10,212,0q����	#FF9E9E9E$	��108��$��25��$��Center=�$	��Top=�.@��� $��Id���� $��Имя���� $��Цена���� $��Остаток���� $��
Выйти��$��25��$��10,10,423,0q�$	��101��$��Center=�$	��Top=����� *ToAuthorizationCommand+�� $��Удалить��$��10,48,423,0q�$	��101��$ 
0.515,0.56&�$��Center=�$	��Top=�$��25������ *Deletefuelcommand+���� $
 Data���� $��Статистика��$��25��$��126,48,295,0q�$	��113��$��Center=�$	��Top=����� *ToStatistikaCommand+�� $��Имя��#���   $��65,73,425,0q�$��Center=�$	��Top=�$��44���� $��Цена��#���   $��138,73,349,0q�$��Center=�$	��Top=�$��47���� $��Остаток��#���   $��200,73,270,0q�$��Center=�$	��Top=�$��64���� $��Заполнить��$��244,48,191,0q�$��99��$ 	0.907,0.7&�$��Center=�$	��Top=�$��25��$
��13.5(����� *Zapolnitfuelcommand+