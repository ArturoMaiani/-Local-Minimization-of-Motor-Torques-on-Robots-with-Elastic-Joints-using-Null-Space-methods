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



linea_disegnata1=[];

axis equal
axis([0 1.7 -0.8 0.9]) 


n=0;
ln1=line([p_fin(1),p_in(1)],[p_fin(2),p_in(2)],'color','k');
ln1.LineWidth=4;
hold on
for i=1:length(out.simout(:,1))
    
    if mod(i,5)==0
        cla
        n=n+1;
        
        punto_1=double(subs(p1,q1,out.simout(i,1)));
        
     
        punto_2=double(subs(p2,[q1 q2],[out.simout(i,1),out.simout(i,2)]));
        
     
        punto_3=double(subs(p3,[q1 q2 q3],[out.simout(i,1),out.simout(i,2),out.simout(i,3)]));
        
        linea_disegnata1(:,n)=punto_3;
        ln1=line([p_fin(1),p_in(1)],[p_fin(2),p_in(2)],'color','k');
        ln1.LineWidth=4;
        
        
    
        line([0,punto_1(1),punto_2(1),punto_3(1)],[0,punto_1(2),punto_2(2),punto_3(2)],'Color','r','LineWidth',5);
        plot(0, 0, '.b', 'MarkerSize',40)
        plot(punto_1(1), punto_1(2), '.b', 'MarkerSize',40)
        plot(punto_2(1), punto_2(2), '.b', 'MarkerSize',40)
        pause(0.05)
        
    end
    
    if mod(i,5)~=0
        continue
    end
end
hold off

