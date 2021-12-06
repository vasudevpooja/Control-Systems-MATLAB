**Control Systems using MATLAB**
**

The objective of the exercise is to become familiar with writing Matlab programs for control systems. 
   1. Product of two polynomials: Let p1(s) and p2(s) be two polynomials. Use Matlab to determine the product of these two polynomials. 
Obtaining the overall transfer function (Block diagram algebra):
Let ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 001](https://user-images.githubusercontent.com/76071184/144806674-9e82f894-cef4-4943-ae4f-8d38f90206c8.png) and ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 002](https://user-images.githubusercontent.com/76071184/144806703-a01a0b63-4055-48c2-9ac9-88496a6bb68b.png) be the two given transfer functions, where 𝐺1(𝑠) and 𝐺2(𝑠) are transfer functions of arbitrary order. 

   2. Transfer functions in cascade or series: Write a program that allows the user to input the numerator and denominator polynomials of two transfer functions, and outputs the numerator and denominator polynomials of the overall transfer function. 
  
   3. Transfer functions in parallel:* Write a program that allows the user to input the numerator and denominator polynomials of two transfer functions, and outputs the numerator and denominator polynomials of the overall transfer function. 

   4. *Transfer functions in a feedback loop:* Write a program that allows the user to input the numerator and denominator polynomials of two transfer functions, and outputs the numerator and denominator polynomials of the overall transfer function. Here, 𝐺1(𝑠)* is the forward path transfer function, and 𝐺2(𝑠) is the feedback path transfer function.
   

1. The objective of this exercise is to learn to use Simulink. Consider a circuit with a resistance R, an inductance L, and a capacitance C, all in series with a voltage source. 
   1. Determine the transfer function from the applied voltage to the voltage across the capacitance. Hence, obtain the differential equation that governs the dynamics of the system. 
   1. Rewrite this differential equation by expressing the highest derivative of the dependent variable in terms other derivatives of the dependent variable and the input. 
   1. Implement this in simulink as follows: At the Matlab command prompt type simulink. A Simulink library browser opens up. Using the pull-down menu listed under File open a new model. Double click on the Continuous simulink library. Copy the integrator block onto the new model that you created. Create another copy, and connect the two integrators. (Let these two integrators be named One and Two.) From the commonly used blocks get a copy of the summer (sum) the gain block, and the scope block. Connect the output of Two to the scope. Make a second copy of the gain block, and connect the output of one to one gain block and Two to the other gain block. (For visual correctness, it is possible to flip the direction of the gain block by using Ctrl-r.) Double click on the summer and add one more input to the block. Connect the outputs of the gain blocks to two of these inputs. Connect the step block (from the sources simulink library) to the first input through an appropriate gain block. For C = 0.01 F, L = 0.1 H, and R = 33 ohms, simulate and observe the response. 
1. The objective of this exercise is to use the building blocks for block-diagram algebra for transfer functions developed in question 1., and to perform basic analysis.  
   1. Using the program/programs developed in question 1., determine the overall transfer function for the figure shown below. The individual transfer functions are as follows:  

*G*1(*s*) = 1 ;*G*2(*s*) = 1 ;*G*3(*s*) =![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.003.png)2 *s* 2 +1 ;*G*4(*s*) = *s* +1 ; *s* +10 *s* +1 *s* + 4*s* + 4 *s* + 6 

![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.004.png)

![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.005.png)

![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.006.png)

1 

)

(

;

2

)

(

;

2 

1 

)

