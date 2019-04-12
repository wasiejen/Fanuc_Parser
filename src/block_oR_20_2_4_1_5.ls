/PROG  block_oR_20_2_4_1_5
/ATTR
COMMENT	= "19-04-12 13:04:32";
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
   1:  PR[91,1] = PR[90,1] + 17.782;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:  PR[91,3] = PR[90,3] + 2.250;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[111];
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 2.531;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.925;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.388;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 10.994;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 9.319;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.713;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 7.600;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 4.206;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 16.107;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.364;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 1.949;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.343;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.969;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 11.575;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 8.737;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.132;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 8.181;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 4.787;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 15.526;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.920;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.393;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 31.940;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[111];
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 18.373;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.979;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.334;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 38.728;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 11.585;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 8.190;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 42.122;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 45.516;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 4.796;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 15.560;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 34.753;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 38.147;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 12.166;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 8.772;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 41.541;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.935;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 5.378;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.984;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.329;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 62.487;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[111];
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 17.826;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.432;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.881;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 69.275;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 11.038;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.643;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 72.669;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 76.063;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 4.249;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.906;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 18.407;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 15.013;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.300;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 68.694;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 11.619;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 8.225;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 72.088;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 75.482;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 4.831;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.437;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.876;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  !- Layer/Ebene 2;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 18.920;
   1:  PR[91,3] = PR[90,3] + 3.750;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[112];
   1:  PR[91,1] = PR[90,1] + 78.876;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 75.482;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 15.526;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.132;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 72.088;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 68.694;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 8.738;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.343;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.300;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.906;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 1.949;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 76.064;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 16.107;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.713;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 72.669;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 69.275;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 9.319;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.925;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.881;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 62.487;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 2.531;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 18.373;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[112];
   1:  PR[91,1] = PR[90,1] + 48.329;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.935;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 14.979;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 11.585;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 41.541;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 38.147;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 8.190;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 4.796;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 34.753;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 45.517;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 15.560;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.166;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 42.122;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 38.728;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 8.772;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.378;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.334;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.940;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 1.984;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 17.826;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[112];
   1:  PR[91,1] = PR[90,1] + 17.782;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.388;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 14.432;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 11.038;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 10.994;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 7.600;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 7.643;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 4.249;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 4.206;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.407;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.364;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.969;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 15.013;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 11.619;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 11.575;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 8.181;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 8.225;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 4.831;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 4.787;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.393;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 1.437;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  !- Layer/Ebene 3;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + 17.782;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:  PR[91,3] = PR[90,3] + 5.250;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[113];
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 2.531;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.925;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.388;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 10.994;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 9.319;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.713;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 7.600;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 4.206;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 16.107;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.364;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 1.949;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.343;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.969;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 11.575;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 8.737;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.132;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 8.181;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 4.787;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 15.526;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.920;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.393;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 31.940;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[113];
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 18.373;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.979;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.334;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 38.728;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 11.585;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 8.190;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 42.122;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 45.516;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 4.796;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 15.560;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 34.753;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 38.147;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 12.166;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 8.772;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 41.541;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.935;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 5.378;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.984;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.329;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 62.487;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[113];
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 17.826;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 14.432;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.881;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 69.275;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 11.038;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 7.643;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 72.669;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 76.063;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 4.249;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.906;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 18.407;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 15.013;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.300;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 68.694;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 11.619;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 8.225;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 72.088;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 75.482;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 4.831;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.437;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.876;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  !- Layer/Ebene 4;
   1:  PR[91] = PR[90];
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 18.920;
   1:  PR[91,3] = PR[90,3] + 6.750;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[113];
   1:  PR[91,1] = PR[90,1] + 78.876;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 75.482;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 15.526;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.132;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 72.088;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 68.694;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 8.738;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.343;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.300;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.906;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 78.911;
   1:  PR[91,2] = PR[90,2] + 1.949;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 76.064;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 16.107;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.713;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 72.669;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 69.275;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 9.319;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.925;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 65.881;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 62.487;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 61.359;
   1:  PR[91,2] = PR[90,2] + 2.531;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 18.373;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[113];
   1:  PR[91,1] = PR[90,1] + 48.329;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 44.935;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 14.979;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 11.585;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 41.541;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 38.147;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 8.190;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 4.796;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 34.753;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 48.911;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 45.517;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 15.560;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 12.166;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 42.122;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 38.728;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 8.772;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 5.378;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 35.334;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.940;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 31.359;
   1:  PR[91,2] = PR[90,2] + 1.984;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  WAIT R[104];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 17.826;
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + R[101];
   1:J PR[92] R[102]% CNT100;
   1:L PR[91] 100mm/sec FINE RampTo R[100]  Weld Start[1,5.0];
   1:  GO[2]=R[113];
   1:  PR[91,1] = PR[90,1] + 17.782;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.388;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 14.432;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 11.038;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 10.994;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 7.600;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.911;
   1:  PR[91,2] = PR[90,2] + 7.643;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 4.249;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 4.206;
   1:  PR[91,2] = PR[90,2] + 18.954;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 18.407;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 18.364;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 14.969;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 15.013;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 11.619;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 11.575;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 8.181;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 8.225;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,2] = PR[90,2] + 4.831;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 4.787;
   1:  PR[91,2] = PR[90,2] + 1.402;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.393;
   1:L PR[91] R[100]mm/sec CNT100;
   1:  PR[91,1] = PR[90,1] + 1.359;
   1:  PR[91,2] = PR[90,2] + 1.437;
   1:L PR[91] R[100]mm/sec CNT100  Weld End[1,5.0,0.2s];
   1:  PR[92] = PR[91];
   1:  PR[92,3] = PR[92,3] + 100;
   1:J PR[92] R[102]% CNT100;
   1:  WAIT   10.00(sec);
   1:  CALL HOME_ALL;
/POS
/END
