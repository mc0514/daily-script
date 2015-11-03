

clc
clear all
%get the data to it's folder
%get all files to process
tic
format
filename=dir('*.mat');
%get length
len=length(filename);
%change to struct2cell value
tempcell=struct2cell(filename);
tempname=tempcell(1,:);
% for index=1:len
%     A=load(char(tempname(index)));
%     
%     if ~isempty(strfind(tempname(index),'smc_f'));
%          name=strtok(tempname(index),'.');
%          savepath=strcat('E:\\ADHD最新处理数据\\adhd_control_ave\\adhd-ave\\adhd_ave\\a_smc_f\\',name,'.mat');
%          B=struct2cell(A);
%          B=cell2mat(B);
%          save(char(savepath),'B');
%        else if~isempty((strfind(tempname(index),'smc_p')));
%          name=strtok(tempname(index),'.');
%          savepath=strcat('E:\\ADHD最新处理数据\\adhd_control_ave\\adhd-ave\\adhd_ave\\a_smc_p\\',name,'.mat');
%          B=struct2cell(A);
%          B=cell2mat(B);
%          save(char(savepath),'B');
%      
%            else if ~isempty((strfind(tempname(index),'smi_f')));
%          name=strtok(tempname(index),'.');
%          savepath=strcat('E:\\ADHD最新处理数据\\adhd_control_ave\\adhd-ave\\adhd_ave\\a_smi_f\\',name,'.mat');
%          B=struct2cell(A);
%          B=cell2mat(B);
%          save(char(savepath),'B');
%    
%                else if ~isempty((strfind(tempname(index),'smi_p')));
%          name=strtok(tempname(index),'.');
%          savepath=strcat('E:\\ADHD最新处理数据\\adhd_control_ave\\adhd-ave\\adhd_ave\\a_smi_p\\',name,'.mat');
%          B=struct2cell(A);
%          B=cell2mat(B);
%          save(char(savepath),'B');
%      
%                    else if~isempty((strfind(tempname(index),'stc_f')));
%          name=strtok(tempname(index),'.');
%          savepath=strcat('E:\\ADHD最新处理数据\\adhd_control_ave\\adhd-ave\\adhd_ave\\a_stc_f\\',name,'.mat');
%          B=struct2cell(A);
%          B=cell2mat(B);
%          save(char(savepath),'B');
%                          else if~isempty((strfind(tempname(index),'stc_p')));
%          name=strtok(tempname(index),'.');
%          savepath=strcat('E:\\ADHD最新处理数据\\adhd_control_ave\\adhd-ave\\adhd_ave\\a_stc_p\\',name,'.mat');
%          B=struct2cell(A);
%          B=cell2mat(B);
%          save(char(savepath),'B');
%      
%                              else if~isempty((strfind(tempname(index),'sti_f')));
%          name=strtok(tempname(index),'.');
%          savepath=strcat('E:\\ADHD最新处理数据\\adhd_control_ave\\adhd-ave\\adhd_ave\\a_sti_f\\',name,'.mat');
%          B=struct2cell(A);
%          B=cell2mat(B);
%          save(char(savepath),'B');
%     
%                                  else if~isempty((strfind(tempname(index),'sti_p')));
%          name=strtok(tempname(index),'.');
%          savepath=strcat('E:\\ADHD最新处理数据\\adhd_control_ave\\adhd-ave\\adhd_ave\\a_sti_p\\',name,'.mat');
%          B=struct2cell(A);
%          B=cell2mat(B);
%          save(char(savepath),'B');
%                                      end
%                                  end
%                              end
%                        end
%                    end
%                end
%            end
%     end
% end
%     
% toc
%%
for index=1:len
    A=load(char(tempname(index)));
    B=struct2cell(A);
    B=cell2mat(B);
    name=strtok(tempname(index),'.');
    savepath1=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/a_smc_f/',name,'.mat');
    savepath2=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/a_smc_p/',name,'.mat');
    savepath3=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/a_smi_f/',name,'.mat');
    savepath4=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/a_smi_p/',name,'.mat');
    savepath5=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/a_stc_f/',name,'.mat');
    savepath6=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/a_stc_p/',name,'.mat');
    savepath7=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/a_sti_f/',name,'.mat');
    savepath8=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/a_sti_p/',name,'.mat');
    savepathother=strcat('/home/chao/matlab_workspace/data_split_folder/adhd_ave/adhd_data_feature/',name,'.mat');
    tempname(index)
    %k=~isempty(strfind(tempname(index),'smc_f'))
    if ~isempty(strfind(char(tempname(index)),'smc_f'))
        %strfind(tempname(index),'smc_f')
        savepath1
       save(char(savepath1),'B');
    elseif ~isempty(strfind(char(tempname(index)),'smc_p'))
        savepath2
       save(char(savepath2),'B');
    elseif ~isempty(strfind(char(tempname(index)),'smi_f'))
        savepath3
       save(char(savepath3),'B');
    elseif ~isempty(strfind(char(tempname(index)),'smi_p'))
        savepath4
       save(char(savepath4),'B');
    elseif ~isempty(strfind(char(tempname(index)),'stc_f'))
        savepath5
       save(char(savepath5),'B');
    elseif ~isempty(strfind(char(tempname(index)),'stc_p'))
        savepath6
       save(char(savepath6),'B');
    elseif ~isempty(strfind(char(tempname(index)),'sti_f'))
        savepath7
       save(char(savepath7),'B');
    elseif ~isempty(strfind(char(tempname(index)),'sti_p'))
        savepath8
       save(char(savepath8),'B');
    else
        save(char(savepathother),'B');

        
    end
end


