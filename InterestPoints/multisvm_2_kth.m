% Libsvm
%# Fisher Iris dataset
load('kth_400.mat');
[~,~,labels] = unique(labels);   %# labels: 1/2/3
data = zscore(data);              %# scale features
numInst = size(data,1);
numLabels = max(labels);

%# split training/testing
acc_arr=[];
idx = randperm(numInst);
%for i = 300:580
    numTrain = 450; numTest = numInst - numTrain;
    trainData = data(idx(1:numTrain),:);  testData = data(idx(numTrain+1:end),:);
    trainLabel = labels(idx(1:numTrain)); testLabel = labels(idx(numTrain+1:end));
    %# train one-against-all models
    model = cell(numLabels,1);
    for k=1:numLabels
        model{k} = svmtrain(double(trainLabel==k), trainData, '-c 1 -g 0.2 -b 1');
    end

    %# get probability estimates of test instances using each model
    prob = zeros(numTest,numLabels);
    for k=1:numLabels
        [~,~,p] = svmpredict(double(testLabel==k), testData, model{k}, '-b 1');
        prob(:,k) = p(:,model{k}.Label==1);    %# probability of class==k
    end

    %# predict the class with the highest probability
    [~,pred] = max(prob,[],2);
    acc = sum(pred == testLabel) ./ numel(testLabel)    %# accuracy
    C = confusionmat(testLabel, pred)                  %# confusion matrixmu
    %acc_arr=[acc_arr,acc];
%end