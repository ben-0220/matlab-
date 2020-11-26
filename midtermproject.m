clear all
aa = [1 0 1 0 1 1];
bb = [1 1 0 1 1 0 0 1];
cc=[1 1 0];
dd=[0 0 0 0];

fun_p1(43.85);
fun_p1(-5); %暗2干计
fun_p2(aa,bb,0); %value=0(タ) 1(璽[2干计])
fun_p2(cc,dd,1); %value=0(タ) 1(璽[2干计])
fun_p3(43.85);
fun_p3(-43.85);
A = 10;
B = 11;
C = 12;
D = 13;
E = 14;
F = 15;
a=[2,B];
b=[D 9 9];
fun_p4(a,b,0) %value=0(タ) 1(璽[2干计])%16秈
fun_p4(a,b,1)
fun_p5(87.89,7)
fun_p6(aa,bb,2,0); %value=0(タ) 1(璽[2干计])%2秈
fun_p6(cc,dd,2,1); %value=0(タ) 1(璽[2干计])%2秈
c=[7 5]
d=[4 5 9]
fun_p6(c,d,8,0);

function fun_p1(tensvalue)
    if (tensvalue >= 0)
        int = floor(tensvalue);
        point = tensvalue-int;
        yes=0;
        num = [];
        while yes == 0
            num = [mod(int,2),num]; 
            temp = int/2;
            int = floor(int/2);
            if(temp >= 1)
                yes = 0; 
            end
            if (temp < 1)
                yes = 1;
            end
    
        end
        suc = 0;
        number = [];
        while suc == 0
            number = [number,floor(point*2)];
            point = point*2-floor(point*2);
            if(length(number) == 8)
                suc = 1;
            end    
        end
    end
    if (tensvalue < 0)
        tensvalue=abs(tensvalue);
        n = 1;
        while(2^n <= tensvalue)
            n=n+1;
            ddjj = 2^n;
        end
        comp=ddjj-tensvalue;
        int = floor(comp);
        point = comp-int;
        yes=0;
        num = [];
        while yes == 0
            num = [mod(int,2),num]; 
            temp = int/2;
            int = floor(int/2);
            if(temp >= 1)
                yes = 0; 
            end
            if (temp < 1)
                yes = 1;
            end
    
        end
        suc = 0;
        number = [];
        while suc == 0
            number = [number,floor(point*2)];
            point = point*2-floor(point*2);
            if(length(number) == 8)
                suc = 1;
            end    
        end
    end    
    
        num
        number
end

%a=[1 0 1 0 1 1]
%value=0(タ) 1(璽)
function fun_p2(a,b,value)
    if (value == 0)
        int = 0;
        point =0;
        for i=1:length(a)
            int = int+ a(i)*2^(length(a)-i);
        end
        for j=1:length(b)
            point = point + b(j)*2^(-(j));
        end
        answer=int+point;
    end
    if (value == 1)
        int = 0;
        point =0;
        for i=1:length(a)
            int = int+ a(i)*2^(length(a)-i);
        end
        for j=1:length(b)
            point = point + b(j)*2^(-(j));
        end
        comp=int+point;
        n=1;
        while(2^n <= comp)
            n = n + 1;
        end
        answer = -(2^n-comp);
    end   
        answer
end


