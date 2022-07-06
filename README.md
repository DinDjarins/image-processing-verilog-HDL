
# Verilog HDL Implementation of Simple Image Processing

## Job
 Implement basic image processing operations on the input grayscale image using given value and thresold.

#### Constraints
     1. Clock Frequency = 100 GHz
     2. Value = 60 (decimal)
     3. Thresold  = 160 (decimal)

## Design Prototype
 ![prototype](https://user-images.githubusercontent.com/77710362/177599147-45480773-bd06-4bb1-8f3b-faf144301ecc.png)

## Working
 - Convert the Image to binary using Python or Matlab.
 - Load entire image into a memory (array of 8 bit registers) of suitable size in the testbench and then supply 8bits (i.e. each pixel value) to the design module at every positive edge of clock.
 -  Perform following tasks depending on the state of the ‘select’ signal.
        
         State of ‘select’ signal                   Operation
         
                2’b00                      Increase brightness by ‘Value’
                2’b01                      Decrease brightness by ‘Value’
                2’b10                      Binarize the image using ‘Threshold’
                2’b11                      Invert the image

- Store each Byte of the output in another memory and finally  write its content to a .txt file using $writememh function.

## Results
 - Original Image:\
   ![Udyam'22_ICHIP_Round-1](https://user-images.githubusercontent.com/77710362/177598231-4683f887-4560-4c58-935a-a61f931f78ab.jpg)

 - Increased Brightness:\
   ![image_inc](https://user-images.githubusercontent.com/77710362/177598279-d4c07be5-4cf2-437f-8be0-de803c7449c9.jpg)

 - Decreased Brightness:\
   ![image_dec](https://user-images.githubusercontent.com/77710362/177598342-4e9b33ec-2994-442d-91b5-3d0fe7f4b03a.jpg)
   
 - Binarized Image:\
   ![image_bin](https://user-images.githubusercontent.com/77710362/177598421-65b67874-58d5-4241-880a-ba78677e8721.jpg)

 - Inverted Image:\
   ![image_inv](https://user-images.githubusercontent.com/77710362/177598457-566457a4-1402-43fb-8a47-0cc09a9e5185.jpg)
  
