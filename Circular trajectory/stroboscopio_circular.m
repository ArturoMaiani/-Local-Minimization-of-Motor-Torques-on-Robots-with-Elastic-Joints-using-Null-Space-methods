% CODE FOR STROBOSCOPIC SIMULATION
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

hold on
linea_disegnata1=[];

axis([-1.8 0.2 -0.5 1.5]) 
axis square
n=0;


for i=1:length(out.simout(:,1))/1.8  %STROBOSCOPIC VIEW OF APPROX. HALF OF THE SIMULATION FOR GRAPHIC PURPOSES
    
    if mod(i,25)==0
        
        n=n+1;
        
        punto_1=double(subs(p1,q1,out.simout(i,1)));
     
        punto_2=double(subs(p2,[q1 q2],[out.simout(i,1),out.simout(i,2)]));
     
        punto_3=double(subs(p3,[q1 q2 q3],[out.simout(i,1),out.simout(i,2),out.simout(i,3)]));
        
        linea_disegnata1(:,n)=punto_3;
        if i<length(out.simout(:,1))/3
            line([0,punto_1(1),punto_2(1),punto_3(1)],[0,punto_1(2),punto_2(2),punto_3(2)],'Color','g','LineWidth',2);

        end

        if i>length(out.simout(:,1))/3  & i<length(out.simout(:,1))/2
            line([0,punto_1(1),punto_2(1),punto_3(1)],[0,punto_1(2),punto_2(2),punto_3(2)],'Color','b','LineWidth',2);

        end
        if i>length(out.simout(:,1))/2  & i<length(out.simout(:,1))
            line([0,punto_1(1),punto_2(1),punto_3(1)],[0,punto_1(2),punto_2(2),punto_3(2)],'Color','r','LineWidth',2);

        end
        pause(0.05)
    end
    
    if mod(i,25)~=0
        continue
    end
end

%PLOT OF THE DESIRED TRAJECTORY
R=0.4;
x_0=-0.4;
y_0=1;
ezplot(@(x,y) (x-x_0).^2 + (y-y_0).^2-R^2)
ln2=line(linea_disegnata1(1,:),linea_disegnata1(2,:),'color','k');
ln2.LineWidth=2;
hold off
