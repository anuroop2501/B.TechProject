tic;
dirs={'jogging';'boxing';'running';'walking';'handwaving';'handclapping'};
kmeans_clusters=200;
min = 1;
max = 199;
for j = 1:length(dirs)
    inputdir=strcat('stip\data\',dirs{j},'_txt\test\');
    action_class=strcat(dirs{j},'_test_',num2str(kmeans_clusters));
    train_directory = dir(fullfile(inputdir,'*.txt'));
    switch dirs{j}
        case 'jogging'
        jogging_test=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           jogging_test=[jogging_test,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat')
        save(save_dir,'jogging_test');
        case 'boxing'
        boxing_test=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           boxing_test=[boxing_test,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'boxing_test');
        case 'running'
        running_test=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           running_test=[running_test,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'running_test');
        case 'walking'
        walking_test=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           walking_test=[walking_test,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'walking_test');
        case 'handclapping'
        handclapping_test=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           handclapping_test=[handclapping_test,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'handclapping_test');
        case 'handwaving'
        handwaving_test=[];
        for i = 1:length(train_directory)
           fileRead = strcat(inputdir,train_directory(i).name);
           [~,fileName,~] = fileparts(fileRead);
           [pos,val,dscr]=readstips_text(fileRead);
           [centers,label_matrix,mindist]=kmeans(dscr,kmeans_clusters);
           fprintf('Found labels for %s.avi. Size of label is %d,%d\n',fileName,size(label_matrix));
           [h]=hist(label_matrix,[min:max]);
           handwaving_test=[handwaving_test,h'];
           fprintf('Found histogram for %s.. Size of histogram is %d,%d\n',fileName,size(h));
        end
        save_dir=strcat(inputdir,action_class,'.mat');
        save(save_dir,'handwaving_test');
    end
end
toc;
