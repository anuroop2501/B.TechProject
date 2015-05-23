tic;
inputdir = 'stip\data\testing\';
outdir = 'stip\data\testing_txt\';
command='stip\bin\stipdet.exe';
videofile = dir(fullfile(inputdir,'*.avi'));
for i = 1:length(videofile)
    tic;
    fileRead = strcat(inputdir,videofile(i).name);
    [~,fileName,~] = fileparts(fileRead);
    output = strcat(fileName,'.txt');
    outText = strcat(outdir,output);
    inputVideo = strcat(inputdir,videofile(i).name);
    fprintf('%s -f %s -o %s\n',command,inputVideo,outText);
    [status,out]=dos(sprintf('%s -f %s -o %s',command,inputVideo,outText)); 
    toc;
end
toc;
