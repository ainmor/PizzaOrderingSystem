   M S B A M L   `   `   `  ����E  APos.Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Pos.Client
Pos.Client  5   	       Pos.Client.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   *localclr-namespace:Pos.Client     5   	     � Title$  
MainWindow��5   	   $	��600��5   	   $	��800��5   	    � 	Resources 5         ProductTemplate � ColumnDefinitions �� RelativeSource �� AncestorType �� Path  OrderItemTemplate �� Orientation �� StringFormat��%�  &	        &	 �    �� 5	   
   .R�5
      �  5      �� 5      $��* �6'   �� 5      $
��Auto �6'   .+�5      �� $��0��6   .+�5      �� $��14(�6    $
��Bold"�5       ��5       �� *Name+�� 5      $
��Wrap=�5       ��5       �� *Description+5       5      �� 5      $��1��6   $��Add To Order��5      ��5      ��  �� $ ItemsControlL�$% DataContext.AddOrderItemCommand���5      �� *.+5      5      5      �� 5   
   .R�5      �� $ 
Horizontal=�6   .+�5      �� $
��Bold"�6   ��5      �� *ProductName+�� 5       ��6   �� *
Quantity+�� 5!      ��6   �� $ 
TotalPrice�$ c��5"      5#      5$       � DataContext 5%      $   Pos.Client.MainWindowViewModel  5&   
   .��5(      � .+�5)   
   �� 	 �� DisplayMemberPath$	 FullName��5*      
 �� SelectedValuePath$
 Id��5+      $
��Left=�5-      $��	10,33,0,0q�5.      $	��Top=�5/      $	��239��50      ��5)      �� *	Customers+ �� SelectedValue 5,      �� *CurrentOrder.CustomerId+50      �� 51   
   $��	Customer:��6   $
��Left=�52      $��10,2,0,0q�53      $	��Top=�54      �� 55   
   #��[  56      $
��Left=�57      $	��526��58      $��
266,34,0,0q�59      $	��Top=�5:      $	��518��5;      ��55      �� *
Products+5;      &   System.Windows.Controls.DataGrid  5<   
      AutoGenerateColumns .     ColumnHeaderHeight$ 0Q�5>         CanUserAddRows .  $
��Left=�5@      $	��476��5A      $��	10,60,0,0q�5B      $	��Top=�5C      $	��239��5D      ��5<      �� *Items+   Columns 5E      0  *System.Windows.Controls.DataGridTextColumn  5F      1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ProductName+  5G       6%   �� *
Quantity+  5H       6%   �� *
TotalPrice+5J      �� 5K   
   $��Submit Order��5L      $
��Left=�5M      $��
10,541,0,0q�5N      $	��Top=�5O      $	��239��5P      ��5K      �� *SubmitOrderCommand+5P      5R      5S      