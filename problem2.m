for theta=0:0.01:10;
for a= 0:0.5:2
hold on
polar (theta , a*sin(2*theta))
end
end
box on
xlabel('\theta')
ylabel('r')
print("MyPNG2thea.png", "-dpng")
