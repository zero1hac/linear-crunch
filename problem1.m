[x,y] = meshgrid(-1:0.2:1, -1:0.1:1);
xdot = -y-x;
ydot = -2*x -4*y;
quiver(x, y, xdot, ydot)
xlabel('x')
ylabel('y')
print("MyPNG2_22.png", "-dpng")
