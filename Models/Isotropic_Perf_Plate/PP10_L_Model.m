
[ c0 , eps0 , mu0 , eta0 ] = emConst();

f = logspace( log10( 1e6 ) , log10( 20e9 ) , 2000 );
w = 2 * pi * f;

% Effectives inductance of array.
L = 4.2e-11;


% Admittance.
Y = 1.0 ./ ( j .* w .* L ) + 1.0 ./ eta0;

S11 = ( 1.0 - eta0 .* Y ) ./( 1.0 + eta0 .* Y );
S12 = 2.0 ./ ( 1.0 + eta0 .* Y );

Za(1,1,:) = j .* w .* L;
Za(1,2,:) = Za(1,1,:);
Za(2,1,:) = Za(1,1,:);
Za(2,2,:) = Za(1,1,:);

semilogx(f,-db20(S12),'r-o')

figure( 1 );
plot(f,db20(S11),'r-o');
xlabel( 'Frequency (MHz)' );
ylabel( '|S11| (dB)' );

figure( 2 );
plot(f,angled(S11),'r-o');
xlabel( 'Frequency (MHz)' );
ylabel( '/_S11 (degrees)' );

figure( 3 );
plot(f,db20(S12),'r-o');
xlabel( 'Frequency (MHz)' );
ylabel( '|S12| (dB)' );

figure( 4 );
plot(f,angled(S12),'r-o');
xlabel( 'Frequency (MHz)' );
ylabel( '/_S12 (degrees)' );

figure( 5);
semilogx(f,-db20(S12),'r-o')
xlabel( 'Frequency (MHz)' );
ylabel( 'SE (dB)' );

S = zeros( 2 , 2 , length( f ) );

for k=1:length( f )
  
  S(1,1,k) = S11(k);
  S(1,2,k) = S12(k);
  S(2,1,k) = S12(k);
  S(2,2,k) = S11(k);
  
end % for

[ isPassive , lambda , ind ] = nportIsPassiveS( S );

[Z] =nportS2Z( S , eta0 );

[ prm , Zfit ] = nportVectorFitCommon( f , Z , 2 , 2 );

prm.pr.asymp
prm.pr.poles
prm.pr.residues

-j * eta0 / L


figure( 6 );
plot(f,db20(squeeze(Z(1,1,:))),'r-o');
hold on;
plot(f,db20(squeeze(Zfit(1,1,:))),'b-x');
xlabel( 'Frequency (MHz)' );
ylabel( '|Z11| (dB)' );
legend( 'Model' , 'Fit' );
hold off;

figure( 7 );
plot(f,angled(squeeze(Z(1,1,:))),'r-o');
hold on;
plot(f,angled(squeeze(Zfit(1,1,:))),'b-x');
xlabel( 'Frequency (MHz)' );
ylabel( '/_Z11 (degrees)' );
legend( 'Model' , 'Fit' );
hold off;

figure( 8 );
plot(f,db20(squeeze(Z(1,2,:))),'r-o');
hold on;
plot(f,db20(squeeze(Zfit(1,2,:))),'b-x');
xlabel( 'Frequency (MHz)' );
ylabel( '|Z12| (dB)' );
legend( 'Model' , 'Fit' );
hold off;

figure( 9 );
plot(f,angled(squeeze(Z(1,2,:))),'r-o');
hold on;
plot(f,angled(squeeze(Zfit(1,2,:))),'b-x');
xlabel( 'Frequency (MHz)' );
ylabel( '/_Z12 (degrees)' );
legend( 'Model' , 'Fit' );
hold off;

nportSave( 'pp10-sparam2c.dat' , f , S  , 'S' , 'ri' );
nportSave( 'pp10-zparam2c.dat' , f , Z  , 'S' , 'ri' );
%prmSave( 'pp10.prm' , prm );
