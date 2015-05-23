tic;
dirs={'jogging';'boxing';'running';'walking';'handwaving';'handclapping'};
kmeans_clusters=200;
min =1;
max = 199;
for j = 1:length(dirs)
    inputdir=strcat('stip\data\',dirs{j},'_txt\train\');
    action_class=strcat(dirs{j},'_train_',num2str(kmeans_clusters));
    train_directory = dir(fullfile(inputdir,'*.txt'));
    switch dirs{j}
        case 'jogging'
        jogging=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           jogging=[jogging,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'jogging');
        case 'boxing'
        boxing=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           boxing=[boxing,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'boxing');
        case 'running'
        running=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           running=[running,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'running');
        case 'walking'
        walking=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           walking=[walking,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'walking');
        case 'handclapping'
        handclapping=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           handclapping=[handclapping,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'handclapping');
        case 'handwaving'
        handwaving=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           handwaving=[handwaving,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'handwaving');
    end

end
toc;
