   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  '    !WpfApp7.pages.adminPageStatistika   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  adminPageStatistika�� � DataContext 1  +WpfApp7.ViewModels.AdminViewModelStatistika   � 	Resources    datagrid �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader �� Property �� Value��%�   &	        �� "  .���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 10(���  � ��$
 Bold"�.��� ���	#FFCDF0BF$��
0,0,0,-209q�$	��319��$	��534��.+���  �� Orientation$ Vertical=�$	��Top=�.+��� $��Заказы������ *ToOrdersCommand+�� $��24,50,274,160q�$��77��$	��223�����	#FFBFAAAA$��Center=�$	��Top=�.+��� $��Times New Roman)�$
��Bold"�$��18(�$3��-Статистика за все время :���� $��Times New Roman)�$
��Bold"�$5��/Сумма количество литров : ���� $��Times New Roman)�$
��Bold"�$��17(�����  �� Path$ Allcol� L�� $��Times New Roman)�$
��Bold"�$7��1Сумма всего потраченного : ���� $��Times New Roman)�$
��Bold"�$��17(����� $ 
Allfulcost� $�� $��
252,50,0,0q�$��77��$	��269�����	#FFBFAAAA$��Center=�$	��Top=�.+��� $��18(�$��Times New Roman)�$
��Bold"�$;��5Статистика за текущий месяц :���� $��Times New Roman)�$
��Bold"�$5��/Сумма количество литров : ���� $��Times New Roman)�$
��Bold"�$��17(����� $ Allcol2� L�� $��Times New Roman)�$
��Bold"�$7��1Сумма всего потраченного : ���� $��Times New Roman)�$
��Bold"�$��17(����� $ Allfulcost2� $�� $��306,134,0,0q�$	��215��$��60�����	#FF99B8B9$��Center=�$	��Top=�.+��� $��Times New Roman)�$��13(�$��Oblique$�$=��7Статистика за выбранную дату :���� $��Times New Roman)�$��Oblique$�$5��/Сумма количество литров : ���� -    ��Name$ Allcol��$��Times New Roman)�$��17(� L�� $��Times New Roman)�$��Oblique$�$7��1Сумма всего потраченного : ���� -   $ 
Allfulcost��$��Times New Roman)�$��17(� $&   System.Windows.Controls.Calendar  -   	  Name$	 	calendar1��$	��351��$��24,134,220,0q�$	��277��
   SelectionMode$
 MultipleRange=�$��Center=�$	��Top=�&   System.Windows.Controls.DataGrid  -   $
��Data��   
IsReadOnly .    CanUserAddRows .  ���	#FF99B8B9$��Times New Roman)�   AutoGenerateColumns .  $��
0,232,10,0q�$
��auto��$
��auto��$y�	Collapsed=�$��Right=�$	��Top=�����    Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    HeaderStyle# [     Header$ Количество��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� $ Amount�   .  # [  $% Названия топливо��$	 130  �� $ 	Fuel.Name�   .  # [  $ Цена��$ 60  �� $ 	Fuel.Cost�   . # [  $ Полная цена��$	 100  �� $ FullCost�   .  # [  $ Статус��$	 100  �� $ Status�   .  # [  $ Фамилия��$ 80  �� $
 Name