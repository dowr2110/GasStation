   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  +    %WpfApp7.pages.adminPageChangePassword   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  adminPageChangePassword�� � DataContext 5  /WpfApp7.ViewModels.AdminViewModelChangePassword   � 	Resources    
labelcolor �� 
TargetType �� Property �� Value��%�   &	        �� " ��.���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 14(���  � ��$
 Bold"�.��� ���	#FFCDF0BF$	��319��$	��534��.+���  �� Orientation$ Vertical=�$	��Top=�.+��� $��Заказы������ *ToOrdersCommand+�� $ Vertical=�$��62,50,44,120q�$	��428��$	��149��.+��� $ 
Horizontal=�$��Right=�$	��404��.+��� $��Center=�#���   $	��125��$��14(�$��Right=�.��Старый пароль:�� -   $��nametbx��$��Times New Roman)�$
��Bold"�$��Center=�$	��282��$��30��$��10q� �� 
AcceptsTab .  ����  �� Path$ PastPassword��� -   $��	Passwords��$��	-23,0,0,0q�.+��� $ 
Horizontal=�$��Right=�$	��353��.+��� #���   $��Center=�$��75��.��Пароль:�� -   $��
passwordbx��$��Times New Roman)�$
��Bold"�$	��280��$��30��$��10q�$��Center=����� $ Password��� $ 
Horizontal=�$��Right=�$	��425��.+��� #���   $��Center=�$	��149��.��&$Подтвердите пароль:G� -   	 G�Name$	 ConfirmPasswordBox��$	��279��$��30��$��10q�$��Center=��� $	��150��$��118,169,44,0q�$ 
Horizontal=�$	��372��.+��� -   
 ��Name$
 RegisterBtn��$!��Сменить пароль��$	��358��$��50��$
��0,50q����� *ChangeParolCommand+����  �� ElementName$ ConfirmPasswordBox��