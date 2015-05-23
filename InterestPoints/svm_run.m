kmeans_clusters=200;
train_svm
test_svm
labels = cell(599,1);
data_400=[];
for i=1:100
labels{i} = 'jogging';
end
for i=101:200
labels{i} = 'boxing';
end
for i=201:300
labels{i} = 'running';
end
for i=301:400
labels{i} = 'walking';
end
for i=401:500
labels{i} = 'handwaving';
end
for i=501:599
labels{i} = 'handclapping';
end
dirs={'jogging';'boxing';'running';'walking';'handwaving';'handclapping'};
for i=1:length(dirs)
    inputdir=strcat('stip\data\',dirs{j},'_txt\test\');
    action_class=strcat(dirs{j},'_test_',num2str(kmeans_clusters));
    save_dir=strcat(inputdir,action_class,'.mat');
    load(save_dir);
    inputdir=strcat('stip\data\',dirs{j},'_txt\train\');
    action_class=strcat(dirs{j},'_train_',num2str(kmeans_clusters));
    save_dir=strcat(inputdir,action_class,'.mat');
    load(save_dir);
end
data_200=[jogging,jogging_test,boxing,boxing_test,running,running_test,walking,walking_test,handwaving,handwaving_test,handclapping,handclapping_test];
data_200=data_200';
save(strcat('kth_',num2str(kmeans_clusters)),'data_200','labels');