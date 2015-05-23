dirs={'jogging';'boxing';'running';'walking';'handwaving';'handclapping'};
for j = 1:length(dirs)
  dir=strcat('stip\data\',dirs{j},'_txt\train\',dirs{j},'_train_50.mat');
  dir1=strcat('stip\data\',dirs{j},'_txt\test\',dirs{j},'_test_50.mat');
  load(dir)
  load(dir1)
end
train_label={ones(52,1),2*ones(52,1),3*ones(52,1),4*ones(52,1),5*ones(52,1),6*ones(51,1)};
train_cell={jogging',boxing',running',walking',handwaving',handclapping'};
test_mat=[jogging_test',boxing_test',running_test',walking_test',handwaving_test',handclapping_test'];
[svmstruct,level] = Train_DSVM(train_cell,train_label);
label=[1,2,3,4,5,6];
[Class_test] = Classify_DSVM(test_mat,label,svmstruct,level);
labels=[ones(48,1),2*ones(48,1),3*ones(48,1),4*ones(48,1),5*ones(48,1),6*ones(48,1)];
[Cmat,DA]= confusion_matrix(Class_test,labels,{'jogging','boxing','running','walking','handwaving','handclapping'});

% train_label={ones(52,1),2*ones(52,1),3*ones(52,1)};
% train_cell={jogging',boxing',running'};
% [svmstruct,level] = Train_DSVM(train_cell,train_label);
% label=[1,2,3];
% test_mat=[jogging_test',boxing_test',running_test'];
% [Class_test] = Classify_DSVM(test_mat,label,svmstruct,level);
% labels=[ones(48,1),2*ones(48,1),3*ones(48,1)];
% [Cmat,DA]= confusion_matrix(Class_test,labels,{'jogging','boxing','running'});

% train_label={ones(52,1),2*ones(52,1),3*ones(52,1),4*ones(52,1)};
% train_cell={jogging,boxing,running,walking};
% [svmstruct,level] = Train_DSVM(train_cell,train_label);
% label=[1,2,3,4,5,6];
% test_mat=[jogging_test,boxing_test,running_test,walking_test];
% [Class_test] = Classify_DSVM(test_mat,label,svmstruct,level);
% labels=[ones(48,1),2*ones(48,1),3*ones(48,1),4*ones(48,1)];
% [Cmat,DA]= confusion_matrix(Class_test,labels,{'jogging','boxing','running','walking'});
