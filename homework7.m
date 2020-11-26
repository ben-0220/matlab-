x=linspace(-3,3,30);
y=linspace(-3,3,30);
[xx,yy]=meshgrid(x,y);
z=3*(1-xx).^2.*exp(-xx.^2-(yy+1).^2)-10.*(xx./5-x.^3-yy.^5).*exp(-xx.^2-yy.^2)-1/3.*exp(-(xx+1).^2-yy.^2);
meshc(xx,yy,z);
colormap('default')
colorbar 
