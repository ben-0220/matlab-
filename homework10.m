clear all
a=input('¿é¤J¯x°}');
[row,column]=size(a);
for i=1:column
    if i==1
        ans=[a(:,i)/norm(a(:,i))];
    end
    if i>=2
        b=[];
        for j=1:i-1
            c=-a(:,i)'*ans(:,j)/(ans(:,j)'*ans(:,j))*ans(:,j);
            b=[b c];
        end
        ans(1:end,i)=(a(:,i)+sum(b,2))/norm(a(:,i)+sum(b,2));
    end
end
ans

