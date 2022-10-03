function draw_mesh(type,T,k)
    hold on;
    if type==1
        data = stlread('cylinder.stl');
    elseif type==2
        data = stlread('prism.stl');
    else 
        eror('oops! Dont o that!')
    end
    points = [data.Points(:,1)'; data.Points(:,2)'; data.Points(:,3)';ones(1,size(data.Points,1))];
    scale=[k 0 0 0;0 k 0 0; 0 0 k 0;0 0 0 1];
    points=T*scale*points;
    points=points(1:3,:);
    ndata.Points=[points(1,:)' points(2,:)' points(3,:)'];
    ndata.ConnectivityList=data.ConnectivityList;
    TO = triangulation(ndata.ConnectivityList,ndata.Points(:,1),ndata.Points(:,2),ndata.Points(:,3));
    trimesh(TO,'FaceColor','r','EdgeColor','none','FaceAlpha',.5)
end