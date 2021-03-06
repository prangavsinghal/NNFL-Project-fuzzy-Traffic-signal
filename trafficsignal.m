ref1=imread('ref1.png','png');
curr1=imread('curr1.png','png');
rt1=imagedifper(ref1,curr1);
ref2=imread('ref2.png','png');
curr2=imread('curr2.png','png');
rt2=imagedifper(ref2,curr2);
a = newfis('trafficsignal');
a = addvar(a,'input','RouteA',[80 100]);
a = addmf(a,'input',1,'verylow','trimf', [75 80 85]);
a = addmf(a,'input',1,'low','trimf', [80 85 90]);
a = addmf(a,'input',1,'medium','trimf', [85 90 95]);
a = addmf(a,'input',1,'high','trimf', [90 95 100]);
a = addmf(a,'input',1,'veryhigh','trimf', [95 100 105]);
a = addvar(a,'input','RouteB',[80 100]);
a = addmf(a,'input',2,'verylow','trimf', [75 80 85]);
a = addmf(a,'input',2,'low','trimf', [80 85 90]);
a = addmf(a,'input',2,'medium','trimf', [85 90 95]);
a = addmf(a,'input',2,'high','trimf', [90 95 100]);
a = addmf(a,'input',2,'veryhigh','trimf', [95 100 105]);
a = addvar(a,'output','greentime',[20 92]);
a = addmf(a,'output',1,'t---','trimf', [8 20 32]);
a = addmf(a,'output',1,'t--','trimf', [20 32 44]);
a = addmf(a,'output',1,'t-','trimf', [32 44 56]);
a = addmf(a,'output',1,'t','trimf', [44 56 68]);
a = addmf(a,'output',1,'t+','trimf', [56 68 80]);
a = addmf(a,'output',1,'t++','trimf', [68 80 92]);
a = addmf(a,'output',1,'t+++','trimf', [80 92 104]);
ruleList = [1 1 4 1 1;
    1 2 3 1 1;
    1 3 3 1 1;
    1 4 2 1 1;
    1 5 1 1 1;
    2 1 5 1 1;
    2 2 4 1 1;
    2 3 3 1 1;
    2 4 2 1 1;
    2 5 2 1 1;
    3 1 5 1 1;
    3 2 5 1 1;
    3 3 4 1 1;
    3 4 3 1 1;
    3 5 3 1 1;
    4 1 6 1 1;
    4 2 6 1 1;
    4 3 5 1 1;
    4 4 4 1 1;
    4 5 3 1 1;
    5 1 7 1 1;
    5 2 6 1 1;
    5 3 5 1 1;
    5 4 5 1 1;
    5 5 4 1 1];
a = addrule(a,ruleList);
%[rt1 rt2]
ruleview(a)
%figure;
%gensurf(a)
%evalfis([rt1,rt2],a)