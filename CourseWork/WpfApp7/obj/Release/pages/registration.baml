   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels       WpfApp7.pages.registration   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  registration�� � DataContext .  (WpfApp7.ViewModels.RegistrationViewModel   � 	Resources    
labelcolor �� 
TargetType �� Property �� Value��%�   &	        �� " ��.���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 14(���  � ��$
 Bold"�.��� ���	#FFCDF0BF$	��319��$	��534��.+���  �� Orientation$ Vertical=�$��60,22,46,148q�$	��428��$	��149��.+��� $ 
Horizontal=�$��Right=�$	��428��.+��� $��Center=�#���   $	��144��$��14(�.��&$Логин пользователя:�� -   $��nametbx��$��Times New Roman)�$
��Bold"�$��Center=�$	��282��$��30��$��10q� �� 
AcceptsTab .  ����  �� Path$ UserName��� -   $��	Passwords��$��	-23,0,0,0q�.+��� $ 
Horizontal=�$��Right=�$	��353��.+��� #���   $��Center=�$��68��.��Пароль:�� -   $��
passwordbx��$��Times New Roman)�$
��Bold"�$	��280��$��30��$��10q�$��Center=����� $ Password��� $ 
Horizontal=�$��Right=�$	��432��.+��� #���   $��Center=�$	��145��.��&$Подтвердите пароль:G� -   	 G�Name$	 ConfirmPasswordBox��$	��279��$��30��$��10q�$��Center=��� $	��150��$��104,147,58,22q�$ 
Horizontal=�$	��372��.+��� -   $��BackBtn��
 �� IsCancel
 . $��
Войти��$��40,50q�$��75��$��50������ *ToAuthorizationCommand+�� -   $��RegisterBtn�� �� 	IsDefault . $.��(Создать новый аккаунт��$	��229��$��50��$
��0,50q����� *RegisterCommand+����  �� ElementName$ ConfirmPasswordBox���� -    ��Name$	 lab��$��14(�$��57��$
��Bold"�$��Times New Roman)�
���  ��$	��352��$��118,262,64,0q����� *	Message+�� -   $ lab_Copy��$��33��$��12(�$
��Bold"�$��Times New Roman)�
��� � �$��245,171,108,115q����� *
Message2+