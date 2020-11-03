clear
clc
format short G
% Contiguity Matrix
cm =[0 1 1 1 1 1 1 1
    1 0 1 0 0 0 0 1
    1 1 0 1 0 0 0 0
    1 0 1 0 1 0 0 0
    1 0 0 1 0 1 0 0
    1 0 0 0 1 0 1 0
    1 0 0 0 0 1 0 1
    1 1 0 0 0 0 1 0];

% Sum of Contiguity Matrix Rows
s = sum(cm,2);

% Row Standardized Spatial Weights Matrix
w = cm./s;

% BangKhlo_g_TOTAL = 8372
% WatPhrayaKrai_g_TOTAL = 6621
% BangKhoLaem_g_TOTAL = 6085
% BangPakok_g_TOTAL = 9022
% RatBurana_g_TOTAL = 6853
% BangPhongPang_g_TOTAL = 6628
% ChongNonsi_g_TOTAL = 10327
% ThungWatDon_g_TOTAL = 9706
x = [8372
    6621
    6085
    9022
    6853
    6628
    10327
    9706];

% Z-Scores for a Population  https://www.mathworks.com/help/stats/zscore.html
z = zscore(x,1);

% LISA
I = z.*(w*z);