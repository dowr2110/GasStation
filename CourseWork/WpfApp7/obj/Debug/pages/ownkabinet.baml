   M S B A M L   `   `   `  ����Y  UАвтозаправочная, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp7.pagesWpfApp7.pages  5      7 clr-namespace:WpfApp7.ViewModelsWpfApp7.ViewModels  5          WpfApp7.pages.ownkabinet   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp7.pages     5      /vm clr-namespace:WpfApp7.ViewModels     5        N� Title$  
ownkabinet��5
       � DataContext 5      ,  &WpfApp7.ViewModels.ownkabinetViewModel  5   
    � 	Resources 5         
labelcolor �� 
TargetType �� Property �� Value��%�   &	        �� 5   
   " ��6#   .�5      ��  � �� �	#FF9E9E9E6+   �� 5       � ��$ Times New Roman)�6+   �� 5       � ��$ 14(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ���	#FFCDF0BF$	��319��6"   $	��534��62   .+�5   
   �� -   5         ��Name$	 lab��5      $��14(�69   $��46��6G   $
��Bold"�6S   $��Times New Roman)�6e   
���  ��$	��352��6�   $��118,273,64,0q�6�   ��6   �� *	Message+6�   �� 5   
    �� Orientation$ Vertical=�6   $	��Top=�6-   .+�5      ��  �� IsCancel . $	��194��6%   $��Заказы��61   ��6B   �� *ToOrdersCommand+�� 5      $��
Выйти��6   $	��194��6&   ��62   �� *ToAuthorizationCommand+5      �� 5   
   $	��150��6   $��118,169,44,0q�6"   $ 
Horizontal=�5      $	��372��6.   .+�5      �� -   5        	 ��Name$	 RegisterBtn��5   &   
 �� 	IsDefault
 . $!��Сменить пароль��6�   $	��358��6�   $��50��6�   $
��0,50q�6�   ��6;   �� *ChangeParolCommand+��6b   ��  �� ElementName$ ConfirmPasswordBox��6�   5       �� 5!   
   $ Vertical=�6   $��62,50,44,120q�6,   $	��428��5"      $	��149��6!   .+�5#      �� $ 
Horizontal=�6   $��Right=�62   $	��404��6N   .+�5$      �� $��Center=�6   #���   63   $	��125��6X   $��14(�6d   $��Right=�6r   $ ��Старый пароль:��6�   �� 5%      -   5         ��Name$ nametbx��5%      $��Times New Roman)�6K   $
��Bold"�6h   $��Center=�6z   $	��282��6�   $��30��6�   $��10q�5&       �� 
AcceptsTab .  ��5%   ,   �� *PastPassword+5&   &   5'      �� 5(      -   5         ��Name$ 	Passwords��5(      $��	-23,0,0,0q�6,   .+�5)      �� $ 
Horizontal=�6   $��Right=�66   $	��353��6R   .+�5*      �� #���   6   $��Center=�6A   $��75��6\   $��Пароль:��6g   �� 5+      -   5        $ 
passwordbx��5+      $��Times New Roman)�6M   $
��Bold"�6j   $	��280��6|   $��30��6�   $��10q�6�   $��Center=�6�   ��62   �� *
Password+6�   5,      �� 5-      $ 
Horizontal=�6   $��Right=�66   $	��425��6R   .+�5.      �� #���   6   $��Center=�6B   $	��149��6]   $*��$Подтвердите пароль:��6i   G� 5/      -   5         G�Name$ ConfirmPasswordBox��5/   #   $	��279��6?   $��30��6K   $��10q�6W   $��Center=�6c   50      51      52      �� 53   
   -   5        $ lab_Copy��53      $��92��6?   $��27��6J   $��12(�6V   $
��Bold"�6d   $��Times New Roman)�6v   
��� � �$��268,199,174,93q�6�   ��6"   �� *
Message2+6�   55      56      