function fun_p3(value)
    if(value >= 0) 
        int = floor(value);
        point = value-int;
        yes=0;
        num="";
        number="";
        d=["1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];
        while yes == 0
            temp = mod(int,16);
            if(temp == 0)
                num ="0"+num;
            end
            if (temp ~= 0)
                num =d(temp)+num;
            end
            temp2 = int/16;
            int = floor(temp2);
            if(temp2 >= 16)
                yes = 0;
            end
            if(temp2 < 16)
                temp = mod(int,16)
                if(temp == 0)
                    num = "0"+num;
                end
                if (temp ~= 0)
                    num = d(temp)+num;
                    yes = 1;
                end
            end
        end
        for i=1:3
            a = floor(point*16);
            b=point*16-a;
            if(a ~= 10)
                number = number+d(a);
            end
            if(a == 0)
                number=number + "0";
            end
            point = b;            
        end
    end
    
    if(value < 0)
        value = abs(value);
        n = 1;
        while(16^n <= value)
            n = n+1;
        end
        value=16^n-value;
         int = floor(value);
        point = value-int;
        yes=0;
        num="";
        number="";
        d=["1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];
        while yes == 0
            temp = mod(int,16);
            if(temp == 0)
                num ="0"+num;
            end
            if (temp ~= 0)
                num =d(temp)+num;
            end
            temp2 = int/16;
            int = floor(temp2);
            if(temp2 >= 16)
                yes = 0;
            end
            if(temp2 < 16)
                temp = mod(int,16)
                if(temp == 0)
                    num = "0"+num;
                end
                if (temp ~= 0)
                    num = d(temp)+num;
                    yes = 1;
                end
            end
        end
        for i=1:3
            a = floor(point*16);
            b=point*16-a;
            if(a ~= 10)
                number = number+d(a);
            end
            if(a == 0)
                number=number + "0";
            end
            point = b;            
        end
        
    end    
    num
    number
end

function fun_p4(num,number,value)%value = 0(タ) =1(璽(干计)) 
    if(value == 0)
        temp=0;
        temp2=0;
        for i=1:length(num)
            temp=temp+num(i)*16^(length(num)-i);
        end
        for j=1:length(number)
            temp2=temp2+number(j)*16^(-j);
        end
        answer=temp2+temp;
    end
    if(value == 1)
        int = 0;
        point =0;
        for i=1:length(num)
            int = int+ num(i)*16^(length(num)-i);
        end
        for j=1:length(number)
            point = point + number(j)*16^(-(j));
        end
        comp=int+point;
        n=1;
        while(16^n <= comp)
            n = n + 1;
        end
        answer = -(16^n-comp);
    end
        
    answer  
end
function fun_p5(tensvalue,n) %n秈
    if (tensvalue >= 0)
        int = floor(tensvalue);
        point = tensvalue-int;
        yes=0;
        num = [];
        while yes == 0
            num = [mod(int,n),num]; 
            temp = int/n;
            int = floor(int/n);
            if(temp >= n-1)
                yes = 0; 
            end
            if (temp < n-1)
                yes = 1;
            end
    
        end
        suc = 0;
        number = [];
        while suc == 0
            number = [number,floor(point*n)];
            point = point*n-floor(point*n);
            if(length(number) == 5)
                suc = 1;
            end    
        end
    end
    if (tensvalue < 0)
        tensvalue=abs(tensvalue);
        m = 1;
        while(n^m <= tensvalue)
            m=m+1;
            ddjj = n^m;
        end
        comp=ddjj-tensvalue;
        int = floor(comp);
        point = comp-int;
        yes=0;
        num = [];
        while yes == 0
            num = [mod(int,n),num]; 
            temp = int/n;
            int = floor(int/n);
            if(temp >= n-1)
                yes = 0; 
            end
            if (temp < n-1)
                yes = 1;
            end
    
        end
        suc = 0;
        number = [];
        while suc == 0
            number = [number,floor(point*n)];
            point = point*n-floor(point*n);
            if(length(number) == 5)
                suc = 1;
            end    
        end
    end    
    
        num
        number
end
function fun_p6(a,b,n,value)
    if (value == 0)
        int = 0;
        point =0;
        for i=1:length(a)
            int = int+ a(i)*n^(length(a)-i);
        end
        for j=1:length(b)
            point = point + b(j)*n^(-(j));
        end
        answer=int+point;
    end
    if (value == 1)
        int = 0;
        point =0;
        for i=1:length(a)
            int = int+ a(i)*n^(length(a)-i);
        end
        for j=1:length(b)
            point = point + b(j)*n^(-(j));
        end
        comp=int+point;
        m=1;
        while(2^m <= comp)
            m = m + 1;
        end
        answer = -(n^m-comp);
    end   
        answer
end
        
    


