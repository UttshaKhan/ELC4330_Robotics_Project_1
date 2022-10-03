function draw_frame(pts,frame_num,col)
 hold on;
 
 %draw three axes
 quiver3(pts(1,1),pts(2,1),pts(3,1),pts(1,2)-pts(1,1),pts(2,2)-pts(2,1),pts(3,2)-pts(3,1),col,"LineWidth",1.5,'MaxHeadSize',0.5)
 quiver3(pts(1,1),pts(2,1),pts(3,1),pts(1,3)-pts(1,1),pts(2,3)-pts(2,1),pts(3,3)-pts(3,1),col,"LineWidth",1.5,'MaxHeadSize',0.5)
 quiver3(pts(1,1),pts(2,1),pts(3,1),pts(1,4)-pts(1,1),pts(2,4)-pts(2,1),pts(3,4)-pts(3,1),col,"LineWidth",1.5,'MaxHeadSize',0.5)
 
 %draw extension -- line for Z axis 
 quiver3(pts(1,1),pts(2,1),pts(3,1),pts(1,4)-pts(1,1),pts(2,4)-pts(2,1),pts(3,4)-pts(3,1),10,"--"+col,"LineWidth",.25,'ShowArrowHead','off')
 quiver3(pts(1,4),pts(2,4),pts(3,4),pts(1,1)-pts(1,4),pts(2,1)-pts(2,4),pts(3,1)-pts(3,4),10,"--"+col,"LineWidth",.25,'ShowArrowHead','off')
 
 %draw extension .. line for x axis
 quiver3(pts(1,1),pts(2,1),pts(3,1),pts(1,2)-pts(1,1),pts(2,2)-pts(2,1),pts(3,2)-pts(3,1),10,":"+col,"LineWidth",.25,'ShowArrowHead','off')
 quiver3(pts(1,2),pts(2,2),pts(3,2),pts(1,1)-pts(1,2),pts(2,1)-pts(2,2),pts(3,1)-pts(3,2),10,":"+col,"LineWidth",.25,'ShowArrowHead','off')
 
 %label the axes
 axis_o="0_"+frame_num;
 axis_x="x_"+frame_num;
 axis_y="y_"+frame_num;
 axis_z="z_"+frame_num;
 text(pts(1,1),pts(2,1),pts(3,1),axis_o,'Color',col)
 text(pts(1,2),pts(2,2),pts(3,2),axis_x,'Color',col)
 text(pts(1,3),pts(2,3),pts(3,3),axis_y,'Color',col)
 text(pts(1,4),pts(2,4),pts(3,4),axis_z,'Color',col)

end