(

3

2

1

\=

\=

\+

\+

\=

*s*

*H*

*s*

*H*

*s*

*s* 

*s*

*H*

3.2.



Generate 

a 

pole

\-

zero 

map 

of 

the 

closed

\-

loop 

transfer 

function 

in 

![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.007.png) 

graphical form using the **pzmap** function. 



1. The objective of this exercise is to deduce the effect of location of pole and zero on the time-domain response of a system. 



1. First-order systems: Consider![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.008.png) . Compare in terms of rise time and steady-state value the step responses of this system for different values of *p*. Choose p = 0.5, 1, 2, and 10. (For purposes of this experiment, assume the following definition of rise time: the time taken for the output to reach 90% of the final steady-state value.) Based on this, where should one locate the pole if the requirement is a fast response? Where should one locate the pole if the steady-state value of the output is expected to be equal to the input value? Can one independently satisfy both requirements? 



1. Second-order systems: Consider ![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.009.png). Compare in terms of rise time, the settling time, the peak overshoot, and steady-state value the step responses of this system for different values of *a*: Choose a = 0.1, 2.5, 5, 7.5, 10. (Use the definitions in the prescribed text-book.) Ask questions similar to that in 4.a, and discuss the results. 



1. The effect of an additional pole: Consider ![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.010.png)* in cascade with a first order system ![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.011.png). Repeat the experiment 4.b for different values of *p*. Choose p = 5, 10, 20. In your discussions, include as well a comparison of these results with those obtained in 4.b. 



1. The effect of an additional zero: Consider ![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.012.png) . Repeat the experiment 4.b for different values of *a*. Choose a = 0.1, 1, 10, 100. In your discussion, include as well a comparison of these results with those obtained in 4.b. 





1. The objective of this exercise is to compare the response of systems to different kinds of inputs. Consider the two systems ![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.010.png) and 

![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.013.png). Compare the responses of these systems to a step 

input and a unit-ramp input. Do the outputs follow or track the input? If so, why? If not, why not? Can one theoretically deduce these results? 



1. The objective of this exercise is to deduce the effect of feedback on a system, specifically, a boring machine. (What were the boring machines that have been used for the “Namma Metro” construction?) The machines operating from both ends of a tunnel bore toward the middle. To link up accurately in the middle of the tunnel, a laser guidance system keeps the machines precisely aligned. (What would happen if this is not ensured?)  
   1. Open-loop response: Consider the following figure where the boring machine 1 is represented by the transfer function *G*(*s*) = , *R*(*s*) is the reference 

![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.014.png)

*s*(*s*+ *p*)

input which represents the desired angle-of-direction of travel of the machine, *Y*(*s*)is the actual angle-of-direction of travel, and *D*(*s*) is a disturbance input which represents the load on the machine.  Compare the impulse reference response (i.e., *r*(*t*) =d(*t*), *d*(*t*) = 0) for different values of *p* , the step reference response (i.e., *r*(*t*) =1(*t*), *d*(*t*) = 0) for different values of *p* , 

and the situation wherein there is both a step reference and a specified 

ì1, 0 £ *t* £ 4 disturbance input:   *r*(*t*) =1(*t*), *d*(*t*) =í . All simulations are to be 

î2	4 < *t* £ 8

carried out over the time range 0£ *t* £8. Choose *p* =1, 2,5. Your discussions should include the effect of *p* on the steady-state values and the rise time. Can you theoretically determine these values? D(s)  







\+



G(s)



![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.015.png)R(s) Y(s) 





6.2. Closed-loop response: Consider the following figure where we have closed the loop with the transfer function *G*1(*s*) =11*s*+*K* . Compare the impulse reference response (i.e., *r*(*t*) =d(*t*), *d*(*t*) = 0) for different values of *p* , the step reference response (i.e., *r*(*t*) =1(*t*), *d*(*t*) = 0) for different values of *p* , and the 

situation wherein there is both a step reference and a specified disturbance 

ì1,	0 £ *t* £ 4 input:   *r*(*t*) =1(*t*), *d*(*t*) =í	. All simulations are to be carried out over 

î2	4 < *t* £ 8

the time range 0£ *t* £8. Choose p = 1, 2, 5, and consider two different situations: *K* = 20,100. Compare these results with those obtained in 4.1a. Your discussions should include the effect of *p* on the steady-state values and the rise time. Can you theoretically determine these values?  













D

s

(

)



\-



\+



Y(s)



R

(

s

)



\+



G(s)



G

1

)

s

(



![](Aspose.Words.1db1f892-f5ad-4e3d-a017-6a61b29ad5d3.016.png)




