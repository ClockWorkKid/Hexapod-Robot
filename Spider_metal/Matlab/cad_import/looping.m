%clear all, close all
clc

angles = zeros(2,3,3);
flags = zeros(2,3,3);
points = zeros(2,3,4,3);

% Initialize angles
for side = 1:2
    for serial = 1:3
        angles(side,serial,1) = 90;
        angles(side,serial,2) = 90;
        angles(side,serial,3) = 90;
    end
end
angles = rad(angles);
targetPos = angles;
flags = flags+1;

%% Simulate  motion

interface = figure(1);

while ishandle(interface)
    
    targetPos(1,1,2) = rad(70);
    targetPos(2,2,2) = rad(70);
    targetPos(1,3,2) = rad(70);
    update_all();
    
    targetPos(1,1,1) = rad(100);
    targetPos(2,2,1) = rad(100);
    targetPos(1,3,1) = rad(100);
    targetPos(2,1,1) = rad(80);
    targetPos(1,2,1) = rad(80);
    targetPos(2,3,1) = rad(80);
    update_all();
    
    targetPos(1,1,2) = rad(90);
    targetPos(2,2,2) = rad(90);
    targetPos(1,3,2) = rad(90);
    update_all();
    
    targetPos(2,1,2) = rad(70);
    targetPos(1,2,2) = rad(70);
    targetPos(2,3,2) = rad(70);
    update_all();
    
    targetPos(1,1,1) = rad(80);
    targetPos(2,2,1) = rad(80);
    targetPos(1,3,1) = rad(80);
    targetPos(2,1,1) = rad(100);
    targetPos(1,2,1) = rad(100);
    targetPos(2,3,1) = rad(100);
    update_all();
    
    targetPos(2,1,2) = rad(90);
    targetPos(1,2,2) = rad(90);
    targetPos(2,3,2) = rad(90);
    update_all();
    
end



%% Functions

function theta = rad(theta)
theta = pi/180*theta;
end

function update_all()
global flags;

while true
    update_pos();
    update_points();
    show_bot();
    drawnow
    if length(find(flags)) == 18
        break
    end
end
end

function update_pos()
global angles targetPos flags;

step_angle = rad(1);

for side = 1:2
    for serial = 1:3
        for joint = 1:3
            dir = 1;
            if abs(angles(side,serial,joint)-targetPos(side,serial,joint)) > step_angle
                flags(side,serial,joint) = 0;
                if(angles(side,serial,joint)>targetPos(side,serial,joint))
                    dir = -dir;
                end
                angles(side,serial,joint) = angles(side,serial,joint) + dir*step_angle;
            else
                flags(side,serial,joint) = 1;
            end
        end
    end
end
end

function update_points()
global a b c d e D angles points;

for side = 1:2
    for serial = 1:3
        A = angles(side,serial,1);
        B = angles(side,serial,2);
        C = angles(side,serial,3);
        
        angle = (serial - 2)*D;
        offset = d*(serial==2) + e*(serial~=2);
        
        trans1 = [cos(A),0,0; 0,sin(A),0; 0,0,1];
        trans2 = [cos(angle),sin(angle),0;...
            -sin(angle),cos(angle),0;...
            0,0,1];
        
        P = [0;0;0];
        Q = [-a;a;0];
        R = [-(a+b*sin(B));(a+b*sin(B));b*cos(B)];
        S = [-(a+b*sin(B)+c*sin(C-B));(a+b*sin(B)+c*sin(C-B));b*cos(B)-c*cos(C-B)];
        
        positions = [P,Q,R,S];
        positions = trans1*positions;
        positions(2,:) = positions(2,:)+offset;
        positions = trans2*positions;
        if side==2
            positions(2,:) = -positions(2,:);
        end
        points(side,serial,:,:) = positions';
    end
end
end

function show_bot()
global points;

body = zeros(3,6);
for side = 1:2
    for serial = 1:3
        body(:,3*(side-1)+serial) = points(side,serial,1,:);
        x = points(side,serial,:,1);
        y = points(side,serial,:,2);
        z = points(side,serial,:,3);
        x = x(:); y = y(:); z = z(:);
        plot3(x,y,z,'linewidth',5),hold on;
    end
end
fill3(body(1,:),body(2,:),body(3,:),[0.5 0.5 0.5]);
lims = [-25,25];
xlim(lims),ylim(lims),zlim(lims);
hold off;
end

