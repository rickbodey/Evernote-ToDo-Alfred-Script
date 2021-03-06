FasdUAS 1.101.10   ��   ��    k             l     ��  ��    . (	Modified From Bruce Timberlake's Script     � 	 	 P 	 M o d i f i e d   F r o m   B r u c e   T i m b e r l a k e ' s   S c r i p t   
  
 l     ��  ��    n h http://brucetimberlake.com/blog/2011/09/22/using-evernote-applescript-quicksilver-for-a-daily-task-log/     �   �   h t t p : / / b r u c e t i m b e r l a k e . c o m / b l o g / 2 0 1 1 / 0 9 / 2 2 / u s i n g - e v e r n o t e - a p p l e s c r i p t - q u i c k s i l v e r - f o r - a - d a i l y - t a s k - l o g /      l     ��������  ��  ��        l      ��  ��    8 2 Notebook name to create these journal entries in      �   d   N o t e b o o k   n a m e   t o   c r e a t e   t h e s e   j o u r n a l   e n t r i e s   i n        j     �� �� 0 nb    m        �    G T D      l     ��������  ��  ��        l      ��   ��   XR BEGIN HANDLER CALL

NOTE: I have added a new portion to the script so that users who
aren't familiar with how to use a handler can run the Script
directly and check it out. If you'd like to use this as a handler
in your own AppleScript, Just delete or comment out the portion
of code between "BEGIN HANDLER CALL" and "END HANDLER CALL"

      � ! !�   B E G I N   H A N D L E R   C A L L 
 
 N O T E :   I   h a v e   a d d e d   a   n e w   p o r t i o n   t o   t h e   s c r i p t   s o   t h a t   u s e r s   w h o 
 a r e n ' t   f a m i l i a r   w i t h   h o w   t o   u s e   a   h a n d l e r   c a n   r u n   t h e   S c r i p t 
 d i r e c t l y   a n d   c h e c k   i t   o u t .   I f   y o u ' d   l i k e   t o   u s e   t h i s   a s   a   h a n d l e r 
 i n   y o u r   o w n   A p p l e S c r i p t ,   J u s t   d e l e t e   o r   c o m m e n t   o u t   t h e   p o r t i o n 
 o f   c o d e   b e t w e e n   " B E G I N   H A N D L E R   C A L L "   a n d   " E N D   H A N D L E R   C A L L " 
 
   " # " l     ��������  ��  ��   #  $ % $ l     &���� & r      ' ( ' n     	 ) * ) 1    	��
�� 
ttxt * l     +���� + I    �� , -
�� .sysodlogaskr        TEXT , m      . . � / /  D a y   N o t e - �� 0��
�� 
dtxt 0 m     1 1 � 2 2  ��  ��  ��   ( o      ���� 0 notetext  ��  ��   %  3 4 3 l    5���� 5 n    6 7 6 I    �� 8���� 0 alfred_script   8  9�� 9 o    ���� 0 notetext  ��  ��   7  f    ��  ��   4  : ; : l     ��������  ��  ��   ;  < = < i     > ? > I      �� @���� 0 alfred_script   @  A�� A o      ���� 0 q  ��  ��   ? Z      B C���� B >     D E D o     ���� 0 q   E m     F F � G G   C I    �� H���� *0 createdailyevernote CreateDailyEvernote H  I�� I o    ���� 0 q  ��  ��  ��  ��   =  J K J l     ��������  ��  ��   K  L M L l      �� N O��   N   END HANDLER CALL     O � P P $   E N D   H A N D L E R   C A L L   M  Q R Q l     ��������  ��  ��   R  S T S i    
 U V U I      �� W���� *0 createdailyevernote CreateDailyEvernote W  X�� X o      ���� 0 txt  ��  ��   V k     � Y Y  Z [ Z r      \ ] \ m      ^ ^ � _ _ 
 I N B O X ] o      ���� 0 t   [  ` a ` r     b c b b     d e d l   	 f���� f I   	�� g��
�� .sysontocTEXT       shor g m    ���� ��  ��  ��   e l  	  h���� h I  	 �� i��
�� .sysontocTEXT       shor i m   	 
���� 
��  ��  ��   c o      ���� 0 crlf   a  j k j r     l m l n     n o n 1    ��
�� 
tstr o l    p���� p I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   m o      ���� 0 timestr timeStr k  q r q l   ��������  ��  ��   r  s t s l   ��������  ��  ��   t  u v u O    � w x w k     � y y  z { z r     5 | } | I    3�� ~��
�� .EVRNfindnull���     ctxt ~ b     /  �  b     - � � � b     + � � � b     ) � � � b     ' � � � m     ! � � � � �  n o t e b o o k : " � o   ! &���� 0 nb   � m   ' ( � � � � �  " � m   ) * � � � � �    i n t i t l e : " � o   + ,���� 0 t   � m   - . � � � � �  "��   } o      ���� 0 
foundnotes 
foundNotes {  � � � r   6 = � � � l  6 ; ����� � >  6 ; � � � l  6 9 ����� � n   6 9 � � � 1   7 9��
�� 
leng � o   6 7���� 0 
foundnotes 
foundNotes��  ��   � m   9 :����  ��  ��   � o      ���� 	0 found   �  � � � Z   > � � ��� � � H   > @ � � o   > ?���� 	0 found   � k   C o � �  � � � r   C Z � � � I  C X���� �
�� .EVRNcrntnull��� ��� null��   � �� � �
�� 
Enxt � b   E J � � � b   E H � � � o   E F���� 0 crlf   � o   F G���� 0 txt   � o   H I���� 0 crlf   � �� � �
�� 
Entt � o   K L���� 0 t   � �� ���
�� 
Ennb � o   M R���� 0 nb  ��   � o      ���� 0 curnote   �  � � � r   [ e � � � 4   [ c�� �
�� 
EVtg � m   _ b � � � � �  d a y _ n o t e � o      ���� 0 tag1   �  ��� � I  f o�� � �
�� .EVRNassnnull���     **** � o   f g���� 0 tag1   � �� ���
�� 
EV13 � o   j k���� 0 curnote  ��  ��  ��   � X   r � ��� � � k   � � � �  � � � O  � � � � � I  � ����� �
�� .EVRNadtnnull���     EVnn��   � �� ���
�� 
EV18 � b   � � � � � o   � ����� 0 crlf   � o   � ����� 0 txt  ��   � o   � ����� 0 curnote   �  ��� � l  � ��� � ���   � $  open note window with curnote    � � � � <   o p e n   n o t e   w i n d o w   w i t h   c u r n o t e��  �� 0 curnote   � o   u v���� 0 
foundnotes 
foundNotes �  ��� � l  � ��� � ���   �  	 activate    � � � �    a c t i v a t e��   x m     � ��                                                                                  EVRN  alis    V  Macintosh HD               ���4H+  �	Evernote.app                                                   �е�        ����  	                Applications    ���      жKc    �	  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��   v  � � � l  � ���~�}�  �~  �}   �  ��| � l  � ��{�z�y�{  �z  �y  �|   T  ��x � l     �w�v�u�w  �v  �u  �x       �t �  � � ��t   � �s�r�q�p�s 0 nb  �r 0 alfred_script  �q *0 createdailyevernote CreateDailyEvernote
�p .aevtoappnull  �   � **** � �o ?�n�m � ��l�o 0 alfred_script  �n �k ��k  �  �j�j 0 q  �m   � �i�i 0 q   �  F�h�h *0 createdailyevernote CreateDailyEvernote�l �� *�k+ Y h � �g V�f�e � ��d�g *0 createdailyevernote CreateDailyEvernote�f �c ��c  �  �b�b 0 txt  �e   � �a�`�_�^�]�\�[�Z�a 0 txt  �` 0 t  �_ 0 crlf  �^ 0 timestr timeStr�] 0 
foundnotes 
foundNotes�\ 	0 found  �[ 0 curnote  �Z 0 tag1   �  ^�Y�X�W�V�U � � � � ��T�S�R�Q�P�O�N�M ��L�K�J�I�H�G�F�Y 
�X .sysontocTEXT       shor�W 

�V .misccurdldt    ��� null
�U 
tstr
�T .EVRNfindnull���     ctxt
�S 
leng
�R 
Enxt
�Q 
Entt
�P 
Ennb�O 
�N .EVRNcrntnull��� ��� null
�M 
EVtg
�L 
EV13
�K .EVRNassnnull���     ****
�J 
kocl
�I 
cobj
�H .corecnte****       ****
�G 
EV18
�F .EVRNadtnnull���     EVnn�d ��E�O�j �j %E�O*j �,E�O� ��b   %�%�%�%�%j E�O��,jE�O� 1*���%�%��b   a  E�O*a a /E�O�a �l Y - *�[a a l kh � *a ��%l UOP[OY��OPUOP � �E ��D�C � ��B
�E .aevtoappnull  �   � **** � k      � �  $ � �  3�A�A  �D  �C   �   �  .�@ 1�?�>�=�<
�@ 
dtxt
�? .sysodlogaskr        TEXT
�> 
ttxt�= 0 notetext  �< 0 alfred_script  �B ���l �,E�O)�k+ ascr  ��ޭ