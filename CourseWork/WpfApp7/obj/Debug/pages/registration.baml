   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5           WpfApp7.pages.registration   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  registration��5
       � DataContext 5      .  (WpfApp7.ViewModels.RegistrationViewModel  5   
    � 	Resources 5         
labelcolor �� 
TargetType �� Property �� Value��%�   &	        �� 5   
   " ��6#   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 14(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ���	#FFCDF0BF$	��319��6"   $	��534��62   .+�5   
   ��  �� Orientation$ Vertical=�6   $��60,22,46,148q�6,   $	��428��5      $	��149��6!   .+�5      �� $ 
Horizontal=�6   $��Right=�62   $	��428��6N   .+�5      �� $��Center=�6   #���   63   $	��144��6X   $��14(�6d   .��6r   &$Логин пользователя:6�   �� 5      -   5        $��nametbx��5      $��Times New Roman)�6J   $
��Bold"�6g   $��Center=�6y   $	��282��6�   $��30��6�   $��10q�5       �� 
AcceptsTab .  ��5   *   ��  �� Path$ UserName�5   &   5      �� 5      -   5        $��	Passwords��5      $��	-23,0,0,0q�6*   .+�5      �� $ 
Horizontal=�6   $��Right=�66   $	��353��6R   .+�5       �� #���   6   $��Center=�6B   $��68��6]   .��6h   Пароль:6q   �� 5!      -   5        $��
passwordbx��5!      $��Times New Roman)�6P   $
��Bold"�6m   $	��280��6   $��30��6�   $��10q�6�   $��Center=�6�   ��60   �� $ Password�6�   5"      �� 5#      $ 
Horizontal=�6   $��Right=�66   $	��432��6R   .+�5$      �� #���   6   $��Center=�6B   $	��145��6]   .��6i   &$Подтвердите пароль:6~   G� 5%      -   5        	 G�Name$	 ConfirmPasswordBox��5%   #   $	��279��6?   $��30��6K   $��10q�6W   $��Center=�6c   5&      5'      5(      �� 5)   
   $	��150��6   $��104,147,58,22q�6"   $ 
Horizontal=�5*      $	��372��6.   .+�5+      �� -   5        $��BackBtn��5+   &   
 �� IsCancel
 . $��
Войти��6`   $��40,50q�6p   $��75��6   $��50��6�   ��65   �� *ToAuthorizationCommand+6�   �� 5,      -   5        $��RegisterBtn��5,   &    �� 	IsDefault . $.��(Создать новый аккаунт��6�   $	��229��6�   $��50��6�   $
��0,50q�6�   ��69   �� *RegisterCommand+��6]   ��  �� ElementName$ ConfirmPasswordBox��6�   5-      �� 5.   
   -   5         ��Name$	 lab��5.      $��14(�69   $��57��6G   $
��Bold"�6S   $��Times New Roman)�6e   
���  ��$	��352��6�   $��118,262,64,0q�6�   ��6   �� *	Message+6�   �� 5/   
   -   5        $ lab_Copy��5/      $��33��6?   $��12(�6K   $
��Bold"�6Y   $��Times New Roman)�6k   
��� � �$��245,171,108,115q�6�   ��6"   �� *
Message2+6�   50      51      