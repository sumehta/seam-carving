function img =  displaySeam(im, seam, type)
[rows, columns, ~] = size(im);
if strcmp(type, 'VERTICAL')
  for i = 1:rows
      im(i,seam(i),1) = 255;
      im(i,seam(i),2) = 0;
      im(i,seam(i),3) = 0;
  end
else
  for i = 1:columns
      im(seam(i), i,1) = 255;
      im(seam(i), i,2) = 0;
      im(seam(i), i,3) = 0;
  end
end

imshow(im);
img = im;
end