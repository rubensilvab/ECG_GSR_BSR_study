function Hd = BandPass_IIR_Butterworth
%BANDPASS_IIR_BUTTERWORTH Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 20-Jan-2021 02:15:22

% Butterworth Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 100;  % Sampling Frequency

N   = 10;   % Order
Fc1 = 0.1;  % First Cutoff Frequency
Fc2 = 24;   % Second Cutoff Frequency

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass('N,F3dB1,F3dB2', N, Fc1, Fc2, Fs);
Hd = design(h, 'butter');

% [EOF]