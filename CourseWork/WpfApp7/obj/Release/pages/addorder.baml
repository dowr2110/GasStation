   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels      WpfApp7.pages.addorder   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  addorder�� � DataContext *  $WpfApp7.ViewModels.AddOrderViewModel   � 	Resources    textboxcolor �� 
TargetType �� Property �� Value  
labelcolor  passwordboxcolor��%H  &	        &	 H     &	 �     �� " ��.���  � ��
 �������  � ��$ Times New Roman)��� " ��.���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 12(���  � ��$
 Bold"��� " G�.���  � �� �	#FF437C29��  � ��
 �������  � ��$ Times New Roman)�.��� ���	#FFCDF0BF.+���  �� Orientation$ Vertical=�$	��Top=�.+���  �� IsCancel . $	��194��$��Заказы������ *ToOrdersCommand+�� $��
Выйти��$	��194������ *LogOutCommand+�� $��Фамилия :��#���  $��7,100,446,163q�$��Center=��� $��Количество :��#���  $��-5,125,440,138q�$��Center=�$��86���� $��Комментарии:��#���  $��0,151,441,112q�$��Center=�$��80��$��10(��� -    ��Name$ liist��$��340,77,10,10q�$��0��$��Center=�$	��171��$	��171������ *Fuels+	 �� SelectedItem	 �� *SelectedFuel+���� .R��� $��5q�
�������.+��� $��16(�$��Times New Roman)�$
��Bold"�$��название : ���� $��15(�$��Times New Roman)�$
��Bold"����� 
 �� Path$

 Name��� $��16(�$��Times New Roman)�$
��Bold"�$��осталось : ���� $��15(�$��Times New Roman)�$
��Bold"����� $

 Left� L�� $��16(�$��Times New Roman)�$
��Bold"�$��цена : ���� $��15(�$��Times New Roman)�$
��Bold"����� $

 Cost� $�� $��77,100,186,0q�$��Center=�$	��258��.+��� -    ��Name$ UserNametbx��$
��Bold"�$��Times New Roman)����� $
 UserName��� -   $ 	Amounttbx��$
��Bold"�$��Times New Roman)����� $
 Amount��� -   $ Texttbx��$
��Bold"�$��Times New Roman)����� $

 Text���  �� 	IsDefault . $��Сделать заказ������ *AddOrderCommand+����  �� ElementName$	 lab���� -    ��Name$	 lab��$��14(�$
��Bold"�$��Times New Roman)�
���  ��$��86��$��Right=�$	��258������ *	Message+�� $��Топливо :��$��394,60,66,203q�$��Center=��� $A��;/Автозаправочная;component/Images/snimok.PNG��$��Center=�$	��354��$	��194��$��511,69,-184,-136q�$	��Top=