% load fisheriris
% train_label={zeros(30,1),ones(30,1),2*ones(30,1)};
% train_cell={meas(1:30,:),meas(51:80,:),meas(101:130,:)};
% [svmstruct,level] = Train_DSVM(train_cell,train_label);
% label=[0 1 2];
% test_mat=[meas(31:40,:);meas(81:90,:);meas(131:140,:)];
% [Class_test] = Classify_DSVM(test_mat,label,svmstruct,level);
% labels=[zeros(1,10),ones(1,10),2*ones(1,10)];
% [Cmat,DA]= confusion_matrix(Class_test,labels,{'A','B','C'})

load fisheriris
train_label={zeros(11,1),ones(11,1),2*ones(11,1),3*ones(11,1),4*ones(11,1),5*ones(11,1)};
train_cell={meas(1:11,:),meas(23:33,:),meas(45:55,:),meas(65:77,:),meas(89:99,:),meas(111:121,:)};
[svmstruct,level] = Train_DSVM(train_cell,train_label);
label=[0 1 2 3 4 5];
test_mat=[meas(12:22,:);meas(34:44,:);meas(56:66,:),meas(78:88,:),meas(100:110,:),meas(122:132,:)];
[Class_test] = Classify_DSVM(test_mat,label,svmstruct,level);
labels=[zeros(1,11),ones(1,11),2*ones(1,11),3*ones(11,1),4*ones(11,1),5*ones(11,1)];
[Cmat,DA]= confusion_matrix(Class_test,labels,{'A','B','C','D','E','F'})