   M S B A M L   `   `   `  ����F  BFourierDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:FourierDemo.ViewFourierDemo.View  5   	   =#clr-namespace:FourierDemo.ViewModelFourierDemo.ViewModel  5   	       FourierDemo.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:FourierDemo.View     5   	   9	viewModel#clr-namespace:FourierDemo.ViewModel     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	     � Title$  
MainWindow��5
   	   $	��700��6   $
��1300��6)    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency .  � DataContext 5      )   #FourierDemo.ViewModel.MainViewModel  5   
    � 	Resources 5       �� DataType)   #FourierDemo.ViewModel.HomeViewModel   FourierDemo.View.HomeView-   'FourierDemo.ViewModel.CustomerViewModel#   FourierDemo.View.CustomerView��%�   (��       5      *, +)(�� 2     5      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      5      .��5       ��  �� CornerRadius$ 8��6      	BlackBlue#��[  6   ._�5!   
   �  � ColumnDefinitions 5"      �� 5#      $
��Auto �6#   �� 5$      .+�5'      �� $ 8 0 0 8��6     Blue.Container#��[ 6,   ._�5(      � -   5        	 �Name$	 gridMenu��5(      $��60��6)   
 � RowDefinitions
 5)      �� 5*      $��60 �6(   �� 5+      $��80 �6(   �� 5,      $
��Auto �6(   �� 5-      .+�51      �� $��1��6!    �� Orientation$ 
Horizontal=�6.   $	��Top=�6G   $��50��6_   .+�52      �� $��/Images/ic_logo_mf.png��6    $
��Fill=�6@   $��45��6P   $��45��6[   $��8,0,0,0q�6g   �� 53      $��	Fourier A��6      PrimaryBlueColor#���  64   $
��Bold"�6d   $��20(�6v   $��Center=�6�   $
��Left=�6�   $
��Left=�6�   $��14 0 0 0q�6�   54      d� 57      -   5         d�Name$ btnMenu��57   #   $
��Left=�65   $��0q�6P   
������ $��Center=�6}     MenuIconStyle#��[ 6�   $��20,0,0,0q�6�    � Triggers 58      :� 59       :� RoutedEvent$ ToggleButton.Unchecked��6+   .[�5:   "   �� .��5;   &   �� -   5         ��Name$ HideStackPanel��5;   1   .��5<   *   W�  �� 
TargetName$ gridMenu��6:    �� TargetProperty$ Width�6[    g� 	BeginTime$ 0:0:0X�6}    W� From$	 200X�6�   	 W� To$ 60X�6�    g� Duration$ 0:0:0.3D�6�   5=   +   5>   '   5?   #   5@      :� 5A      $ ToggleButton.Checked��6+   .[�5B   "   �� .��5C   &   �� -   5        $ ShowStackPanel��5C   1   .��5D   *   W� $ gridMenu��6:   $ Width�6[   $ 0:0:0X�6}   $ 60X�6�   $	 200X�6�   $ 0:0:0.3D�6�   5E   +   5F   '   5G   #   5H      5J      �� 5L      $��3��6!   .+�5N      	� -   5          
menuButton#��[ 5N   &    
 color1
 � Tag# [ 5O   "    d� 	IsChecked$
 TrueY�5P   "   ��5Q   "   �� *ShowHomeViewCommand+.��5T      �� $ 
Horizontal=�6)   .+�5U   "   !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Home=�6/     menuButtonIcon#��[ 6;   $��15,0,0,0q�6c   �� 5V   "   $��	Dashboard��6,     menuButtonText#��[ 6=   $��24,0,0,0q�6e   5W      5X      	� 5[      #��[ 6&    
 color2# [ 5\   "   ��5]   "   �� *ShowCustomerViewCommand+.��5^      �� $ 
Horizontal=�6)   .+�5_   "     $ 	UserGroup=�6/   #��[ 6@   $��15,0,0,0q�6h   �� 5`   "   $��	Customers��6,   #��[ 6=   $��24,0,0,0q�6e   5a      5b      	� 5e      #��[ 6&    
	 color3# [	 5f      .��5g      �� $ 
Horizontal=�6)   .+�5h   "     $ Truck=�6/   #��[ 6<   $��15,0,0,0q�6d   �� 5i   "   $��Order��6,   #��[ 69   $��24,0,0,0q�6a   5j      5k      	� 5n      #��[ 6&    

 color4# [
 5o      .��5p      �� $ 
