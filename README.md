# BPnetwork_smartcar
### my project display
- [@BP神经网络循迹小车](http://video.tudou.com/v/XMjcwMDE1MTcwMA==.html)
    
### Devices:
* Raspberry_pi3b+ 
* NXP_smartcar game model
* Computer
  
### Dependencies：
* Computer：
  - opencv3.4
  -	Numpy
  -	PiSerial
  -	Pygame
	
* Raspberry Pi:
  -	Picamera
  -	Piserual

* model_car:
  -	K60
		

### Running:
1. Run pi_stream.py in raspberr_pi firstly.
2. Run computer_training_date_collect.py in the computer and use joy to control model_car to collet training_date.The date will be saved in a .npz file
3. Run computer_mlp_training.py in the computer.The network_model will be saved in a .xlm file.
4. Run computer_mydriver.py in the computer.The model_car should be run automatically 


### Note: 
* Here I only provide the core program on the car model, different people will use different objects to control.
* Here we need to operate according to your actual situation.
* You should download the code into car in advance and make sure your car can be controled by computer's command well

* I set up communications between car and computer by using HC05 Bluetooth.
* If your objects is similer to my model_car,and need all my code.you can download another repository [NXP-K60](https://github.com/lurenlym/NXP_K60_7620image).
* Copy all the code files in the app folder here to the corresponding NXP-K60's directory

