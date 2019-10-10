% Purpose:  MATLAB script to produce contents of a ROM that stores
%           one cycle of sinewave
% Inputs:   None
% Outputs:  rom_data.mif file
% Author:   Peter Cheung
% Version: 	1.0
% Date:			20 Nov 2011
	
DEPTH = 1024;		% Size of ROM
WIDTH = 10;			% Size of data in bits
OUTMAX = 2^WIDTH - 1;	% Amplitude of sinewave

filename = 'rom_data.mif';
fid = fopen(filename,'w');

fprintf(fid,'-- ROM Initialization file\n');
fprintf(fid,'WIDTH = %d;\n',WIDTH);
fprintf(fid,'DEPTH = %d;\n',DEPTH);
fprintf(fid,'ADDRESS_RADIX = HEX;\n');
fprintf(fid,'DATA_RADIX = HEX;\n');
fprintf(fid,'CONTENT\nBEGIN\n');

for address = 0:1023
	angle = (address*2*pi)/DEPTH;
	sine_value = sin(angle);
	data = (sine_value*0.5*OUTMAX) + OUTMAX*0.5;
	
	fprintf(fid,'%4X : %4X;\n',address,int16(data));
end

fprintf(fid,'END\n');
fclose(fid);
disp('Finished');