Horizontal=�6)   .+�5q   "     $ ShoppingBag=�6/   #��[ 6B   $��15,0,0,0q�6j   �� 5r   "   $��Transaction��6,   #��[ 6?   $��24,0,0,0q�6g   5s      5t      	� 5w      #��[ 6&    
 color5# [ 5x      .��5y      �� $ 
Horizontal=�6)   .+�5z   "     $	 Box=�6/   #��[ 6:   $��15,0,0,0q�6b   �� 5{   "   $��Stock��6,   #��[ 69   $��24,0,0,0q�6a   5|      5}      	� 5�      #��[ 6&    
 color6# [ 5�      .��5�      �� $ 
Horizontal=�6)   .+�5�   "     $ Wallet=�6/   #��[ 6=   $��15,0,0,0q�6e   �� 5�   "   $��	Finantial��6,   #��[ 6=   $��24,0,0,0q�6e   5�      5�      	� 5�      #��[ 6&    
 color7# [ 5�      .��5�      �� $ 
Horizontal=�6)   .+�5�   "     $ PieChart=�6/   #��[ 6?   $��15,0,0,0q�6g   �� 5�   "   $��Report��6,   #��[ 6:   $��24,0,0,0q�6b   5�      5�      	� 5�      #��[ 6&    
 color8# [ 5�      .��5�      �� $ 
Horizontal=�6)   .+�5�   "     $ Tools=�6/   #��[ 6<   $��15,0,0,0q�6d   �� 5�   "   $��Settings��6,   #��[ 6<   $��24,0,0,0q�6d   5�      5�      5�      �� 5�      $��3��6!   $��Bottom=�6.   $ 
Horizontal=�6I   $	��200��6b   $��0 0 0 20q�6n   .+�5�      A� $��40��6"   $��40��6-   $��10 0 0 0q�69   ��5�      �� 5�   "    �� ImageSource$! /Images/profile-picture.png��6-   5�      �� 5�      $ Vertical=�6%   $��8 0 0 0q�6<   .+�5�      ��   titleColor2#��[ 5�   (   $��Multicolore Pro)�5�   (   $��12(�5�   (   $��Center=�5�   (   ��5�   (   �� *CurrentUserAccount.Username+5�   (   �� 5�        TextPrimaryColor#���  6W   $��14(�6�   $��SemiBold"�6�   $��Center=�6�   $
��Left=�6�   ��6$   �� * CurrentUserAccount.DisplayName+6�   5�      5�      5�      5�      � 5�      $��1��6   
 5�      �� 5�      $��60 �6$   �� 5�      .+�5�      �� -   5         ��Name$ pnlControlBar��5�      $��0��5�   !   $ 
Horizontal=�5�   !   $��RightToLeft=�5�   !   
������ $��0,0,10,0q�5�   !   .+�5�      �� -   5         ��Name$ btnClose��5�        controlButton#��[ 5�   !   # [
 5�   !   $��30��5�   8   .��5�        $ Xmark=�6'     controlButtonIcon#��[ 64   5�      �� 5�      -   5        $ btnMaximize��5�      #��[ 5�   !   # [ 5�   !   $��30��5�   ;   .��5�        $ Square=�6'   #��[ 65   5�      �� 5�      -	   5        $ btnMinimize��5�      #��[ 5�   !   # [ 5�   !   $��30��5�   ;   .��5�        $ WindowMinimize=�6'   $��12��6=   #��[ 6H   5�      5�      � 5�      $��0��6    5�      �� 5�      �� 5�      .+�5�      �� $��0��6!   $ 
Horizontal=�5�   %   $��Center=�5�   %   $��0,0,10,0q�6@   .+�5�        $ 
DesktopAlt=�6'   $��20��5�   +   $��20��5�   +      
Foreground# [ 5�   +   $��	35,0,10,0q�5�   +   �� 5�      #��[ 5�   (   $��16(�5�   (   $��Multicolore Pro)�5�   (   $��Medium"�5�   (   $��Center=�5�   (   ��5�   $   �� *	Caption+5�   (   5�      5�      �� 5�      $��1��6   $	��6.5q�6&   ._�5�      �� $��1��6   $��3q�6*   ._�5�       � -
   5          �Name$ PagesNavigation��5�         � NavigationUIVisibility$ Hidden=�69   ��6Y   �� *CurrenChildView+5      5     5     5     5     5     5     