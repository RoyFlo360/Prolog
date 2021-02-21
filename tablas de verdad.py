#Rodrigo Flores Ruiz
booleanos = [False, True]
def tabla_or():
    ortxt = 'p, q, p or q, sep = \t'
    print('p\tq\tp or q')
    var = len(ortxt)+3
    print('-'*var)
    for p in booleanos:
        for q in booleanos:
            print(p, q, p or q, sep = '\t')
    print()
def tabla_and():
    andtxt = 'p, q, p and q, sep = \t'
    print('p\tq\tp and q')
    var = len(andtxt)+3
    print('-'*var)
    for p in booleanos:
        for q in booleanos:
            print(p, q, p and q, sep = '\t')
    print()
def tabla_not():
    nottxt = 'p, not p, sep = \t'
    print('p\tnot p')
    var = len(nottxt)
    print('-'*var)
    for p in booleanos:
        print(p, not p, sep = '\t')
    print()
def tabla_casita():
    txtcasita = 'p, q, p ^ q, sep = \t'
    print('p\tq\tp ^ q')
    var = len(txtcasita)+3
    print('-'*var)
    for p in booleanos:
        for q in booleanos:
            print(p, q, p ^ q, sep = '\t')
    print()
def tablas_conmut():
    txtconmut = 'p, q, (p and q) == (q and p), sep = \t'
    print('p\tq\t(p and q) = (q and p)')
    var = len(txtconmut)+3
    print('-'*var)
    for p in booleanos:
        for q in booleanos:
            print(p, q, (p and q) == (q and p), sep = '\t')
    print()
    txtconmut2 = 'p, q, (p or q) == (q or p), sep = \t'
    print('p\tq\t(p and q) = (q and p)')
    var2 = len(txtconmut2)+3
    print('-'*var2)
    for p in booleanos:
        for q in booleanos:
            print(p, q, (p or q) == (q or p), sep = '\t')
    print()
def tablas_asocia():
    txtaso = 'p, q, r, (p and(q and r)==((p and q) and r)), sep = \t'
    print('p\tq\tr\tp and(q and r)=((p and q) and r)')
    var = len(txtaso)+3
    print('-'*var)
    for p in booleanos:
        for q in booleanos:
            for r in booleanos:
                print(p, q, r, (p and(q and r)==((p and q) and r)), sep = '\t')
    print()
    txtaso2 = 'p, q, r, (p or(q or r)==((p or q) or r)), sep = \t'
    print('p\tq\tr\tp or(q or r)=((p or q) or r)')
    var2 = len(txtaso2)+3
    print('-'*var2)
    for p in booleanos:
        for q in booleanos:
            for r in booleanos:
                print(p, q, r, (p or(q or r)==((p or q) or r)), sep = '\t')
    print()
def tablas_dist():
    txtdist = 'p, q, r, (p or(q and r)==(p or q) and (p or r)), sep = \t'
    print('p\tq\tr\tp or(q and r)=(p or q) and (p or r)')
    var = len(txtdist)+3
    print('-'*var)
    for p in booleanos:
        for q in booleanos:
            for r in booleanos:
                print(p, q, r, (p or(q and r)==(p or q) and (p or r)), sep = '\t')
    print()
    txtdist2 = 'p, q, r, (p and(q or r)==(p and q) or (p and r)), sep = \t'
    print('p\tq\tr\tp and(q or r)=(p and q) or (p and r)')
    var2 = len(txtdist2)+3
    print('-'*var2)
    for p in booleanos:
        for q in booleanos:
            for r in booleanos:
                print(p, q, r, (p and(q or r)==(p and q) or (p and r)), sep = '\t')
    print()
def tablas_morgan():
    txtmor = 'p, q, r, (not(p and q)==((not p)or(not q))), sep = \t'
    print('p\tq\tr\tnot(p and q)=((not p)or(not q))')
    var = len(txtmor)+3
    print('-'*var)
    for p in booleanos:
        for q in booleanos:
            for r in booleanos:
                print(p, q, r, (not(p and q)==((not p)or(not q))), sep = '\t')
    print()
    txtmor2 = 'p, q, r, (not(p and q)==((not p)or(not q))), sep = \t'
    print('p\tq\tr\tnot(p or q)=((not p)and(not q))')
    var2 = len(txtmor2)+3
    print('-'*var2)
    for p in booleanos:
        for q in booleanos:
            for r in booleanos:
                print(p, q, r, (not(p and q)==((not p)or(not q))), sep = '\t')

print('Tablas de Verdad\n')

print('Tabla de verdad de and: ')
tabla_and()

print('Tabla de verdad de not: ')
tabla_not()

print('Tabla de verdad de or: ')
tabla_or()

print('Tabla de verdad de ^: ')
tabla_casita()

print ('Tablas Conmutativas: ')
tablas_conmut()

print('Tablas Asociativas: ')
tablas_asocia()

print('Tablas Distributivas: ')
tablas_dist()

print('Tablas De Morgan: ')
tablas_morgan()
