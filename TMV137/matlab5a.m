u0=[2.3, 2.3];
[t,U]=ode45(@fuck,[0 2],u0);
figure(1), clf
plot(t,U(:,1),t,U(:,2), 'r--')
