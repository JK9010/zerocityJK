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
%��Ŷ �ش� ����
P = 00000001
% UDP (��Ʋī 2������ ����)
D = 000002
% ȣ��Ʈ �ּ�(��Ʋī �ѹ�)
S = 000001
% ����������
T = 10
%�⺻��Ŷ(��ΰ��)
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
%��� �ѹ�
G_N = 3
%������ ������ �����Ƿ� ó���� 0
H = 0
%�ӵ�
SPD = 0
pause(0.01);
% ��������
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
%��Ŷ �ش� ����
P = 00000001
% UDP (��Ʋī 2������ ����)
D = 000002
% ȣ��Ʈ �ּ�(��Ʋī �ѹ�)
S = 000001
% ����������
T = 10
%�⺻��Ŷ(��ΰ��)
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
%��� �ѹ�
G_N = 3
%������ ������ �����Ƿ� ó���� 0
H = 0
%�ӵ�
SPD = 0
pause(0.);
% ��������
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