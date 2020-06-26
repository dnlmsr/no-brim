                % Progetto no-brim
                % Autore: Daniele Moser
                % Questo programma è stato creato per poter simulare
                % l'asse lineare che controlla il movimento della pinza.
                % Per poter utilizzare al meglio il programma
                % e visualizzare la risposta dell'intero sistema
                % si possono modificare i valori del controllore PID e setPoint.

pkg load control;

                setPoint=0.3; % Setpoint finale [m].
                Controllo=pid(2,0,0); % Sistema del controllo.

s = tf('s'); % Definizione variabile s.

Vn = 24; % Tensione nominale del motore [V].
Is = 7.7; % Corrente di spunto [A].
omega_max = 3500; % Massima velocità raggiunta dal motore [rpm].
p=0.005; % Passo della vite [m].
J = 0.000011; % Momento di inerzia asse lineare [kg*m^2].

K = Vn/omega_max; % Calcolo della K del motore.
Ra = Vn/Is; % Calcolo della resistenza di armatura.

Motore=K/(Ra*J*s+K^2); % Sistema del motore.
Conversione=p/s; % Sistema per la conversione da velocità angolare a posizione lineare.

Funzione=Controllo*Motore*Conversione; % Sistema totale.
FunzioneLoop=feedback(Funzione); % Sistema totale con feedback.
step(setPoint*FunzioneLoop); % Comportamento del sistema alla funzione step.
