   M S B A M L   `   `   `  ���� Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels      WpfApp7.pages.login   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:WpfApp7.pages     /vm clr-namespace:WpfApp7.ViewModels       N� Title$  login�� � DataContext /  )WpfApp7.ViewModels.AuthorizationViewModel   � 	Resources    
labelcolor �� 
TargetType �� Property �� Value��%�   &	        �� " ��.���  � �� �	#FF9E9E9E��  � ��$ Times New Roman)���  � ��$ 14(���  � ��$
 Bold"�.��� ���	#FFCDF0BF$	��319��$	��534��.+���  �� Orientation$ Vertical=�$��41,48,47,157q�$	��446��$	��114��.+��� $ 
Horizontal=�$��Right=�.+��� #���   $��Center=�$��57��$��14(�.��Логин :�� -    ��Name$ nametbx��$��Times New Roman)�$
��Bold"�$��Center=�$	��300��$��30��$��10q� �� 
AcceptsTab .  ���� 	 �� Path$	 UserName��� $ 
Horizontal=�$��Right=�.+��� #���   $��Center=�.��Пароль:G� -   
 G�Name$
 PasswordBox��$	��300��$��30��$��10q�$��Center=���  �� 	IsDefault . $��
Войти��$��36��$��160,182,141,101q�$	��233������ *LoginCommand+����  �� ElementName$ PasswordBox���� $��Регистрация��$��36��$��160,240,141,43q�$	��233��$��36������ *RegisterCommand+�� -    ��Name$	 lab��$��14(�$��46��$	��336��$
��Bold"�$��Times New Roman)�
���  ��$��112,273,86,0q����� *	Message+