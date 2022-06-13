% This code plots the animation for the circular trajectory case
% approximate duration fo the animation= 20 seconds
syms q1 q2 q3

l1=1;
l2=1;
l3=1;


p1=[l1*cos(q1);
    l1*sin(q1)];

p2=[l1*cos(q1)+l2*cos(q1+q2);
    l1*sin(q1)+l2*sin(q1+q2)];




p3=[l1*cos(q1)+l2*cos(q1+q2)+l3*cos(q1+q2+q3);
    l1*sin(q1)+l2*sin(q1+q2)+l3*sin(q1+q2+q3)];



n=0;
linea_disegnata=[];
hold on
axis equal
axis([-1.8 0.3 -0.9 1.7])

for i=1:length(out.simout(:,1))
    
    if mod(i,5)==0
        
        
       
        cla

        n=n+1;
        
        punto_1=double(subs(p1,q1,out.simout(i,1)));
        
     
        punto_2=double(subs(p2,[q1 q2],[out.simout(i,1),out.simout(i,2)]));
        
     
        punto_3=double(subs(p3,[q1 q2 q3],[out.simout(i,1),out.simout(i,2),out.simout(i,3)]));
        
        linea_disegnata(:,n)=punto_3;
        
R=0.4;
x_0=-0.4;

y_0=1;
ezplot(@(x,y) (x-x_0).^2 + (y-y_0).^2-R^2)
ln2=line(linea_disegnata(1,:),linea_disegnata(2,:),'color','k');
ln2.LineWidth=2;
        
    
        line([0,punto_1(1),punto_2(1),punto_3(1)],[0,punto_1(2),punto_2(2),punto_3(2)],'Color','r','LineWidth',5);
        plot(0, 0, '.b', 'MarkerSize',40)
        plot(punto_1(1), punto_1(2), '.b', 'MarkerSize',40)
        plot(punto_2(1), punto_2(2), '.b', 'MarkerSize',40)
        pause(0.02) %pausa necessaria per far durare circa 20 secondi l'animazione 
        
    end
    
    if mod(i,5)~=0
        continue
    end
end
hold off
