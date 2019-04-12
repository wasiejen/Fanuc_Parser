/PROG  tunnel_50ohK
/ATTR
COMMENT	= "18-09-10 11:42:27";
PROG_SIZE	= 0;
DEFAULT_GROUP	= 1, 1, *, *, *;
/APPL
    ARC Welding Equipment: 1, *, *, *, *;
/MN
   1:  CALL HOME_ALL;
   1:  UFRAME_NUM = 1;
   1:  UTOOL_NUM = 3;
   1:  COL GUARD ADJUST 150;
   1:
   1:  R[90:breite_y] = 50;
   1:  R[91:delta_y] = 0.4;
   1:  R[92:delta_h] = 1.3;
   1:  R[93:sicherheit_h] = 5;
   1:
   1:  R[80:ebenen] = R[90] / R[91];
   1:  R[80:ebenen] = [R80] / 2;
   1:  R[99:temp] = R[80] MOD 1;
   1:  R[80:ebenen] = R[80] - R[99];
   1:
   1:
   1:  FOR R[70:akt_ebene] = 0 TO R[80:ebenen];
   1:
   1:  R[99:temp] = R[70:akt_ebene] MOD 2;
   1:  IF R[99:temp] = 0, JMP LBL[1];
   1:  PR[90] = P[2];
   1:  PR[91] = P[1];
   1:  JMP LBL[4];
   1:  LBL[1];
   1:  PR[90] = P[1];
   1:  PR[91] = P[2];
   1:  LBL[4];
   1:
   1:  R[99:temp] = R[70:akt_ebene] * R[92:delta_h];
   1:  PR[GP1:90,3] = PR[GP1:90,3] + R[99:temp];
   1:  PR[GP1:91,3] = PR[GP1:91,3] + R[99:temp];
   1:
   1:  IF R[70:akt_ebene] = R[80:ebenen], JMP LBL[2];
   1:
   1:  PR[92] = PR[91];
   1:  PR[93] = PR[90];
   1:
   1:  R[99:temp] = R[70:akt_ebene] * R[91:delta_y];
   1:  PR[GP1:90,2] = PR[GP1:90,2] + R[99:temp];
   1:  PR[GP1:91,2] = PR[GP1:91,2] + R[99:temp];
   1:  PR[GP1:92,2] = PR[GP1:92,2] - R[99:temp];
   1:  PR[GP1:93,2] = PR[GP1:93,2] - R[99:temp];
   1:
   1:  PR[96] = PR[90];
   1:  PR[97] = PR[91];
   1:  PR[98] = PR[92];
   1:  PR[99] = PR[93];
   1:  PR[GP1:96,3] = PR[GP1:96,3] + R[93:sicherheit_h];
   1:  PR[GP1:97,3] = PR[GP1:97,3] + R[93:sicherheit_h];
   1:  PR[GP1:98,3] = PR[GP1:98,3] + R[93:sicherheit_h];
   1:  PR[GP1:99,3] = PR[GP1:99,3] + R[93:sicherheit_h];
   1:
   1:
   1:J PR[96];
   1:L PR[90] 10mm/sec CNT100;
   1:  Weld Start[1,302.0];
   1:L PR[91] 10mm/sec CNT100;
   1:  Weld End[1,302.0,0.1s];
   1:J PR[97];
   1:J PR[98];
   1:L PR[92] 10mm/sec CNT100;
   1:  Weld Start[1,302.0];
   1:L PR[93] 10mm/sec CNT100;
   1:  Weld End[1,302.0,0.1s];
   1:J PR[99];
   1:
   1:  JMP LBL[3];
   1:
   1:  LBL[2];
   1:
   1:  R[99:temp] = R[90:breite_y] / 2;
   1:  PR[GP1:90,2] = PR[GP1:90,2] + R[99:temp];
   1:  PR[GP1:91,2] = PR[GP1:91,2] + R[99:temp];
   1:
   1:  PR[96] = PR[90];
   1:  PR[97] = PR[91];
   1:  PR[GP1:96,3] = PR[GP1:96,3] + R[93:sicherheit_h];
   1:  PR[GP1:97,3] = PR[GP1:97,3] + R[93:sicherheit_h];
   1:
   1:
   1:J PR[96];
   1:L PR[90] 10mm/sec CNT100;
   1:  Weld Start[1,302.0];
   1:L PR[91] 10mm/sec CNT100;
   1:  Weld End[1,302.0,0.1s];
   1:J PR[97];
   1:
   1:  LBL[3];
   1:  ENDFOR;
   1:  CALL HOME_ALL;
/POS
/END