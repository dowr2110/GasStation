   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5          WpfApp7.pages.home   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$
  home��5
       � DataContext 5      &   WpfApp7.ViewModels.HomeViewModel  5   
   .��5      � ���	#FFCDF0BF.+�5   
   ��  �� Orientation$ Vertical=�6   $
��Left=�6,   $	��194��6G   .+�5      �� $��Обновить��6   ��6(   �� *RefreshCommand+�� 5      $!��Добавить заказ��6   ��6.   �� *AddOrderCommand+�� 5      $��Смена пароля��6   ��6,   �� *OwnkabinetCommand+�� 5      $��Статистика��6   ��6*   �� *StatistikaCommand+�� 5      -   5         ��Name$	 opp��5      $��
Выход��6"   ��62   �� *LogOutCommand+5      �� 5   
   -   5         ��Name$ liist��5      $��199,0,152,0q�6!   $��0��66   ��6F   �� *Orders+��5      �� 5      .R�5      �� $��5q�6!   $	��280��6,   ���	#FFBFAAAA$
��Left=�6R   $	��120��6m   $	��800��6}   .+�5      �� $��Times New Roman)�6$   $
��Bold"�6A   $*��$Количество литров : ��6S   �� 5      $��Times New Roman)�6$   $
��Bold"�6A   $��18(�6S   ��6a   ��  �� Path$ Amount� L5      �� 5      $��Times New Roman)�6$   $
��Bold"�6A   $(��"Название топливо : ��6S   �� 5      $��Times New Roman)�6$   $
��Bold"�6A   $��18(�6S   ��6a   �� $ 	Fuel.Name�5       �� 5!      $��Times New Roman)�6$   $
��Bold"�6A   $��Цена за литр: ��6S   �� 5"      $��Times New Roman)�6$   $
��Bold"�6A   ��6S   �� $ 	Fuel.Cost� $5#      �� 5$      $��Times New Roman)�6$   $
��Bold"�6A   $ ��Сумма заказа : ��6S   �� 5%      $��Times New Roman)�6$   $
��Bold"�6A   ��6S   �� $ FullCost� $5&      �� 5'      $��Times New Roman)�6$   $
��Bold"�6A   $��Статус : ��6S   �� 5(      $��Times New Roman)�6$   $
��Bold"�6A   $��18(�6S   
���������6x   �� $ Status�5)      �� 5*      $��Times New Roman)�6$   $
��Bold"�6A   $0��*Фамилия пользователя : ��6S   �� 5+      $��Times New Roman)�6$   $
��Bold"�6A   ��6S   �� $
 Name�5,      �� 5-      $��Times New Roman)�6$   $
��Bold"�6A   $ ��Время заказа : ��6S   �� 5.      $��Times New Roman)�6$   $
��Bold"�6A   ��6S   �� $
 When�5/      51      53      55      �� 56   
   $B��</Автозаправочная;component/Images/snimok2.PNG��6   $
��Left=�6G   $	��354��6b   $	��Top=�6o   $	��194��6�   $��0,268,0,-335q�6�   �� 57   
   -   5        $ opoveshh��57   (   $y�	Collapsed=�6   $��Я в курсе!��6l   $��12(�6�   $��25��6�   $��	0,12,10,0q�6�   $	��137��6�   $��Right=�6�   $	��Top=�6�   ��6:   ��  �� ElementName$ opoveshh����6�   �� *OpoveshCommand+6�   �� 58   
   -   5         ��Name$	 lab��58      $��14(�69   $
��Bold"�6G   $��Times New Roman)�6Y   
��� � �$��86��6�   $	��137��6�   $��	0,37,10,0q�6�   $��Right=�6�   $	��Top=�6�   ��6   �� *	Message+6�   5:      5;      