/PROG  block_20_4_1_5
/ATTR
COMMENT	= "19-04-12 11:18:59";
PROG_SIZE	= 0;
DEFAULT_GROUP	= 1, *, *, *, *;
/APPL
    ARC Welding Equipment: 1, *, *, *, *;
/MN
   1:  CALL HOME_ALL;
   1:  UFRAME_NUM = 1;
   1:  UTOOL_NUM = 3;
   1:  COL GUARD ADJUST 150;
   1:  !Teach Startpoint in PR90;
   1:  !Weld speed R100 in mm/sec;
   1:  !Retraction +Z in R101 in mm;
   1:  !Retraction speed in R102 in %;
   1:  !END_PUB Time in R103;
   1:  !Zeit bis Drahtvorschub R104;
   1:  !Drahtvorschubzeit R105;
   1:  !- Layer/Ebene 1;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + 18.135;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:  PR[91,3] = PR[90,3] + 1.500;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 2.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.135;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 32.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 78.135;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 62.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  !- Layer/Ebene 2;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + 62.135;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:  PR[91,3] = PR[90,3] + 3.000;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 78.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 62.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 32.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 2.135;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 2.135;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  !- Layer/Ebene 3;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + 18.135;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:  PR[91,3] = PR[90,3] + 4.500;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 2.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.135;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 32.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 62.135;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 78.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 62.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  !- Layer/Ebene 4;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + 78.135;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:  PR[91,3] = PR[90,3] + 6.000;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 62.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 32.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 2.135;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 2.135;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  !- Layer/Ebene 5;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + 2.135;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:  PR[91,3] = PR[90,3] + 7.500;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 18.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 2.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 5.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.535;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 32.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 78.135;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,2] = PR[90,2] + 18.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 62.135;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 2.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.135;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:  PR[91,2] = PR[90,2] + 14.178;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,41.0];
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 10.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 74.535;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 6.178;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.735;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 100;
   1:J PR[92] R[102]% CNT100;
   1:  WAIT   10.00(sec);
   1:  CALL HOME_ALL;
/POS
/END
