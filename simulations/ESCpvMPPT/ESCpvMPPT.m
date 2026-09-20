% Script to initialize, fix, and run the ESCSolarPVMPPT model

% 1. Define the model name and open it
modelName = ['ESCSolarPVMPPT'];
disp(['Opening model: ', modelName, '...']);
openExample(modelName);
run('ESCSolarPVMPPTBoostData');

% now it just works for some reason










% try if needed
%% 2. Define the exact variables required by the Extremum Seeking Control block
% This bypasses the broken struct mapping and provides the raw numbers
N = 1;              % Number of parameters (paramCount)
IC = 0.7;           % Initial Condition for duty cycle (initialVal)
omega = 2*pi*100;   % Perturbation frequency (omega)
lr = 10;            % Integrator gain / learning rate (gain)
a = 1;              % Demodulation amplitude (demodAmp)
b = 0.02;           % Modulation amplitude / wiggle size (modAmp)
phi_1 = 0;          % Demodulation phase (demodPhase)
phi_2 = 0;          % Modulation phase (modPhase)

% 3. Force-feed the variables directly into the isolated Model Workspace
disp('Injecting variables into the Model Workspace...');
mdlWks = get_param(modelName, 'ModelWorkspace');
mdlWks.assignin('N', N); 
mdlWks.assignin('IC', IC);
mdlWks.assignin('omega', omega); 
mdlWks.assignin('lr', lr);
mdlWks.assignin('a', a); 
mdlWks.assignin('b', b);
mdlWks.assignin('phi_1', phi_1); 
mdlWks.assignin('phi_2', phi_2);

% 4. Run the simulation automatically
disp('Starting simulation... please wait.');
out = sim(modelName);
disp('Simulation complete! You can now open the scopes in the model to view the results.');