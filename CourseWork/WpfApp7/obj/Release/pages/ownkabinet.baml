   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels      WpfApp7.pages.ownkabinet   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  
ownkabinet�� � DataContext ,  &WpfApp7.ViewModels.ownkabinetViewModel   � 	Resources    
labelcolor �� 
TargetType �� Property �� Value��%�   &	        �� " ��.���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 14(���  � ��$
 Bold"�.��� ���	#FFCDF0BF$	��319��$	��534��.+��� -    ��Name$	 lab��$��14(�$��46��$
��Bold"�$��Times New Roman)�
���  ��$	��352��$��118,273,64,0q����� *	Message+��  �� Orientation$ Vertical=�$	��Top=�.+���  �� IsCancel . $	��194��$��Заказы������ *ToOrdersCommand+�� $��
Выйти��$	��194������ *ToAuthorizationCommand+�� $	��150��$��118,169,44,0q�$ 
Horizontal=�$	��372��.+��� -   	 ��Name$	 RegisterBtn��
 �� 	IsDefault
 . $!��Сменить пароль��$	��358��$��50��$
��0,50q����� *ChangeParolCommand+����  �� ElementName$ ConfirmPasswordBox���� $ Vertical=�$��62,50,44,120q�$	��428��$	��149��.+��� $ 
Horizontal=�$��Right=�$	��404��.+��� $��Center=�#���   $	��125��$��14(�$��Right=�$ ��Старый пароль:���� -    ��Name$ nametbx��$��Times New Roman)�$
��Bold"�$��Center=�$	��282��$��30��$��10q� �� 
AcceptsTab .  ���� *PastPassword+�� -    ��Name$ 	Passwords��$��	-23,0,0,0q�.+��� $ 
Horizontal=�$��Right=�$	��353��.+��� #���   $��Center=�$��75��$��Пароль:���� -   $ 
passwordbx��$��Times New Roman)�$
��Bold"�$	��280��$��30��$��10q�$��Center=����� *
Password+�� $ 
Horizontal=�$��Right=�$	��425��.+��� #���   $��Center=�$	��149��$*��$Подтвердите пароль:��G� -    G�Name$ ConfirmPasswordBox��$	��279��$��30��$��10q�$��Center=��� -   $ lab_Copy��$��92��$��27��$��12(�$
��Bold"�$��Times New Roman)�
��� � �$��268,199,174,93q����� *
Message2+