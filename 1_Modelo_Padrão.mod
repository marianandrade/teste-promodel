��XB�F���S����iu                        	   t      &                    
   t      E                    	   t                   F C:\Program Files\ProModel Corporation\ProModel\9.1\Graphics\PROMOD.GLB                           ���   	  Activate sStat()	 Int i = 1 While i < 100 Do { 	mInfo[i, 1]= 0 	mInfo[i, 2]= 0 	mInfo[i, 3]= 0	 	Inc i, 1 }	       ���     {�G�z�?      �?      �  �   #   "   ޯh?            Baseline     Mac1         2 Output\1 Output.xlsx     �ܬu0��        % 1 Input\2 CO Matrix\CO Matrix PH.xlsx      H<\�.���      Arquivo1( 1 Input\1 Sequencias\1 Input_JCB_RM.xlsx     �A�/��*         1 Input\0 Par�metros.xlsx      1r�j0��&        mCO N  N  N       �O            COMatrix J8                    mInfo ,             �       Output A4                         	 mSequence ,             �       Sequence A4                          mOEE                        Performance D6                     sStat
 	 Int x = 1   While x = 1 Do { 	vKPI_Pc_Hour = 0  	vKPI_Ton_Hour = 0 	 	Wait 60 min }	            vKPI_Pc_Hour 0    ����            �      "Arial r New                          ���     y  <  �  [        vKPI_Ton_Hour 0    ����            �      "Arial r New                          ���       =  X  \        vKPI_WIP_ton 0    ����            �      "Arial r New                          ���     -  @  v  c       vKPI_WIP_pc 0    ����            �      "Arial r New                          ���     -  c  o  �       vKPI_CO 0    ����            �      "Arial r New                          ���     c  l  �  �        vCurrent_Index 0    ����            �      "Arial r New                          ���     g  P  �  o       vCurrent_Sequence 1       vKPI_Avg_LeadTime 0    ����            �      "Arial r New                          ���     p  g  �  �        aOrder     aNPipes     aST     aET     aCT_RM    	 aTon_Pipe    	 aIndex_RM     aST_WIP            eOrder       150   Ѽ�@�с@                          1.7143 1.2857           ePipe       150   @�?L��@�                        0.4286 2           Arrival               �   �   �   �        Inf                         Production_Area     Wait ( (1 - mOEE[1])*480 ) min 0 8 hr   99             x  �    ����            �      "Arial r New                          ���     p  2  �  N    p  �   ' �    1                        WIP               M  �    7  �      �   �  �       �    >  �      �      �    0  �    N  �    l  �    �  �    }  �    c  �    H  �    -  �    _  �      �    '  �    E  �    Z  �    r  �     �   � Y    Inf                        lExit               Z  �   T  �        Inf                                   Order aNPipes ePipe To WIP                          1           aST_WIP = clock() Inc vKPI_WIP_pc, 1 Inc vKPI_WIP_ton, aTon_Pipe                     P  �   v  �     Dec vKPI_WIP_pc, 1 Dec vKPI_WIP_ton, aTon_Pipe 1          !  	// 1. Setup% If vCurrent_Index <> aIndex_RM Then { 	8 	// 1.1. Se n�o for a 1a ordem, aguarda o tempo de setup 	If vCurrent_Index <> 0 Then {* 		Wait mCO[vCurrent_Index, aIndex_RM] min	- 		Inc vKPI_CO, mCO[vCurrent_Index, aIndex_RM] 	}	 	) 	mSequence[vCurrent_Sequence, 1] = aOrder, 	mSequence[vCurrent_Sequence, 2] = aIndex_RM_ 	If vCurrent_Index <> 0 Then mSequence[vCurrent_Sequence-1, 3] = mCO[vCurrent_Index, aIndex_RM] 	Inc vCurrent_Sequence, 1 	 	vCurrent_Index = aIndex_RM }   	// 2. Cycle time aST = clock() Wait aCT_RM aET = clock()   	// 3. Record Data If mInfo[aOrder,2] = 0 Then { 	mInfo [aOrder,1] = aOrder 	mInfo [aOrder,2] = aST }  ! If aET > mInfo [aOrder,3] Then  { 	mInfo [aOrder,3] = aET }                         �  �   X  �     	// 3. Update KPIs Inc vKPI_Pc_Hour, 1 Inc vKPI_Ton_Hour, aTon_Pipe    A If vKPI_Avg_LeadTime = 0 Then vKPI_Avg_LeadTime = (aET - aST_WIP)B Else vKPI_Avg_LeadTime = (vKPI_Avg_LeadTime + (aET - aST_WIP)) / 2         1                                      1      ��XB           PR����   �      ���        �B  �B ��D  �CPR����  �      ���        iC ��C ��C ��CPR����  �      ���       ��C ��C  6D ��CPR����         ���        �C ��C �D ��C ���     �  3  3  O                 ����            �  �   "Arial Narrow                    	 N� pe�as PR����         ���       ��C ��C �D ��C ���     �  Q  :  m                 ����            �  �   "Arial Narrow                     Current order PR����         ���        �C  �C �D  �C ���     �  n    �                 ����            �  �   "Arial Narrow                     C/O PR����  �      �         ��C ��C  6D ��CPR����  ���    ���        �C ��C �D ��C ���     �    K  3  ���            ����            �      "Arial Narrow                     Process Info PR����  �      �          iC  �C ��C ��CPR����	  ���    ���        uC ��C  �C ��C ���     �       3  ���            ����            �      "Arial Narrow                     WIP PR����
         ���        �C  �C ��C  �C ���     �  @  �  \                 ����            �      "Arial Narrow                     ton PR����         ���       ��C  �C ��C  �C ���     �  f  �  �                 ����            �      "Arial Narrow                     p� PR����  �      ���       @AD ��Cod{D ��CPR����  �      �          AD  �C  {D ��CPR����  ���    ���       �BD ��C �YD ��C ���         g  1  ���            ����            �      "Arial Narrow                     Production Info PR����         ���       �SD  �C @^D  �C ���     N  <  y  X                 ����            �  �   "Arial Narrow                     ton/hr PR����         ���       �oD ��C �yD ��C ���     �  =  �  Y                 ����            �  �   "Arial Narrow                     p�/hr PR����  ���    ���        �B  HB���D�Y�BPR����  ���    ���        �B  <B  kC  �B ���     Q   /   �   K   ���            ����            �      "Arial Narrow                     JCB - PH - Rolling Mill PR����  ���    ���       ��D  @B  �D  �B ���     $  0   �  L   ���            ����            �  �   "Arial Narrow                     Flow Redesign PR����         ���        DD ��C @[D ��C ���       g  m  �                 ����            �  �   "Arial Narrow                     Avg Lead Time PR             ���        kD  �C  sD  �C ���     �  f  �  �                 ����            �  �   "Arial Narrow                     min                       99 99 99 99               