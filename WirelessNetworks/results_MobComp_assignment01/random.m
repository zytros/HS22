rng('default')
L1 = rand(1000,1);
L2 = rand(1000,1);
L3 = rand(1000,1);
L4 = rand(1000,1);
L5 = rand(1000,1);
x = 1:1000;
L1 = L1 + 10;
L1 = L1 * (19928100/10000);
L2 = L2 + 10;
L2 = L2 * (19928100/10000);
L3 = L3 + 10;
L3 = L3 * (19928100/10000);
L4 = L4 + 10;
L4 = L4 * (19928100/10000);
L5 = L5 + 10;
L5 = L5 * (19928100/10000);
L5 = uint32(L5);
L1 = uint32(L1);
L2 = uint32(L2);
L3 = uint32(L3);
L4 = uint32(L4);
min1 = min(L1);
max1 = max(L1);
[C1,V1] = groupcounts(L1);
C1 = C1/1000;
x1 = min1:max1;
plot(V1,C1)
%plot(x,L1,x,L2,x,L3,x,L4,x,L5)

