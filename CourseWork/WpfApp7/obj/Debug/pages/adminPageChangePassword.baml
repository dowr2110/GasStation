   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5      +    %WpfApp7.pages.adminPageChangePassword   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  adminPageChangePassword��5
       � DataContext 5      5  /WpfApp7.ViewModels.AdminViewModelChangePassword  5   
    � 	Resources 5         
labelcolor �� 
TargetType �� Property �� Value��%�   &	        �� 5   
   " ��6#   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 14(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ���	#FFCDF0BF$	��319��6"   $	��534��62   .+�5   
   ��  �� Orientation$ Vertical=�6   $	��Top=�6-   .+�5      �� $��Заказы��6   ��6'   �� *ToOrdersCommand+5      �� 5   
   $ Vertical=�6   $��62,50,44,120q�6,   $	��428��5      $	��149��6!   .+�5      �� $ 
Horizontal=�6   $��Right=�62   $	��404��6N   .+�5      �� $��Center=�6   #���   63   $	��125��6X   $��14(�6d   $��Right=�6r   .��6�   Старый пароль:6�   �� 5      -   5        $��nametbx��5      $��Times New Roman)�6N   $
��Bold"�6k   $��Center=�6}   $	��282��6�   $��30��6�   $��10q�5        �� 
AcceptsTab .  ��5   *   ��  �� Path$ PastPassword�5    &   5!      �� 5"      -   5        $��	Passwords��5"      $��	-23,0,0,0q�6*   .+�5#      �� $ 
Horizontal=�6   $��Right=�66   $	��353��6R   .+�5$      �� #���   6   $��Center=�6A   $��75��6\   .��6g   Пароль:6p   �� 5%      -   5        $��
passwordbx��5%      $��Times New Roman)�6P   $
��Bold"�6m   $	��280��6   $��30��6�   $��10q�6�   $��Center=�6�   ��60   �� $ Password�6�   5&      �� 5'      $ 
Horizontal=�6   $��Right=�66   $	��425��6R   .+�5(      �� #���   6   $��Center=�6B   $	��149��6]   .��6i   &$Подтвердите пароль:6~   G� 5)      -   5        	 G�Name$	 ConfirmPasswordBox��5)   #   $	��279��6?   $��30��6K   $��10q�6W   $��Center=�6c   5*      5+      5,      �� 5-   
   $	��150��6   $��118,169,44,0q�6"   $ 
Horizontal=�5.      $	��372��6.   .+�5/      �� -   5        
 ��Name$
 RegisterBtn��5/      $!��Сменить пароль��6�   $	��358��6�   $��50��6�   $
��0,50q�6�   ��6+   �� *ChangeParolCommand+��6R   ��  �� ElementName$ ConfirmPasswordBox��6�   50      51      52      