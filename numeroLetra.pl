%Numero a letra

%letra(MLC,MLD,MLU,MC,MD,MU,C,D,U)

letra(9,0,0,0,0,0,0,0,0):-	
	write('novecientos millones '),!.

letra(1,0,0,MC,MD,MU,C,D,U):-
	write('cien millones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(1,MLD,MLU,MC,MD,MU,C,D,U):-
	write('ciento '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.
letra(2,0,0,MC,MD,MU,C,D,U):-
	write('doscientos millones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(2,MLD,MLU,MC,MD,MU,C,D,U):-
	write('doscientos '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.
letra(3,0,0,MC,MD,MU,C,D,U):-
	write('trescientos millones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(3,MLD,MLU,MC,MD,MU,C,D,U):-
	write('trescientos '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.
letra(4,0,0,MC,MD,MU,C,D,U):-
	write('cuatrocientos millones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(4,MLD,MLU,MC,MD,MU,C,D,U):-
	write('cuatrocientos '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.
letra(5,0,0,MC,MD,MU,C,D,U):-
	write('quinientos millones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(5,MLD,MLU,MC,MD,MU,C,D,U):-
	write('quinientos '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.
letra(6,0,0,MC,MD,MU,C,D,U):-
	write('seiscientos millones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(6,MLD,MLU,MC,MD,MU,C,D,U):-
	write('seiscientos '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.
letra(7,0,0,MC,MD,MU,C,D,U):-
	write('setecientos millones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(7,MLD,MLU,MC,MD,MU,C,D,U):-
	write('setecientos millones '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.
letra(8,0,0,MC,MD,MU,C,D,U):-
	write('ochocientos milllones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(8,MLD,MLU,MC,MD,MU,C,D,U):-
	write('ochocientos '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.
letra(9,0,0,MC,MD,MU,C,D,U):-
	write('novecientos millones '),
	letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(9,MLD,MLU,MC,MD,MU,C,D,U):-
	write('novecientos '),
	letra(0,MLD,MLU,MC,MD,MU,C,D,U),!.


letra(0,1,0,MC,MD,MU,C,D,U):-
	write('diez millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,1,1,MC,MD,MU,C,D,U):-
	write('once millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,1,2,MC,MD,MU,C,D,U):-
	write('doce milllones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,1,3,MC,MD,MU,C,D,U):-
	write('trece millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,1,4,MC,MD,MU,C,D,U):-
	write('catorce millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,1,5,MC,MD,MU,C,D,U):-
	write('quince millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.

letra(0,1,MLU,MC,MD,MU,C,D,U):-
	write('dieci'),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.

letra(0,2,0,MC,MD,MU,C,D,U):-write('veinte millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,2,MLU,MC,MD,MU,C,D,U):-
	write('veinti'),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.

letra(0,3,0,MC,MD,MU,C,D,U):-write('treinta millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,3,MLU,MC,MD,MU,C,D,U):-
	write('treinta y '),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.

letra(0,4,0,MC,MD,MU,C,D,U):-write('cuarenta millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,4,MLU,MC,MD,MU,C,D,U):-
	write('cuarenta y '),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.

letra(0,5,0,MC,MD,MU,C,D,U):-write('cincuenta millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,5,MLU,MC,MD,MU,C,D,U):-
	write('cincuenta y '),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.

letra(0,6,0,MC,MD,MU,C,D,U):-write('sesenta millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,6,MLU,MC,MD,MU,C,D,U):-
	write('sesenta y '),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.

letra(0,7,0,MC,MD,MU,C,D,U):-write('setenta millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,7,MLU,MC,MD,MU,C,D,U):-
	write('setenta y '),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.

letra(0,8,0,MC,MD,MU,C,D,U):-write('ochenta millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,8,MLU,MC,MD,MU,C,D,U):-
	write('ochenta y '),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.

letra(0,9,0,MC,MD,MU,C,D,U):-write('noventa millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,9,MLU,MC,MD,MU,C,D,U):-
	write('noventa y '),
	letra(0,0,MLU,MC,MD,MU,C,D,U),!.


letra(0,0,1,MC,MD,MU,C,D,U):-
	write('un millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,0,2,MC,MD,MU,C,D,U):-
	write('dos millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,0,3,MC,MD,MU,C,D,U):-
	write('tres millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,0,4,MC,MD,MU,C,D,U):-
	write('cuatro millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,0,5,MC,MD,MU,C,D,U):-
	write('cinco millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,0,6,MC,MD,MU,C,D,U):-
	write('seis millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,0,7,MC,MD,MU,C,D,U):-
	write('siete millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,0,8,MC,MD,MU,C,D,U):-
	write('ocho millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.
letra(0,0,9,MC,MD,MU,C,D,U):-
	write('nueve millones '),letra(0,0,0,MC,MD,MU,C,D,U),!.

%***************************************************************************************************
letra(0,0,0,1,0,0,0,0,0):-	
	write('cien mil '),!.

letra(0,0,0,1,0,0,C,D,U):-
	write('cien mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,1,MD,MU,C,D,U):-
	write('ciento '),
	letra(0,0,0,0,MD,MU,C,D,U),!.
letra(0,0,0,2,0,0,C,D,U):-
	write('doscientos mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,2,MD,MU,C,D,U):-
	write('doscientos '),
	letra(0,0,0,0,MD,MU,C,D,U),!.
letra(0,0,0,3,0,0,C,D,U):-
	write('trescientos mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,3,MD,MU,C,D,U):-
	write('trescientos '),
	letra(0,0,0,0,MD,MU,C,D,U),!.
letra(0,0,0,4,0,0,C,D,U):-
	write('cuatrocientos mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,4,MD,MU,C,D,U):-
	write('cuatrocientos '),
	letra(0,0,0,0,MD,MU,C,D,U),!.
letra(0,0,0,5,0,0,C,D,U):-
	write('quinientos mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,5,MD,MU,C,D,U):-
	write('quinientos '),
	letra(0,0,0,0,MD,MU,C,D,U),!.
letra(0,0,0,6,0,0,C,D,U):-
	write('seiscientos mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,6,MD,MU,C,D,U):-
	write('seiscientos '),
	letra(0,0,0,0,MD,MU,C,D,U),!.
letra(0,0,0,7,0,0,C,D,U):-
	write('setecientos mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,7,MD,MU,C,D,U):-
	write('setecientos '),
	letra(0,0,0,0,MD,MU,C,D,U),!.
letra(0,0,0,8,0,0,C,D,U):-
	write('ochocientos mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,8,MD,MU,C,D,U):-
	write('ochocientos '),
	letra(0,0,0,0,MD,MU,C,D,U),!.
letra(0,0,0,9,0,0,C,D,U):-
	write('novecientos mil '),
	letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,9,MD,MU,C,D,U):-
	write('novecientos '),
	letra(0,0,0,0,MD,MU,C,D,U),!.


letra(0,0,0,0,1,0,C,D,U):-
	write('diez mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,1,1,C,D,U):-
	write('once mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,1,2,C,D,U):-
	write('doce mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,1,3,C,D,U):-
	write('trece mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,1,4,C,D,U):-
	write('catorce mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,1,5,C,D,U):-
	write('quince mil '),letra(0,0,0,0,0,0,C,D,U),!.

letra(0,0,0,0,1,MU,C,D,U):-
	write('dieci'),
	letra(0,0,0,0,0,MU,C,D,U),!.

letra(0,0,0,0,2,0,C,D,U):-write('veinte mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,2,MU,C,D,U):-
	write('veinti'),
	letra(0,0,0,0,0,MU,C,D,U),!.

letra(0,0,0,0,3,0,C,D,U):-write('treinta mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,3,MU,C,D,U):-
	write('treinta y '),
	letra(0,0,0,0,0,MU,C,D,U),!.

letra(0,0,0,0,4,0,C,D,U):-write('cuarenta mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,4,MU,C,D,U):-
	write('cuarenta y '),
	letra(0,0,0,0,0,MU,C,D,U),!.

letra(0,0,0,0,5,0,C,D,U):-write('cincuenta mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,5,MU,C,D,U):-
	write('cincuenta y '),
	letra(0,0,0,0,0,MU,C,D,U),!.

letra(0,0,0,0,6,0,C,D,U):-write('sesenta mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,6,MU,C,D,U):-
	write('sesenta y '),
	letra(0,0,0,0,0,MU,C,D,U),!.

letra(0,0,0,0,7,0,C,D,U):-write('setenta mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,7,MU,C,D,U):-
	write('setenta y '),
	letra(0,0,0,0,0,MU,C,D,U),!.

letra(0,0,0,0,8,0,C,D,U):-write('ochenta mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,8,MU,C,D,U):-
	write('ochenta y '),
	letra(0,0,0,0,0,MU,C,D,U),!.

letra(0,0,0,0,9,0,C,D,U):-write('noventa mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,9,MU,C,D,U):-
	write('noventa y '),
	letra(0,0,0,0,0,MU,C,D,U),!.


letra(0,0,0,0,0,1,C,D,U):-
	write('un mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,0,2,C,D,U):-
	write('dos mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,0,3,C,D,U):-
	write('tres mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,0,4,C,D,U):-
	write('cuatro mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,0,5,C,D,U):-
	write('cinco mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,0,6,C,D,U):-
	write('seis mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,0,7,C,D,U):-
	write('siete mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,0,8,C,D,U):-
	write('ocho mil '),letra(0,0,0,0,0,0,C,D,U),!.
letra(0,0,0,0,0,9,C,D,U):-
	write('nueve mil '),letra(0,0,0,0,0,0,C,D,U),!.
%****************************************************************************************************
letra(0,0,0,0,0,0,1,0,0):-	
	write('cien'),!.

letra(0,0,0,0,0,0,1,D,U):-
	write('ciento '),
	letra(0,0,0,0,0,0,0,D,U),!.
letra(0,0,0,0,0,0,2,D,U):-
	write('doscientos '),
	letra(0,0,0,0,0,0,0,D,U),!.
letra(0,0,0,0,0,0,3,D,U):-
	write('trescientos '),
	letra(0,0,0,0,0,0,0,D,U),!.
letra(0,0,0,0,0,0,4,D,U):-
	write('cuatrocientos '),
	letra(0,0,0,0,0,0,0,D,U),!.
letra(0,0,0,0,0,0,5,D,U):-
	write('quinientos '),
	letra(0,0,0,0,0,0,0,D,U),!.
letra(0,0,0,0,0,0,6,D,U):-
	write('seiscientos '),
	letra(0,0,0,0,0,0,0,D,U),!.
letra(0,0,0,0,0,0,7,D,U):-
	write('setecientos '),
	letra(0,0,0,0,0,0,0,D,U),!.
letra(0,0,0,0,0,0,8,D,U):-
	write('ochocientos '),
	letra(0,0,0,0,0,0,0,D,U),!.
letra(0,0,0,0,0,0,9,D,U):-
	write('novecientos '),
	letra(0,0,0,0,0,0,0,D,U),!.


letra(0,0,0,0,0,0,0,1,0):-
	write('diez'),!.
letra(0,0,0,0,0,0,0,1,1):-
	write('once'),!.
letra(0,0,0,0,0,0,0,1,2):-
	write('doce'),!.
letra(0,0,0,0,0,0,0,1,3):-
	write('trece'),!.
letra(0,0,0,0,0,0,0,1,4):-
	write('catorce'),!.
letra(0,0,0,0,0,0,0,1,5):-
	write('quince'),!.

letra(0,0,0,0,0,0,0,1,U):-
	write('dieci'),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,2,0):-write('veinte'),!.
letra(0,0,0,0,0,0,0,2,U):-
	write('veinti'),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,3,0):-write('treinta'),!.
letra(0,0,0,0,0,0,0,3,U):-
	write('treinta y '),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,4,0):-write('cuarenta'),!.
letra(0,0,0,0,0,0,0,4,U):-
	write('cuarenta y '),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,5,0):-write('cincuenta'),!.
letra(0,0,0,0,0,0,0,5,U):-
	write('cincuenta y '),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,6,0):-write('sesenta'),!.
letra(0,0,0,0,0,0,0,6,U):-
	write('sesenta y '),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,7,0):-write('setenta'),!.
letra(0,0,0,0,0,0,0,7,U):-
	write('setenta y '),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,8,0):-write('ochenta'),!.
letra(0,0,0,0,0,0,0,8,U):-
	write('ochenta y '),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,9,0):-write('noventa'),!.
letra(0,0,0,0,0,0,0,9,U):-
	write('noventa y '),
	letra(0,0,0,0,0,0,0,0,U),!.

letra(0,0,0,0,0,0,0,0,0):-!.
letra(0,0,0,0,0,0,0,0,1):-
	write('uno'),!.
letra(0,0,0,0,0,0,0,0,2):-
	write('dos'),!.
letra(0,0,0,0,0,0,0,0,3):-
	write('tres'),!.
letra(0,0,0,0,0,0,0,0,4):-
	write('cuatro'),!.
letra(0,0,0,0,0,0,0,0,5):-
	write('cinco'),!.
letra(0,0,0,0,0,0,0,0,6):-
	write('seis'),!.
letra(0,0,0,0,0,0,0,0,7):-
	write('siete'),!.
letra(0,0,0,0,0,0,0,0,8):-
	write('ocho'),!.
letra(0,0,0,0,0,0,0,0,9):-
	write('nueve'),!.