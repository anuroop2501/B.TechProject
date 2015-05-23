function [f1] = wmvReadImageSave(videoPath,frame)

obj = VideoReader(videoPath);
%%cd(imageSavePath);
[pathstr,video_name,ext]=fileparts(videoPath);
vidFrames=read(obj);
f1=[];
nFrames=obj.NumberOfFrames;
for i=frame(1):frame(2)
    imshow(vidFrames(:,:,i),[]);  %frames are grayscale
    dim=size(vidFrames(:,:,i));
    if(dim==3)
       video=rgb2gray(vidFrames(:,:,i));
    else
       video=vidFrames(:,:,i);
    end
    f1(:,:,i)=video;
end
end