   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5          WpfApp7.pages.login   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  login��5       � DataContext 5      /  )WpfApp7.ViewModels.AuthorizationViewModel  5   
    � 	Resources 5         
labelcolor �� 
TargetType �� Property �� Value��%�   &	        �� 5   
   " ��6#   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 14(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ���	#FFCDF0BF$	��319��6#   $	��534��63   .+�5   
   ��  �� Orientation$ Vertical=�6   $��41,48,47,157q�6,   $	��446��6B   $	��114��6N   .+�5      �� $ 
Horizontal=�6   $��Right=�62   .+�5      �� #���   6   $��Center=�6=   $��57��6X   $��14(�6c   .��6q   Логин :6z   �� 5      -   5         ��Name$ nametbx��5      $��Times New Roman)�6,   $
��Bold"�6I   $��Center=�6}   $	��300��6�   $��30��6�   $��10q�6�    �� 
AcceptsTab .  ��6]   �� 	 �� Path$	 UserName�6�   5      �� 5       $ 
Horizontal=�6   $��Right=�62   .+�5!      �� #���   6   $��Center=�6=   .��6X   Пароль:6a   G� 5"      -   5        
 G�Name$
 PasswordBox��5"      $	��300��64   $��30��6@   $��10q�6L   $��Center=�6X   5#      5$      �� 5%   
    �� 	IsDefault . $��
Войти��6#   $��36��63   $��160,182,141,101q�6�   $	��233��6�   ��6B   �� *LoginCommand+��6c   ��  �� ElementName$ PasswordBox��6�   �� 5&   
   $��Регистрация��6   $��36��6'   $��160,240,141,43q�6[   $	��233��6s   $��36��6   ��66   �� *RegisterCommand+6   �� 5'   
   -   5         ��Name$	 lab��5'      $��14(�69   $��46��6G   $	��336��6S   $
��Bold"�6_   $��Times New Roman)�6q   
���  ��$��112,273,86,0q�6�   ��6   �� *	Message+6�   5)      5*      