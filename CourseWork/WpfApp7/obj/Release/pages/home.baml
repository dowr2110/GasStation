   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels      WpfApp7.pages.home   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$
  home�� � DataContext &   WpfApp7.ViewModels.HomeViewModel  .��� ���	#FFCDF0BF.+���  �� Orientation$ Vertical=�$
��Left=�$	��194��.+��� $��Обновить������ *RefreshCommand+�� $!��Добавить заказ������ *AddOrderCommand+�� $��Смена пароля������ *OwnkabinetCommand+�� $��Статистика������ *StatistikaCommand+�� -    ��Name$	 opp��$��
Выход������ *LogOutCommand+�� -    ��Name$ liist��$��199,0,152,0q�$��0������ *Orders+���� .R��� $��5q�$	��280�����	#FFBFAAAA$
��Left=�$	��120��$	��800��.+��� $��Times New Roman)�$
��Bold"�$*��$Количество литров : ���� $��Times New Roman)�$
��Bold"�$��18(�����  �� Path$ Amount� L�� $��Times New Roman)�$
��Bold"�$(��"Название топливо : ���� $��Times New Roman)�$
��Bold"�$��18(����� $ 	Fuel.Name��� $��Times New Roman)�$
��Bold"�$��Цена за литр: ���� $��Times New Roman)�$
��Bold"����� $ 	Fuel.Cost� $�� $��Times New Roman)�$
��Bold"�$ ��Сумма заказа : ���� $��Times New Roman)�$
��Bold"����� $ FullCost� $�� $��Times New Roman)�$
��Bold"�$��Статус : ���� $��Times New Roman)�$
��Bold"�$��18(�
����������� $ Status��� $��Times New Roman)�$
��Bold"�$0��*Фамилия пользователя : ���� $��Times New Roman)�$
��Bold"����� $
 Name��� $��Times New Roman)�$
��Bold"�$ ��Время заказа : ���� $��Times New Roman)�$
��Bold"����� $
 When��� $B��</Автозаправочная;component/Images/snimok2.PNG��$
��Left=�$	��354��$	��Top=�$	��194��$��0,268,0,-335q��� -   $ opoveshh��$y�	Collapsed=�$��Я в курсе!��$��12(�$��25��$��	0,12,10,0q�$	��137��$��Right=�$	��Top=�����  �� ElementName$ opoveshh������ *OpoveshCommand+�� -    ��Name$	 lab��$��14(�$
��Bold"�$��Times New Roman)�
��� � �$��86��$	��137��$��	0,37,10,0q�$��Right=�$	��Top=����� *	Message+