%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------méthode RK2 :---------------%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ ]=methode_RK2()



%lecture de l'équation différentielle

f = input ( 'donnez votre équation différntielle f(t,y) = ','s' );

t0 =input('donnez la borne inf de l intégration t0 = ' );

tn =input('donnez la borne sup de l intégration tn = ' );

h =input('donnez le pas de discrétisation h = ');

n=floor((tn-t0)/h) ;

y0 =input('donner la valeur de la condition initiale y(t0) = ' ) ;

%initialisation de t et y comme vecteur colonnes 

T(1)=t0 ;

Y(1) = y0;
tic ,

%calcul de t et y

  for i=1:n

    T(i+1) = T(i)+h ;

    t=T(i);

    y=Y(i);

    k1=eval(f);% calcul f(t(i),y(i))%

    t=T(i+1);

    y=Y(i)+k1;

    k2=eval(f);%calcul f(t(i+1),y(i)+k1)%

    Y(i+1)=Y(i)+(h/2)*(k1+k2);

  end

% Affichage graphique %

  plot(T,Y,'r')

  xlabel('t')

  ylabel('y')

  grid on

  title('Représentation de la méthode de Rung Kutta 2')
  time = toc

end