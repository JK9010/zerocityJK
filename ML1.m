tic
clc;

clear all;

   % The program section to time.
toc
%%
tic
   % The program section to time.
toc
%%
tic
A1 = [9.9, 9900];
A2 = [8.8,  7.7 ; ...
      8800, 7700];
formatSpec = 'X is %4.2f meters or %8.3f mm\n';
fprintf(formatSpec,A1,A2)
toc
%%
tic
x = 100*rand(8,1);
fileID = fopen('nums1.txt','w');
fprintf(fileID,'%4.4f\n',x);
fclose(fileID);
toc

fileID = fopen('nums1.txt','r');
formatSpec = '%f'
A = fscanf(fileID,formatSpec)

%%
tic
clear all;
%패킷 해더 생성
P = 00000001
% UDP (셔틀카 2번에게 전송)
D = 000002
% 호스트 주소(셔틀카 넘버)
S = 000001
% 데이터종류
T = 10
%기본패킷(모두고려)
W_J = 0.00535875
OBTCL =215.47121
AXIS = 100
G_2 = 123 
NS = 5520235487
SS_sum = 1636607768
%Ft_C_ID = fopen
Ft_C_ID =3
Lati =37.41094
Logi =127.09929

S_C = 0
%기어 넘버
G_N = 3
%히든노드 받은게 없으므로 처음엔 0
H = 0
%속도
SPD = 0
pause(0.01);
% 에러검출
F = 000


Header = [P D S T]
Data = [Ft_C_ID Lati Logi S_C G_N SPD H F]
G_Data = [W_J AXIS G_2 NS SS_sum]

PA1 = [Header Data]
G_PA1 = [PA1 G_Data]
toc
%%
tic
clear all;
%패킷 해더 생성
P = 00000001
% UDP (셔틀카 2번에게 전송)
D = 000002
% 호스트 주소(셔틀카 넘버)
S = 000001
% 데이터종류
T = 10
%기본패킷(모두고려)
W_J = 0.00535875
OBTCL =215.47121
AXIS = 100
G_2 = 123 
NS = 5520235487
SS_sum = 1636607768
%Ft_C_ID = fopen
Ft_C_ID =3
Lati =37.41094
Logi =127.09929

S_C = 0
%기어 넘버
G_N = 3
%히든노드 받은게 없으므로 처음엔 0
H = 0
%속도
SPD = 0
pause(0.);
% 에러검출
F = 000


Header = [P D S T]
Data = [Ft_C_ID Lati Logi S_C G_N SPD H F]
G_Data = [W_J AXIS G_2 NS SS_sum]

PA1 = [Header Data]
G_PA1 = [PA1 G_Data]
toc
%%
fileID = fopen('P_S.txt','r');
formatSpec = '%f'
A = fscanf(fileID,formatSpec)
fileID = fopen('G_PS.txt','r');
formatSpec = '%f'
B = fscanf(fileID,formatSpec)


plot(A)
hold on
plot(B)