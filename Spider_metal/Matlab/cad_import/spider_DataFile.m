% Simscape(TM) Multibody(TM) version: 6.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(63).translation = [0.0 0.0 0.0];
smiData.RigidTransform(63).angle = 0.0;
smiData.RigidTransform(63).axis = [0.0 0.0 0.0];
smiData.RigidTransform(63).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-0.99999999999999989 1.4870000000000005 0.20000000000000087];  % cm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = 'B[left_leg:coxa-1:-:left_leg:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0.99060000000004422 -2.5030999999999999 1.0286999999999993];  % cm
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962584 0.57735026918962573 0.57735026918962584];
smiData.RigidTransform(2).ID = 'F[left_leg:coxa-1:-:left_leg:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0.99999999999999989 1.4869999999999997 0.20000000000000018];  % cm
smiData.RigidTransform(3).angle = 2.7755575615628914e-16;  % rad
smiData.RigidTransform(3).axis = [0 1 0];
smiData.RigidTransform(3).ID = 'B[left_leg:coxa-2:-:left_leg:servo-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [0.99060000000004367 -2.5031000000000017 1.0287000000000011];  % cm
smiData.RigidTransform(4).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962573 -0.57735026918962584 -0.57735026918962573];
smiData.RigidTransform(4).ID = 'F[left_leg:coxa-2:-:left_leg:servo-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0.99060000000004245 1.1724097551572343 1.0287000000000004];  % cm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(5).ID = 'B[left_leg:servo-2:-:left_leg:horn-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-1.288116847941539e-14 2.0872192862952943e-14 1.1666570435090227];  % cm
smiData.RigidTransform(6).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(6).axis = [1 1.1777510994568125e-31 3.846735816592918e-16];
smiData.RigidTransform(6).ID = 'F[left_leg:servo-2:-:left_leg:horn-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [1.9811999999999996 0.59690000000000043 0];  % cm
smiData.RigidTransform(7).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(7).axis = [0.57735026918962584 -0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(7).ID = 'B[left_leg:servo-3:-:left_leg:tibia-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-1.0286999999999953 0.99059999999996085 0.29999999999999938];  % cm
smiData.RigidTransform(8).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(8).axis = [1 2.7755575615628914e-17 -1.1102230246251565e-16];
smiData.RigidTransform(8).ID = 'F[left_leg:servo-3:-:left_leg:tibia-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0.19999999999999984];  % cm
smiData.RigidTransform(9).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(9).axis = [1 0 0];
smiData.RigidTransform(9).ID = 'B[left_leg:horn-1:-:left_leg:servo-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [0.99060000000004456 2.1390667986662319 1.0286999999999855];  % cm
smiData.RigidTransform(10).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(10).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(10).ID = 'F[left_leg:horn-1:-:left_leg:servo-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 0 0];  % cm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = 'B[left_leg:bearing-1:-:left_leg:coxa-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [-1.0000000000000002 1.4870000000000008 1.5182730059872212e-16];  % cm
smiData.RigidTransform(12).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(12).axis = [1 1.5739846030085182e-49 3.0814879110195774e-33];
smiData.RigidTransform(12).ID = 'F[left_leg:bearing-1:-:left_leg:coxa-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [-0.97500000000000109 0.20000000000000018 2.550000000000002];  % cm
smiData.RigidTransform(13).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(13).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(13).ID = 'B[left_leg:coxa-1:-:left_leg:coxa-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [0.97500000000000342 -0.19999999999999662 2.5500000000000016];  % cm
smiData.RigidTransform(14).angle = 3.1415926535897905;  % rad
smiData.RigidTransform(14).axis = [1.1470033239985702e-15 -0.70710678118654757 0.70710678118654757];
smiData.RigidTransform(14).ID = 'F[left_leg:coxa-1:-:left_leg:coxa-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [4.25 0 0.2999999999999996];  % cm
smiData.RigidTransform(15).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(15).axis = [1 0 0];
smiData.RigidTransform(15).ID = 'B[left_leg:femur-1:-:left_leg:horn-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [-7.0313444609210759e-15 7.6050277186823223e-15 -0.29999999999993054];  % cm
smiData.RigidTransform(16).angle = 4.7707942202428587e-16;  % rad
smiData.RigidTransform(16).axis = [0.93084964336914144 0.28490159121500169 0.22880127788695231];
smiData.RigidTransform(16).ID = 'F[left_leg:femur-1:-:left_leg:horn-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [-4.2500000000000009 0 0.2999999999999996];  % cm
smiData.RigidTransform(17).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(17).axis = [1 0 0];
smiData.RigidTransform(17).ID = 'B[left_leg:femur-1:-:left_leg:horn-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [-3.8819437860294156e-15 -9.9920072216264089e-16 -0.3000000000000016];  % cm
smiData.RigidTransform(18).angle = 3.003549789834116e-16;  % rad
smiData.RigidTransform(18).axis = [-0 -6.4019196984326136e-15 -1];
smiData.RigidTransform(18).ID = 'F[left_leg:femur-1:-:left_leg:horn-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [0.99999999999999956 1.4870000000000005 0.20000000000000018];  % cm
smiData.RigidTransform(19).angle = 0;  % rad
smiData.RigidTransform(19).axis = [0 0 0];
smiData.RigidTransform(19).ID = 'B[right_leg:coxa-1:-:right_leg:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [0.990600000000043 -2.5030999999999985 1.0287000000000006];  % cm
smiData.RigidTransform(20).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(20).axis = [-0.57735026918962573 -0.57735026918962573 -0.57735026918962584];
smiData.RigidTransform(20).ID = 'F[right_leg:coxa-1:-:right_leg:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [-0.99999999999999933 1.4870000000000001 0.19999999999999984];  % cm
smiData.RigidTransform(21).angle = 2.7755575615628677e-16;  % rad
smiData.RigidTransform(21).axis = [0 1 0];
smiData.RigidTransform(21).ID = 'B[right_leg:coxa-2:-:right_leg:servo-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [0.99060000000004411 -2.5031000000000034 1.0287000000000008];  % cm
smiData.RigidTransform(22).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(22).axis = [-0.57735026918962595 0.57735026918962562 0.57735026918962573];
smiData.RigidTransform(22).ID = 'F[right_leg:coxa-2:-:right_leg:servo-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [0.99060000000004245 1.1724097551572343 1.0286999999999999];  % cm
smiData.RigidTransform(23).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(23).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(23).ID = 'B[right_leg:servo-2:-:right_leg:horn-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [-3.944304526105059e-31 -8.8817841970012523e-16 1.1666570435089114];  % cm
smiData.RigidTransform(24).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(24).axis = [-1 5.2348566234079105e-33 -4.8039574130170014e-17];
smiData.RigidTransform(24).ID = 'F[right_leg:servo-2:-:right_leg:horn-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [1.9811999999999996 0.59690000000000043 0];  % cm
smiData.RigidTransform(25).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(25).axis = [0.57735026918962584 -0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(25).ID = 'B[right_leg:servo-3:-:right_leg:tibia-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-1.0287000000000006 -0.99059999999995185 6.6613381477509392e-16];  % cm
smiData.RigidTransform(26).angle = 5.900916318210353e-16;  % rad
smiData.RigidTransform(26).axis = [0.84664878154523748 -0.37628834735343891 0.37628834735343891];
smiData.RigidTransform(26).ID = 'F[right_leg:servo-3:-:right_leg:tibia-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [0 0 0.20000000000000018];  % cm
smiData.RigidTransform(27).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(27).axis = [1 0 0];
smiData.RigidTransform(27).ID = 'B[right_leg:horn-2:-:right_leg:servo-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [0.99060000000004433 2.1390667986661467 1.0286999999999713];  % cm
smiData.RigidTransform(28).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(28).axis = [-0.57735026918962584 -0.57735026918962573 -0.57735026918962573];
smiData.RigidTransform(28).ID = 'F[right_leg:horn-2:-:right_leg:servo-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [0 0 0];  % cm
smiData.RigidTransform(29).angle = 0;  % rad
smiData.RigidTransform(29).axis = [0 0 0];
smiData.RigidTransform(29).ID = 'B[right_leg:bearing-1:-:right_leg:coxa-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [1.0000000000000002 1.4870000000000008 -8.8817841970012523e-16];  % cm
smiData.RigidTransform(30).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(30).axis = [-1 1.2328597560637139e-36 -1.0496929351979164e-20];
smiData.RigidTransform(30).ID = 'F[right_leg:bearing-1:-:right_leg:coxa-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [0.9750000000000012 0.20000000000000018 2.5499999999999994];  % cm
smiData.RigidTransform(31).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(31).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(31).ID = 'B[right_leg:coxa-1:-:right_leg:coxa-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [-0.97499999999999853 -0.20000000000000018 2.5500000000000034];  % cm
smiData.RigidTransform(32).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(32).axis = [1 -1.7271017045521521e-15 1.4915878357495859e-15];
smiData.RigidTransform(32).ID = 'F[right_leg:coxa-1:-:right_leg:coxa-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [4.2500000000000009 0 0.29999999999999993];  % cm
smiData.RigidTransform(33).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(33).axis = [1 0 0];
smiData.RigidTransform(33).ID = 'B[right_leg:femur-1:-:right_leg:horn-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [1.3322676295501878e-15 2.7755575615628914e-16 -0.29999999999999893];  % cm
smiData.RigidTransform(34).angle = 1.1399611413561859e-16;  % rad
smiData.RigidTransform(34).axis = [-0 2.5950256436455868e-15 -1];
smiData.RigidTransform(34).ID = 'F[right_leg:femur-1:-:right_leg:horn-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [-4.25 0 0.29999999999999993];  % cm
smiData.RigidTransform(35).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(35).axis = [1 0 0];
smiData.RigidTransform(35).ID = 'B[right_leg:femur-1:-:right_leg:horn-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [5.3290705182007845e-15 2.9087843245179101e-14 -0.29999999999999849];  % cm
smiData.RigidTransform(36).angle = 1.7412553343843992e-15;  % rad
smiData.RigidTransform(36).axis = [-0.25503968377335379 1.8121659463570963e-15 -0.9669305868058925];
smiData.RigidTransform(36).ID = 'F[right_leg:femur-1:-:right_leg:horn-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [0 0 0.19999999999999993];  % cm
smiData.RigidTransform(37).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(37).axis = [1 0 0];
smiData.RigidTransform(37).ID = 'B[horn-6:-:right_leg-1:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [0.99060000000004367 2.1390667986661414 1.0287000000000017];  % cm
smiData.RigidTransform(38).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(38).axis = [-0.57735026918962562 -0.57735026918962562 -0.57735026918962595];
smiData.RigidTransform(38).ID = 'F[horn-6:-:right_leg-1:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [0 0 0.20000000000000001];  % cm
smiData.RigidTransform(39).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(39).axis = [1 0 0];
smiData.RigidTransform(39).ID = 'B[horn-2:-:left_leg-4:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [0.99060000000004589 2.1390667986661427 1.0286999999999997];  % cm
smiData.RigidTransform(40).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(40).axis = [-0.57735026918962562 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(40).ID = 'F[horn-2:-:left_leg-4:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [0 0 0.19999999999999993];  % cm
smiData.RigidTransform(41).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(41).axis = [1 0 0];
smiData.RigidTransform(41).ID = 'B[horn-1:-:right_leg-3:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [0.99060000000004678 2.1390667986661427 1.0287000000000037];  % cm
smiData.RigidTransform(42).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(42).axis = [-0.57735026918962573 -0.57735026918962584 -0.57735026918962573];
smiData.RigidTransform(42).ID = 'F[horn-1:-:right_leg-3:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [0 0.29999999999999999 10.061737691489899];  % cm
smiData.RigidTransform(43).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(43).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(43).ID = 'B[body-1:-:body-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(44).translation = [0 5.7299999999999995 10.061737691489899];  % cm
smiData.RigidTransform(44).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(44).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(44).ID = 'F[body-1:-:body-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(45).translation = [4.0000000000000009 0.29999999999999999 7.5];  % cm
smiData.RigidTransform(45).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(45).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(45).ID = 'B[body-1:-:horn-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(46).translation = [1.5820678100908481e-15 -1.2212453270876722e-15 -0.30000000000000004];  % cm
smiData.RigidTransform(46).angle = 2.651635327336066;  % rad
smiData.RigidTransform(46).axis = [-5.7219584981527956e-17 -2.8609792490763978e-17 -1];
smiData.RigidTransform(46).ID = 'F[body-1:-:horn-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(47).translation = [-3.9999999999999996 0.29999999999999999 7.5];  % cm
smiData.RigidTransform(47).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(47).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(47).ID = 'B[body-1:-:horn-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(48).translation = [-2.9420910152566648e-15 5.5511151231257827e-17 -0.29999999999999999];  % cm
smiData.RigidTransform(48).angle = 0.48995732625372906;  % rad
smiData.RigidTransform(48).axis = [-2.2887833992611158e-16 -2.2887833992611158e-16 -1];
smiData.RigidTransform(48).ID = 'F[body-1:-:horn-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(49).translation = [-6.7838821814150112 0.29999999999999999 0];  % cm
smiData.RigidTransform(49).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(49).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(49).ID = 'B[body-1:-:horn-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(50).translation = [2.6645352591003757e-15 -1.6653345369377348e-16 -0.30000000000000004];  % cm
smiData.RigidTransform(50).angle = 1.5707963267948966;  % rad
smiData.RigidTransform(50).axis = [-1.5700924586837749e-16 -1.8619136347601276e-16 -1];
smiData.RigidTransform(50).ID = 'F[body-1:-:horn-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(51).translation = [6.783882181415013 0.29999999999999999 0];  % cm
smiData.RigidTransform(51).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(51).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(51).ID = 'B[body-1:-:horn-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(52).translation = [-4.9303806576313238e-32 -5.5511151231257827e-17 -0.30000000000000004];  % cm
smiData.RigidTransform(52).angle = 1.5707963267948979;  % rad
smiData.RigidTransform(52).axis = [-0 3.7243436749960721e-17 -1];
smiData.RigidTransform(52).ID = 'F[body-1:-:horn-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(53).translation = [-4.0000000000000018 0.29999999999999999 -7.5000000000000009];  % cm
smiData.RigidTransform(53).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(53).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(53).ID = 'B[body-1:-:horn-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(54).translation = [-5.1625370645069779e-15 2.2204460492503131e-16 -0.29999999999999999];  % cm
smiData.RigidTransform(54).angle = 2.6516353273360651;  % rad
smiData.RigidTransform(54).axis = [-5.7219584981527968e-17 -2.8609792490763984e-17 -1];
smiData.RigidTransform(54).ID = 'F[body-1:-:horn-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(55).translation = [3.9999999999999987 0.29999999999999999 -7.5000000000000009];  % cm
smiData.RigidTransform(55).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(55).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(55).ID = 'B[body-1:-:horn-6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(56).translation = [2.9976021664879227e-15 -2.2204460492503131e-16 -0.30000000000000004];  % cm
smiData.RigidTransform(56).angle = 0.48995732625373162;  % rad
smiData.RigidTransform(56).axis = [-2.2887833992611034e-16 -2.2887833992611034e-16 -1];
smiData.RigidTransform(56).ID = 'F[body-1:-:horn-6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(57).translation = [0 0 0.20000000000000009];  % cm
smiData.RigidTransform(57).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(57).axis = [1 0 0];
smiData.RigidTransform(57).ID = 'B[horn-4:-:right_leg-2:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(58).translation = [0.99060000000004034 2.1390667986661427 1.0287000000000011];  % cm
smiData.RigidTransform(58).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(58).axis = [-0.57735026918962551 -0.57735026918962595 -0.57735026918962584];
smiData.RigidTransform(58).ID = 'F[horn-4:-:right_leg-2:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(59).translation = [0 0 0.19999999999999993];  % cm
smiData.RigidTransform(59).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(59).axis = [1 0 0];
smiData.RigidTransform(59).ID = 'B[horn-5:-:left_leg-3:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(60).translation = [0.99060000000004433 2.1390667986661431 1.0286999999999984];  % cm
smiData.RigidTransform(60).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(60).axis = [-0.57735026918962562 -0.57735026918962562 -0.57735026918962595];
smiData.RigidTransform(60).ID = 'F[horn-5:-:left_leg-3:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(61).translation = [0 0 0.19999999999999993];  % cm
smiData.RigidTransform(61).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(61).axis = [1 0 0];
smiData.RigidTransform(61).ID = 'B[horn-3:-:left_leg-2:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(62).translation = [0.99060000000003834 2.1390667986661414 1.0287000000000015];  % cm
smiData.RigidTransform(62).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(62).axis = [-0.57735026918962551 -0.57735026918962595 -0.57735026918962584];
smiData.RigidTransform(62).ID = 'F[horn-3:-:left_leg-2:servo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(63).translation = [0 0 0];  % cm
smiData.RigidTransform(63).angle = 0;  % rad
smiData.RigidTransform(63).axis = [0 0 0];
smiData.RigidTransform(63).ID = 'RootGround[body-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(7).mass = 0.0;
smiData.Solid(7).CoM = [0.0 0.0 0.0];
smiData.Solid(7).MoI = [0.0 0.0 0.0];
smiData.Solid(7).PoI = [0.0 0.0 0.0];
smiData.Solid(7).color = [0.0 0.0 0.0];
smiData.Solid(7).opacity = 0.0;
smiData.Solid(7).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.0018258018568560375;  % kg
smiData.Solid(1).CoM = [0 0 0.12900554591714525];  % cm
smiData.Solid(1).MoI = [0.00044131232550362922 0.00044131232550362933 0.00084881090157277691];  % kg*cm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*cm^2
smiData.Solid(1).color = [0.89803921568627454 0.92156862745098034 0.92941176470588238];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'horn*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.13031707326094441;  % kg
smiData.Solid(2).CoM = [0 0.14999999999999999 0];  % cm
smiData.Solid(2).MoI = [2.3501128463436638 3.8471095975626093 1.4989515073178599];  % kg*cm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*cm^2
smiData.Solid(2).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'body*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.027442816807815677;  % kg
smiData.Solid(3).CoM = [3.0424671156408198 2.4201420478612823 0.15000423733602081];  % cm
smiData.Solid(3).MoI = [0.034490485080659231 0.50165270325221001 0.53573155805423112];  % kg*cm^2
smiData.Solid(3).PoI = [1.7322169563528358e-08 -2.0171208337936341e-07 -0.068552172103215861];  % kg*cm^2
smiData.Solid(3).color = [0.20000000000000001 0.20000000000000001 0.20000000000000001];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'tibia*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.0012733876407657759;  % kg
smiData.Solid(4).CoM = [0 0 0.17343270791989898];  % cm
smiData.Solid(4).MoI = [7.1717027572183324e-05 7.1717027572183324e-05 0.00010809860449109637];  % kg*cm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*cm^2
smiData.Solid(4).color = [0.77647058823529413 0.75686274509803919 0.73725490196078436];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'bearing*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.028000000000000001;  % kg
smiData.Solid(5).CoM = [0 7.2943951229905908 13.880359167327041];  % mm
smiData.Solid(5).MoI = [6.2548837497603884 11.371473873339276 8.996902224860559];  % kg*mm^2
smiData.Solid(5).PoI = [0.94072241633416798 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'coxa*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.056009873409757202;  % kg
smiData.Solid(6).CoM = [0.39000521410035571 -0.10141090421768603 0.014472776409308809];  % in
smiData.Solid(6).MoI = [0.021365389530763279 0.014720027444077369 0.012122594427191141];  % kg*in^2
smiData.Solid(6).PoI = [-0.00024023173515556206 8.1772476491707462e-08 -2.0714430412251872e-07];  % kg*in^2
smiData.Solid(6).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = 'servo*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.015302781912612879;  % kg
smiData.Solid(7).CoM = [0 -0.25668496554293518 0.15000000000000002];  % cm
smiData.Solid(7).MoI = [0.0060193118068987417 0.16419523247915241 0.16998500255736199];  % kg*cm^2
smiData.Solid(7).PoI = [0 0 0];  % kg*cm^2
smiData.Solid(7).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = 'femur*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(24).Rz.Pos = 0.0;
smiData.RevoluteJoint(24).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 90.000000000000014;  % deg
smiData.RevoluteJoint(1).ID = '[left_leg-3:servo-2:-:left_leg-3:horn-2]';

smiData.RevoluteJoint(2).Rz.Pos = -90.000000000000014;  % deg
smiData.RevoluteJoint(2).ID = '[left_leg-3:horn-1:-:left_leg-3:servo-3]';

smiData.RevoluteJoint(3).Rz.Pos = 1.2722218725854067e-14;  % deg
smiData.RevoluteJoint(3).ID = '[left_leg-3:bearing-1:-:left_leg-3:coxa-1]';

smiData.RevoluteJoint(4).Rz.Pos = 90.000000000000014;  % deg
smiData.RevoluteJoint(4).ID = '[right_leg-3:servo-2:-:right_leg-3:horn-1]';

smiData.RevoluteJoint(5).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(5).ID = '[right_leg-3:horn-2:-:right_leg-3:servo-3]';

smiData.RevoluteJoint(6).Rz.Pos = -0.010910108015909933;  % deg
smiData.RevoluteJoint(6).ID = '[right_leg-3:bearing-1:-:right_leg-3:coxa-1]';

smiData.RevoluteJoint(7).Rz.Pos = 90.000000000000014;  % deg
smiData.RevoluteJoint(7).ID = '[left_leg-2:servo-2:-:left_leg-2:horn-2]';

smiData.RevoluteJoint(8).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(8).ID = '[left_leg-2:horn-1:-:left_leg-2:servo-3]';

smiData.RevoluteJoint(9).Rz.Pos = 3.2427930053955012e-31;  % deg
smiData.RevoluteJoint(9).ID = '[left_leg-2:bearing-1:-:left_leg-2:coxa-1]';

smiData.RevoluteJoint(10).Rz.Pos = 90;  % deg
smiData.RevoluteJoint(10).ID = '[right_leg-1:servo-2:-:right_leg-1:horn-1]';

smiData.RevoluteJoint(11).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(11).ID = '[right_leg-1:horn-2:-:right_leg-1:servo-3]';

smiData.RevoluteJoint(12).Rz.Pos = -0.010910108015897211;  % deg
smiData.RevoluteJoint(12).ID = '[right_leg-1:bearing-1:-:right_leg-1:coxa-1]';

smiData.RevoluteJoint(13).Rz.Pos = 90.000000000000014;  % deg
smiData.RevoluteJoint(13).ID = '[right_leg-2:servo-2:-:right_leg-2:horn-1]';

smiData.RevoluteJoint(14).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(14).ID = '[right_leg-2:horn-2:-:right_leg-2:servo-3]';

smiData.RevoluteJoint(15).Rz.Pos = -0.010910108015909933;  % deg
smiData.RevoluteJoint(15).ID = '[right_leg-2:bearing-1:-:right_leg-2:coxa-1]';

smiData.RevoluteJoint(16).Rz.Pos = 90;  % deg
smiData.RevoluteJoint(16).ID = '[left_leg-4:servo-2:-:left_leg-4:horn-2]';

smiData.RevoluteJoint(17).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(17).ID = '[left_leg-4:horn-1:-:left_leg-4:servo-3]';

smiData.RevoluteJoint(18).Rz.Pos = 2.9873493185576342e-31;  % deg
smiData.RevoluteJoint(18).ID = '[left_leg-4:bearing-1:-:left_leg-4:coxa-1]';

smiData.RevoluteJoint(19).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(19).ID = '[horn-6:-:right_leg-1:servo-1]';

smiData.RevoluteJoint(20).Rz.Pos = -89.999999999999972;  % deg
smiData.RevoluteJoint(20).ID = '[horn-2:-:left_leg-4:servo-1]';

smiData.RevoluteJoint(21).Rz.Pos = -90.000000000000028;  % deg
smiData.RevoluteJoint(21).ID = '[horn-1:-:right_leg-3:servo-1]';

smiData.RevoluteJoint(22).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(22).ID = '[horn-4:-:right_leg-2:servo-1]';

smiData.RevoluteJoint(23).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(23).ID = '[horn-5:-:left_leg-3:servo-1]';

smiData.RevoluteJoint(24).Rz.Pos = -90;  % deg
smiData.RevoluteJoint(24).ID = '[horn-3:-:left_leg-2:servo-1]';

