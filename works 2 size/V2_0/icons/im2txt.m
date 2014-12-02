function [] = im2txt(image,txt_filename)

% load image
image = imread(image);
rows = size(image,1);
cols = size(image,2);

% rescale from 8 bit to 4 bit
image = idivide(image,16,'floor');

% create text file
fileID = fopen(txt_filename,'wt');

% format as a text string and save to file
fprintf(fileID, '(');
for i = 1:rows
    for j = 1:cols
        % convert to 4-bit binary
        red   = dec2bin(image(i,j,1),4);
        green = dec2bin(image(i,j,2),4);
        blue  = dec2bin(image(i,j,3),4);
        % add to file
        fprintf(fileID, '"');
        fprintf(fileID, '%s',red);
        fprintf(fileID, '%s',green);
        fprintf(fileID, '%s',blue);
        fprintf(fileID, '",\n');    end
end
fprintf(fileID, ');');
fclose(fileID);

end