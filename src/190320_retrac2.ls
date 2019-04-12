/PROG  190320_retrac2
/ATTR
COMMENT	= "19-03-21 09:53:55";
PROG_SIZE	= 0;
DEFAULT_GROUP	= 1, *, *, *, *;
/APPL
    ARC Welding Equipment: 1, *, *, *, *;
/MN
   1:  CALL HOME_ALL;
   1:  UFRAME_NUM = 1;
   1:  UTOOL_NUM = 3;
   1:  COL GUARD ADJUST 150;
   1:  PR[91] = PR[90];
   1:  GO[2]=3;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:  PR[91,3] = PR[90,3] + 1.495;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91] = PR[90];
   1:  GO[2]=4;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:  PR[91,3] = PR[90,3] + 2.795;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91] = PR[90];
   1:  GO[2]=5;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:  PR[91,3] = PR[90,3] + 4.095;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:  PR[91,3] = PR[90,3] + 5.395;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:  PR[91,3] = PR[90,3] + 6.695;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:  PR[91,3] = PR[90,3] + 7.995;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:  PR[91,3] = PR[90,3] + 9.295;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:  PR[91,3] = PR[90,3] + 10.595;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 17.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -24.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 0.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -10.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 23.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.221;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -4.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -1.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + -30.904;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 20;
   1:J PR[92] 10% FINE;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 9.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -27.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 30.096;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + -6.779;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 50;
   1:J PR[92] 10% FINE;
   1:  WAIT   5.00(sec);
   1:  CALL HOME_ALL;
/POS
/END
