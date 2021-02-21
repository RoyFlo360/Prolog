var, op, rIn, v =[], ['+','-','*','/',"="], [] ,{}
class stack:
    stk=[];    
    def __init__(self):
        x = 1
    def push(self,x):
        self.stk.append(x)
    def pop(self):
        if(self.isempty()):
            print ("Stack is empty cant be poped")
            return False 
        else:       
            return self.stk.pop()
    def isempty(self):
        if not self.stk:
            return True
        else:
            return False    
    def prstk(self):
        print (self.stk)
    def empty(self):
        self.stk=[]
def postfix(x):
    exp, st, l, i, r = [], stack(), len(x), 0, ""
    st.empty()
    while(i<l):
        r=x[i]
        if(r in op): 
            if(st.isempty()):           
                st.push(r)
            else:
                y=st.pop()
                exp.append(y)
                st.push(r)      
        elif(r.isalpha()|r.isdigit()|(r[0]=="-" and len(r)>1) ):
            exp.append(r) 
        elif(r==")"):        
            lst=[]
            while(r!="("):
                i=i+1
                r=x[i]
                if(r=="("):
                    continue            
                lst.append(r)
            ls=postfix(lst)
            exp=exp+ls                  
        i=i+1           
    while(st.isempty()==False):
        exp.append(st.pop())    
    return exp  
def evaluate(x):
    lst=[]
    stk=stack() 
    stk.empty()
    y = len(x)
    i=0 
    for r in x:
        if(r.isalpha()|r.isdigit()|(r[0]=="-" and len(r)>1) ):
            stk.push(r)
        elif(r in op):
            if(stk.isempty()!=True):                    
                a=str(stk.pop())
                b=str(stk.pop())
                if(r=="="):
                    if(a.isalpha() and b.isalpha() ):
                        if(float(v[a])!=float(v[b])):
                            v[a]=v[b]
                            lst.append(a)
                            stk.push(v[a])
                    elif(a.isalpha()):
                        if(float(v[a])!=float(b)):
                            v[a]=b
                            lst.append(a)
                            stk.push(b)
                    elif(b.isalpha()):
                        if(float(v[b])!=float(a)):
                            lst.append(b) 
                            stk.push(a) 
                else:
                    if(a.isalpha() and b.isalpha()):
                        x=float(v[a])
                        y=float(v[b])
                        
                    elif(a.isalpha()):
                        x=float(v[a])
                        y=float(b)
                        
                    elif(b.isalpha()):
                        x=float(a)
                        y=float(v[b])
                    else:
                        x=float(a)
                        y=float(b)
                    if(r=="+"):
                        z=x+y 
                        stk.push(z)
                    if(r=="-"):
                        z=x-y 
                        stk.push(z)
                    if(r=="*"):
                        z=x*y
                        stk.push(z)    
                    if(r=="/"):
                        z=x/y
                        stk.push(z)             
    return lst;                 
r = str(input("Enter input file name:  "))       
fo = open("D:\\Prolog New\\haskell-master\\UVA\\" + r, "r")
In = fo.read().splitlines();
for r in In:
    for  s in r:
            if(s.isalpha()):
                    var.append(s)
    if(r == "#"):
        break    
    rIn.append(r.split() )          
fo.close()
var=list(set(var))
var.sort()
for r in var:
    v.update({r:0})
i=0
for r in rIn:
      r=r[::-1]
      rIn[i]=r
      i=i+1
pexp=[]
for r in rIn:
    pexp.append( postfix(r))
for r in pexp:  
    y=evaluate(r)
    if not y:
        print ("No change")
    else:
        y.sort()
        for i in y:
            print (i, "=", v[i])