# Road-extraction-from-satellite-images
This project deals with extraction of roads from high resolution satellite images,this method is mainly based on thresholding => this method is mainly based on the color of the road so this is not an efficient method,evaldataset directory is the working dataset containing 
satellite images,input_example directory directory contains one of the input image and the output_example directory contains the output images.

Note that the function bwareaopen(BW,P) removes all connected components (objects) that have fewer than P pixels from the binary image BW,in the project we are using the function 'bwareaopen()' to remove the buildings from the satellite image based on no of pixels.So be careful while setting the value of 'p' in bwareaopen(BW,p) so that all the buildings are removed.
