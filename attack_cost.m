clear all
close all

results9 = rundcpf('case9');
h9 = makeJac(results9);
ans9 = full(h9);
Tuning_parameter=0.1; % Tuning parameter
count = zeros(1,length(ans9));
x = zeros(1,length(ans9));
for i=1:length(ans9)
    for j=1:length(ans9)
        if ans9(i,j) ~= 0
            ans9(i,j)=1;
            
        end 
    end
end
disp('H* = ')
disp(ans9)
ans9 = transpose(ans9);
disp('Transpose(H*) =')
disp(ans9);

Hmatrix=ans9;
for i=1:length(ans9)
    x(i)=i;
    for j=1:length(ans9)
        if ans9(i,j) == 1
            count(i)=count(i)+1;
            
        end 
    end
    count(i)=count(i)*1.2;
end
R=[1,1,1,1,1,1,1,1,1,1,1,1,1,1]
b=[1,1,1,1,1,1,1,1,1,1,1,1,1,1]
I=1
  for i=1:length(ans9)
      b9(i)=1;
      R9(i)=1;
  end    


Hmatrix = Hmatrix*2;
D=Hmatrix*I;
D=D*Tuning_parameter;
F=I-D;
Hmatrix=R-Hmatrix;
y= linprog(b9,h9,R9);
disp(count)
%-------------------------------------IEEE BUS  14-------------------------

results14 = rundcpf('case14');
h14 = makeJac(results14);
ans14 = full(h14);
Tuning_parameter=0.1; % Tuning parameter
count = zeros(1,length(ans14));
x = zeros(1,length(ans14));
for i=1:length(ans14)
    for j=1:length(ans14)
        if ans14(i,j) ~= 0
            ans14(i,j)=1;
            
        end 
    end
end
disp('H* = ')
disp(ans14)
ans14 = transpose(ans14);
disp('Transpose(H*) =')
disp(ans14);

Hmatrix=ans14;
for i=1:length(ans14)
    x(i)=i;
    for j=1:length(ans14)
        if ans14(i,j) == 1
            count(i)=count(i)+1;
            
        end 
    end
    count(i)=count(i)*1.2;
end
R=[1,1,1,1,1,1,1,1,1,1,1,1,1,1]
b=[1,1,1,1,1,1,1,1,1,1,1,1,1,1]
I=1
   
for i=1:length(ans14)
      b14(i)=1;
      R14(i)=1;
  end 

Hmatrix = Hmatrix*2;
D=Hmatrix*I;
D=D*Tuning_parameter;
F=I-D;
Hmatrix=R14-Hmatrix;
y= linprog(b14,h14,R14);
disp(count)
%-------------------------------------IEEE BUS  30-------------------------

results30 = rundcpf('case30');
h30 = makeJac(results30);
ans30 = full(h30);
Tuning_parameter=0.1; % Tuning parameter
count = zeros(1,length(ans30));
x = zeros(1,length(ans30));
for i=1:length(ans30)
    for j=1:length(ans30)
        if ans30(i,j) ~= 0
            ans30(i,j)=1;
            
        end 
    end
end
disp('H* = ')
disp(ans30)
ans30 = transpose(ans30);
disp('Transpose(H*) =')
disp(ans30);

Hmatrix=ans30;
for i=1:length(ans30)
    x(i)=i;
    for j=1:length(ans30)
        if ans30(i,j) == 1
            count(i)=count(i)+1;
            
        end 
    end
    count(i)=count(i)*1.2;
end
R=[1,1,1,1,1,1,1,1,1,1,1,1,1,1]
b=[1,1,1,1,1,1,1,1,1,1,1,1,1,1]
I=1
   
for i=1:length(ans30)
      b30(i)=1;
      R30(i)=1;
  end

Hmatrix = Hmatrix*2;
D=Hmatrix*I;
D=D*Tuning_parameter;
F=I-D;
Hmatrix=R30-Hmatrix;
y= linprog(b30,h30,R30);
disp(count)
%-------------------------------------IEEE BUS  118-------------------------

results118 = rundcpf('case118');
h118 = makeJac(results118);
ans118 = full(h118);
Tuning_parameter=0.1; % Tuning parameter
count = zeros(1,length(ans118));
x = zeros(1,length(ans118));
for i=1:length(ans118)
    for j=1:length(ans118)
        if ans118(i,j) ~= 0
            ans118(i,j)=1;
            
        end 
    end
end
disp('H* = ')
disp(ans118)
ans9 = transpose(ans118);
disp('Transpose(H*) =')
disp(ans118);

Hmatrix=ans118;

for i=1:length(ans118)
    x(i)=i;
    for j=1:length(ans118)
        if ans118(i,j) == 1
            count(i)=count(i)+1;
            
        end 
    end
    
    count(i)=count(i)*3.6;
    
         
        
end
attack_cost=sort(count);

R=[1,1,1,1,1,1,1,1,1,1,1,1,1,1]
b=[1,1,1,1,1,1,1,1,1,1,1,1,1,1]
I=1
   
for i=1:length(ans118)
      b118(i)=1;
      R118(i)=1;
  end

Hmatrix = Hmatrix*2;
D=Hmatrix*I;
D=D*Tuning_parameter;
F=I-D;
Hmatrix=R118-Hmatrix;
y= linprog(b118,h118,R118);
disp(count)
m=max(count);

%------------------------ploting graph-----------------------------------
%plot(x,Attack Cost)
plot(x,attack_cost)
set(gca,'XTickLabel',[9,14,30,118,300]);
 axis([1 300 1 400]);
xlabel('IEEE BUSES');
ylabel('Attack cost(per unit)');
