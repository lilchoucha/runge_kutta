%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%-------------m�thode Runge kutta 4:------------%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function []=methode_Runge_kutta4()



%lecture de l'�quation diff�rentielle



f = input ( 'donnez votre �quation diff�rntielle f(t,y) = ','s' );

t0 =input('donnez la borne inf de l int�gration t0 = ' );

tn =input('donnez la borne sup de l int�gration tn =' );

h =input('donnez le pas de discr�tisation h = ');

n=floor((tn-t0)/h) ;

y0 =input('donner la valeur de la condition initiale y(t0) = ' );



%initialisation de t et y comme vecteur colonnes 

T(1)=t0 ;

Y(1) = y0;
tic


%calcul de t et y

  for i=1:n
      
      T(i+1)=T(i)+h ;
t=T(i); y=Y(i);

    k1=eval(f);%calcul f(t(i),y(i))%

t=T(i)+(h/2); y=Y(i)+(k1/2);

    k2=eval(f);%calcul f(t(i)+(h/2),y(i)+(k1/2)) %

t=T(i)+(h/2);y=Y(i)+(k2/2);

    k3=eval(f);%calcul f(t(i)+(h/2),y(i)+(k2/2)) %

t=T(i)+h ; y=Y(i)+k3;

    k4=eval(f);%calcul f(t(i)+h,Y(i)+k3) %

    Y(i+1)=Y(i)+(h/6)*(k1+2*k2+2*k3+k4);%calcul y(t(i+1)) %

  end
% Affichage graphique %
plot(T,Y,'r')

xlabel('T')

ylabel('y')

grid on

title('Repr�sentation de la methode Runge kutta')
time =toc 
end
