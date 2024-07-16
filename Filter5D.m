function Hd = Filter5D
%FILTER5D Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 23.2 and Signal Processing Toolbox 23.2.
% Generated on: 28-Mar-2024 20:07:12

% Butterworth Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
Fs = 8000;  % Sampling Frequency

N  = 1;     % Order
Fc = 1200;  % Cutoff Frequency

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.lowpass('N,F3dB', N, Fc, Fs);
Hd = design(h, 'butter');

% [EOF]
