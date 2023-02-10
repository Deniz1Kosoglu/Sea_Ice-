clear all, clc,close all

data = [1979	7.05	336.84
1980	7.67	338.76
1981	7.14	340.12
1982	7.30	341.48
1983	7.39	343.15
1984	6.81	344.87
1985	6.70	346.35
1986	7.41	347.61
1987	7.28	349.31
1988	7.37	351.69
1989	7.01	353.20
1990	6.14	354.45
1991	6.47	355.70
1992	7.47	356.54
1993	6.40	357.21
1994	7.14	358.96
1995	6.08	360.97
1996	7.58	362.74
1997	6.69	363.88
1998	6.54	366.84
1999	6.12	368.54
2000	6.25	369.71
2001	6.73	371.32
2002	5.83	373.45
2003	6.12	375.98
2004	5.98	377.70
2005	5.50	379.98
2006	5.86	382.09
2007	4.27	384.02
2008	4.69	385.83
2009	5.26	387.64
2010	4.87	390.10
2011	4.56	391.85
2012	3.57	394.06
2013	5.21	396.74
2014	5.22	398.81
2015	4.62	401.01
2016	4.53	404.41
2017	4.82	406.76
2018	4.79	408.72
2019	4.36	411.66
2020	4.00	414.24
2021	4.95	416.45
2022	4.87	417.20
];

time = data(1:length(data(:,1)),1);
sea_ice = data(1:length(data(:,2)),2);
carbon_dioxide = data(1:length(data(:,3)),3);

%%
[curve2,gof2]=fit(carbon_dioxide,sea_ice,'poly1')


f = str2sym(formula(curve2));
cof= coeffvalues(curve2);
p1=cof(1,1);
p2=cof(1,2);
syms x
f = p2 + p1*x;
fplot(f,'Red')
hold on
scatter(carbon_dioxide,sea_ice,250,'blue','Marker','.')
hold on

xlim([336.84 525])
ylim([0 8])
xlabel('Average Global Carbon Dioxide (ppm)  ')
ylabel('Av. Minimum Sea Ice Extent in September (millions of km2)')
title('Sea Ice Data As a Function Of The Carbon Dioxide ')
plot([36.84 525],[1 1],'LineStyle','--','Color',"blue")
hold on
legend('fit','data','Ice Free')
%%
[curve2,gof2]=fit(carbon_dioxide,sea_ice,'poly2')


f = str2sym(formula(curve2));
cof= coeffvalues(curve2);
p3=cof(1,1);
p4=cof(1,2);
p5=cof(1,3);
syms x
f1 = p3*x^2 + p4*x + p5;
fplot(f1,'Red')
hold on
scatter(carbon_dioxide,sea_ice,250,'blue','Marker','.')
hold on

xlim([336.84 525])
ylim([0 8])
xlabel('Average Global Carbon Dioxide (ppm)  ')
ylabel('Av. Minimum Sea Ice Extent in September (millions of km2)')
title('Sea Ice Data As a Function Of The Carbon Dioxide ')
plot([36.84 525],[1 1],'LineStyle','--','Color',"blue")
hold on
legend('fit','data','Ice Free')

%% 
[curve3,gof3]=fit(time,sea_ice,'poly1')


f = str2sym(formula(curve3));
cof= coeffvalues(curve3);
p3=cof(1,1);
p4=cof(1,2);
syms x
f1 = p4 + p3*x;
fplot(f1,'Red')
hold on
scatter(time,sea_ice,250,'blue','Marker','.')
hold on
xlim([1979 2070])
ylim([0 8])
xlabel('Time(year)')
ylabel('Av. Minimum Sea Ice Extent in September (millions of km2)')
title('Sea Ice Data As a Function Of The Time ')
plot([1979 2070],[1 1],'LineStyle','--','Color',"blue")
hold on
legend('fit','data','Ice Free')
%% 
[curve3,gof3]=fit(time,sea_ice,'poly2')


f = str2sym(formula(curve3));
cof= coeffvalues(curve3);
p3=cof(1,1);
p4=cof(1,2);
p5=cof(1,3);
syms x
f1 = p3*x^2 + p4*x + p5;
fplot(f1,'Red')
hold on
scatter(time,sea_ice,250,'blue','Marker','.')
hold on
xlim([1979 2070])
ylim([0 8])
xlabel('Time(year)')
ylabel('Av. Minimum Sea Ice Extent in September (millions of km2)')
title('Sea Ice Data As a Function Of The Time ')
plot([1979 2070],[1 1],'LineStyle','--','Color',"blue")
hold on
legend('fit, n=2','data','Ice Free')