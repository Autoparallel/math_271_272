[x,y,z]=meshgrid(-.05:.001:.05,-.05:.001:.05,-.05:.001:.05);
[theta, phi, r]=cart2sph(x,y,z);
f = @(theta, phi,r) (3/(4*pi))^(.5)*r.*exp(-r/100).*cos(theta).*sin(phi);
fvals=f(theta,phi,r);
%sl=slice(x, y, z, fvals,[-.04 -.02 0 .02 .04], [], 0);
%set(sl,'edgecolor','none')

isosurface(x,y,z,fvals, 0.001)
h=findobj(gca,'type','patch')
set(h,'facealpha',0.5)