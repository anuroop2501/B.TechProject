stippath='stip/data/boxing_txt/train';
[pos1,val1,dscr1]=readstips_text([stippath '/person02_boxing_d1_uncomp.txt']);
scatter3(pos1(:,2),pos1(:,1),pos1(:,3));
title('STIPs Plot')
xlabel('x-axis')
ylabel('y-axis')
zlabel('t-axis')