%for, while, if, printf

v = zeros(10, 1)
for i = 1:10,
	v(i) = 2^i;
end;

printf(v)

indicies = 1:10
for i = indicies,
	disp(i);
end;

i = 1;

while True,
	v(i) = 100;
	i = i+1;
	if i == 6,
		break;
	end;
end;

printf(v);


