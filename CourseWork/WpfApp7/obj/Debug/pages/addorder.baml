   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5          WpfApp7.pages.addorder   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  addorder��5
       � DataContext 5      *  $WpfApp7.ViewModels.AddOrderViewModel  5   
    � 	Resources 5         textboxcolor �� 
TargetType �� Property �� Value  
labelcolor  passwordboxcolor��%  &	        &	 {     &	 F    �� 5   
   " ��6%   .�5      ��  � ��
 �����6+   �� 5       � ��$ Times New Roman)�6+   5      �� 5   
   " ��6#   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 12(�6)   �� 5       � ��$
 Bold"�6+   5      �� 5   
   " G�6)   .�5      ��  � �� �	#FF437C296+   �� 5       � ��
 �����6+   �� 5       � ��$ Times New Roman)�6+   5      5      .��5      � ���	#FFCDF0BF.+�5    
   ��  �� Orientation$ Vertical=�6   $	��Top=�6-   .+�5!      ��  �� IsCancel . $	��194��6%   $��Заказы��61   ��6B   �� *ToOrdersCommand+�� 5"      $��
Выйти��6   $	��194��6&   ��63   �� *LogOutCommand+5$      �� 5%   
   $��Фамилия :��6   #���  6$   $��7,100,446,163q�6I   $��Center=�6`   �� 5&   
   $��Количество :��6   #���  6(   $��-5,125,440,138q�6M   $��Center=�6e   $��86��6�   �� 5'   
   $��Комментарии:��6   #���  6(   $��0,151,441,112q�6M   $��Center=�6d   $��80��6�   $��10(�6�   �� 5(   
   -   5         ��Name$ liist��5(      $��340,77,10,10q�6!   $��0��67   $��Center=�6�   $	��171��6�   $	��171��6�   ��6G   �� *Fuels+	 �� SelectedItem	 6f   �� *SelectedFuel+��5*      �� 5,      .R�5-      �� $��5q�6!   
�������.+�5.      �� $��16(�6$   $��Times New Roman)�62   $
��Bold"�6O   $��название : ��6a   �� 5/      $��15(�6$   $��Times New Roman)�62   $
��Bold"�6O   ��6a   �� 
 �� Path$

 Name�50      �� 51      $��16(�6$   $��Times New Roman)�62   $
��Bold"�6O   $��осталось : ��6a   �� 52      $��15(�6$   $��Times New Roman)�62   $
��Bold"�6O   ��6a   �� $

 Left� L53      �� 54      $��16(�6$   $��Times New Roman)�62   $
��Bold"�6O   $��цена : ��6a   �� 55      $��15(�6$   $��Times New Roman)�62   $
��Bold"�6O   ��6a   �� $

 Cost� $56      57      58      5:      �� 5<   
   $��77,100,186,0q�6   $��Center=�6+   $	��258��6H   .+�5>      �� -   5         ��Name$ UserNametbx��5>      $
��Bold"�6,   $��Times New Roman)�6>   ��6[   �� $
 UserName��� 5?      -   5        $ 	Amounttbx��5?      $
��Bold"�6)   $��Times New Roman)�6=   ��6[   �� $
 Amount��� 5@      -   5        $ Texttbx��5@      $
��Bold"�6(   $��Times New Roman)�6;   ��6Y   �� $

 Text��� 5A       �� 	IsDefault . $��Сделать заказ��6&   ��6>   �� *AddOrderCommand+��6b   ��  �� ElementName$	 lab���� 5B      -   5         ��Name$	 lab��5B      $��14(�6=   $
��Bold"�6K   $��Times New Roman)�6]   
���  ��$��86��6�   $��Right=�6�   $	��258��6�   ��6!   �� *	Message+6�   5D      �� 5E   
   $��Топливо :��6   $��394,60,66,203q�6$   $��Center=�6;   �� 5F   
   $A��;/Автозаправочная;component/Images/snimok.PNG��6   $��Center=�6F   $	��354��6c   $	��194��6p   $��511,69,-184,-136q�6|   $	��Top=�6�   5H      5I      