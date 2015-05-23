inputdir=strcat('stip\data\','jogging','_txt\train\');
train_directory = dir(fullfile(inputdir,'*.txt'));
fileRead = strcat(inputdir,train_directory(1).name);
[~,fileName,~] = fileparts(fileRead);
[pos,val,dscr]=readstips_text(fileRead);
[centers,label_matrix,mindist]=kmeans(dscr,200);
max(label_matrix)
min(label_matrix)