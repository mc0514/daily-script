clear
clc

%get all files to process
filename=dir('*.mat');
%get the number of the files
len=length(filename);

tempcell=struct2cell(filename);
tempname=tempcell(1,:);

for index=1:len
    %get each subjects' name
    index
    name=strtok(tempname(index),'-');
    
%     aa=strcat(name,'-sist.fil.mat');
%     ss=char(aa)
%     A=load(ss);
    A=load(char(tempname(1)));
    sname=fieldnames(A);
    for i=1:4
        tempdata=getfield(A,{1},char(sname(1)));
        datakind=strtok(sname(i),'_');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        data=tempdata(1:128,:);
        [M,N] = size(data);
        mn = mean(data,2);
        data1 = data - repmat(mn,1,N);
        Y = data1'/sqrt(N-1);
        % a=zscore(data');
        [u,S,PC_svd] = svd(Y);%
        S1 = diag(S);%
        V_svd = S1 .* S1;%

        for i=1:M
            eigval_svd(i,i)=blkdiag(V_svd(i,1));%
        end

% project the original data
% signals=PC_svd'*data;

        expvar_svd=(100*V_svd/sum(V_svd))';%
        var_svd=cumsum(expvar_svd);%

%figure;
%plot(V_svd,'r*');%


        covariance=1/(N-1)*data1*data1';%
% aa=cov(data1');
        [PC,V]=eig(covariance);%
        V_cov_diag=diag(V);%

        [junk1,rindices1]=sort(-1*V_cov_diag);%
        V_cov=V_cov_diag(rindices1);%
        PC_cov=PC(:,rindices1);%

        expvar_cov=(100*V_cov_diag/sum(V_cov_diag))';%
        % project the original data
        % signals=PC_cov'*data;
        var_cov=cumsum(expvar_cov);%



        [junk2,rindices2]=sort(-1*PC_svd);%
        [coef_princomp,score,s_princomp,Tsquare]=princomp(data');
        expvar=(100*s_princomp/sum(s_princomp))';
        var1=cumsum(expvar);
 

        sum_sprincomp=sum(s_princomp);
        S = cov(data');
        sum_S=sum(diag(S));
        PC_ratio=diag(S)/sum(diag(S));
        [junk3,rindices3]=sort(-1*PC_ratio);


        %data_control_chenweibing_stc_pca=rindices3'
        savedata=rindices3';
        savedataname=strcat('data_control_',name,'_',datakind,'_pca');
        eval([char(savedataname),'=','savedata;'])
        savename=strcat('data_control_',name,'_',datakind,'_pca.mat');
        %save data_control_chenweibing_stc_pca.mat data_control_chenweibing_stc_pca;
        save(char(savename),char(savedataname));
      end
end
