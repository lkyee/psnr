clc
gt=imread('E:/Project/RCAN\RCAN_TestCode/butterfly_GT.bmp');
res=imread('E:/Project/RCAN\RCAN_TestCode/butterfly_RCANplus_x4.png');

if 3 == size(gt, 3)
    gt_YCbCr = single(rgb2ycbcr(im2double(gt)));
    gt_Y = gt_YCbCr(:,:,1);
    res_YCbCr = single(rgb2ycbcr(im2double(res)));
    res_Y = res_YCbCr(:,:,1);
else
    gt_Y = single(im2double(gt));
    res_Y = single(im2double(res));
end



lkypsnr(gt_Y*255,res_Y*255,4,4)