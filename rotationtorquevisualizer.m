

Directory = '/eno/cllee3/DATA/241001/run1/'

rotation = 'rotdrift.txt'
torque = '/smoothtorque.mat'
chdir(Directory)

load(rotation)
load(['torque/',torque ])





plot(cumsum(rotdrift(:,1)))

image_number = 5*(1:size(rotdrift(:,1)));

plot(image_number, rotdrift(:,1))
hold on;
yyaxis right
plot(t, smTorque)
chdir('./torque/')
saveas(gcf,'torquerotation.jpg')

