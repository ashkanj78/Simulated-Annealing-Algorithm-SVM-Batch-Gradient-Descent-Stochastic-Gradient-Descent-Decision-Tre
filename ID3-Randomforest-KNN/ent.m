function e=ent(a,b)
x = a/(a+b);
y = b/(a+b);
e = -x*log2(x)-y*log2(y);
end
