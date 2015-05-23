vid = VideoReader('boxing.avi');
 numImgs = get(vid, 'NumberOfFrames');
 frames = read(vid);
 obj=VideoWriter('somefile.avi');
 open(obj);

 for i=1:numImgs
     movie(i).cdata=rgb2gray(imresize(frames(:,:,:,i),[160 120]));
     movie(i).colormap=gray;
 end

 writeVideo(obj,movie);
 close(obj);
