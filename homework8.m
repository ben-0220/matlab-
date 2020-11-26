x = -2:0.1:2 ;
y = -2:0.1:2 ;

[xx,yy]=meshgrid(x,y);
zz=exp(-abs(xx).*abs(yy)./sqrt(xx.^2+yy.^2));
[fx,fy]=gradient(zz);

contourf(xx,yy,zz)
colormap('jet')
colorbar
hold on
quiver(xx,yy,fx,fy)
hold off 