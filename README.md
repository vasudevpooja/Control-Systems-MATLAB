# Control Systems using MATLAB

 
# The objective of the exercise is to become familiar with writing Matlab programs for control systems.
   1.    **Product of two polynomials:** 
         Let p1(s) and p2(s) be two polynomials. Use Matlab to determine the product of these two polynomials. 
Obtaining the overall transfer function (Block diagram algebra):
Let ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 001](https://user-images.githubusercontent.com/76071184/144806674-9e82f894-cef4-4943-ae4f-8d38f90206c8.png) and ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 002](https://user-images.githubusercontent.com/76071184/144806703-a01a0b63-4055-48c2-9ac9-88496a6bb68b.png) be the two given transfer functions, where 𝐺1(𝑠) and 𝐺2(𝑠) are transfer functions of arbitrary order. 

   2.    **Transfer functions in cascade or series:** 
         Write a program that allows the user to input the numerator and denominator polynomials of two transfer functions, and outputs the numerator and denominator polynomials of the overall transfer function. 
  
   3.    **Transfer functions in parallel:**
         Write a program that allows the user to input the numerator and denominator polynomials of two transfer functions, and outputs the numerator and denominator polynomials of the overall transfer function. 

   4.    **Transfer functions in a feedback loop:**
         Write a program that allows the user to input the numerator and denominator polynomials of two transfer functions, and outputs the numerator and denominator polynomials of the overall transfer function. Here, 𝐺1(𝑠)* is the forward path transfer function, and 𝐺2(𝑠) is the feedback path transfer function.
   
# The objective of this exercise is to learn to use Simulink. Consider a circuit with a resistance R, an inductance L, and a capacitance C, all in series with a voltage source.
  
   1. Determine the transfer function from the applied voltage to the voltage across the capacitance. Hence, obtain the differential equation that governs the dynamics of the system.
   
   2. Rewrite this differential equation by expressing the highest derivative of the dependent variable in terms other derivatives of the dependent variable and the input. 
   
   3. **Implement this in simulink as follows:**
   
      At the Matlab command prompt type simulink. A Simulink library browser opens up. Using the pull-down menu listed under File open a new model. Double click on the Continuous simulink library. Copy the integrator block onto the new model that you created. Create another copy, and connect the two integrators. (Let these two integrators be named One and Two.) From the commonly used blocks get a copy of the summer (sum) the gain block, and the scope block. Connect the output of Two to the scope. Make a second copy of the gain block, and connect the output of one to one gain block and Two to the other gain block. (For visual correctness, it is possible to flip the direction of the gain block by using Ctrl-r.) Double click on the summer and add one more input to the block. Connect the outputs of the gain blocks to two of these inputs. Connect the step block (from the sources simulink library) to the first input through an appropriate gain block. For C=0.01F, L=0.1H, and R=33ohms, simulate and observe the response. 
     
# The objective of this exercise is to use the building blocks for block-diagram algebra for transfer functions developed in question 1, and to perform basic analysis.

   1. Using the program/programs developed in question 1, determine the overall transfer function for the figure shown below. The individual transfer functions are as follows:   
![image](https://user-images.githubusercontent.com/76071184/144807744-33c40a23-1785-4a4a-8f0f-d688ef1513a2.png) 

And also generate a pole-zero map of the closed-loop transfer function in graphical form using the pzmap function.


# The objective of this exercise is to deduce the effect of location of pole and zero on the time-domain response of a system.

   1.    **First-order systems:**
   
   Consider ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 008](https://user-images.githubusercontent.com/76071184/144808071-7e1987b5-2dab-4a11-8fbc-be10d6d68747.png) Compare in terms of rise time and steady-state value the step responses of this system for different values of *p*. Choose p = 0.5, 1, 2, and 10. (For purposes of this experiment, assume the following definition of rise time: the time taken for the output to reach 90% of the final steady-state value.) Based on this, where should one locate the pole if the requirement is a fast response? Where should one locate the pole if the steady-state value of the output is expected to be equal to the input value? Can one independently satisfy both requirements? 

   2.    **Second-order systems:**
   
   Consider ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 009](https://user-images.githubusercontent.com/76071184/144808208-997d8b29-d0a4-4b9d-820f-f00cb0649576.png) Compare in terms of rise time, the settling time, the peak overshoot, and steady-state value the step responses of this system for different values of *a*: Choose a = 0.1, 2.5, 5, 7.5, 10. (Use the definitions in the prescribed text-book.) Ask questions similar to that in first order system, and discuss the results. 

   3.    **The effect of an additional pole:**
  
   Consider ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 010](https://user-images.githubusercontent.com/76071184/144808321-8fb15dc5-3d92-42b2-96ce-877f73bd6708.png) in cascade with a second order system ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 011](https://user-images.githubusercontent.com/76071184/144808411-dc76c3c3-38db-4237-875e-a46b3e66d460.png) Repeat the second order for different values of *p*. Choose p = 5, 10, 20. In your discussions, include as well a comparison of these results with those obtained in second order system. 

   4.    **The effect of an additional zero:**
  
   Consider ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 012](https://user-images.githubusercontent.com/76071184/144808806-b492d2ce-58c9-47e6-902e-6bfab484228a.png)
 . Repeat the second order system for different values of *a*. Choose a = 0.1, 1, 10, 100. In your discussion, include as well a comparison of these results with those obtained in second order system. 


# The objective of this exercise is to compare the response of systems to different kinds of inputs.

Consider the two systems ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 010](https://user-images.githubusercontent.com/76071184/144809016-56f9aecd-2936-4dd7-90bf-91f977dd2254.png) and ![Aspose Words 1db1f892-f5ad-4e3d-a017-6a61b29ad5d3 013](https://user-images.githubusercontent.com/76071184/144809030-e1182a8b-e692-4423-ac9c-3474e369d691.png) Compare the responses of these systems to a step  input and a unit-ramp input. Do the outputs follow or track the input? If so, why? If not, why not? Can one theoretically deduce these results? 

# The objective of this exercise is to deduce the effect of feedback on a system:

   1.    **Open-loop response:**
   
   Consider the following figure where the boring machine 1 is represented by the transfer function ![image](https://user-images.githubusercontent.com/76071184/144809407-03b38c3d-6f90-4c8e-9922-778165db9203.png) is the reference input which represents the desired angle-of-direction of travel of the machine, Y(s) is the actual angle-of-direction of travel, and D(s) is a disturbance input which represents the load on the machine.  Compare the impulse reference response ![image](https://user-images.githubusercontent.com/76071184/144809664-5eb591d5-e48a-4b99-b43a-0f7c5a5e3583.png) for different values of *p*, the step reference response ![image](https://user-images.githubusercontent.com/76071184/144809753-16b54f90-1331-4eb6-9e8d-1494537403a1.png) for different values of *p*, and the situation wherein there is both a step reference and a specified disturbance input: ![image](https://user-images.githubusercontent.com/76071184/144809857-f7b141ee-e58a-45d8-af49-02b42b169464.png)
.All simulations are to be carried out over the time range ![image](https://user-images.githubusercontent.com/76071184/144809945-12aebbdc-d560-4ad6-884a-2ec72343c2ac.png)
 Choose *p* =1,2,5. Your discussions should include the effect of *p* on the steady-state values and the rise time. Can you theoretically determine these values?  ![image](https://user-images.githubusercontent.com/76071184/144810237-273a9ff1-10fb-4935-82f8-b2ca9e0deac1.png)


   2.    **Closed-loop response:**
   
   Consider the following figure where we have closed the loop with the transfer function ![image](https://user-images.githubusercontent.com/76071184/144810583-eef6c40d-402d-4522-a05d-692690e7aca4.png). Compare the impulse reference response ![image](https://user-images.githubusercontent.com/76071184/144810661-5fddaea9-0943-42d8-aa49-a485f69623a8.png) for different values of *p* , the step reference response ![image](https://user-images.githubusercontent.com/76071184/144810720-822441e6-59e6-4d68-acfe-4952d4d32bb8.png) for different values of *p*, and the situation wherein there is both a step reference and a specified disturbance input: ![image](https://user-images.githubusercontent.com/76071184/144810865-02784276-2ff8-46d1-bf4b-3d6a2932c45f.png). All simulations are to be carried out over the time range ![image](https://user-images.githubusercontent.com/76071184/144810974-aba15667-809b-40eb-9410-0c6e81ec8520.png). Choose *p*=1,2,5, and consider two different situations: *K*=20,100. Compare these results with those obtained in first order system. Your discussions should include the effect of *p* on the steady-state values and the rise time. Can you theoretically determine these values? 
![image](https://user-images.githubusercontent.com/76071184/144811934-9ae47d3d-35f3-4089-ab85-5be74f4cc8ac.png)

# Unity Feedback System:
![image](https://user-images.githubusercontent.com/76071184/145024098-f4f5f309-936b-4dcb-b0d8-480a6ffbd033.png)

a. Draw the root locus of the system manually and find the range of k forsystem to be stable.

b. Add a zero at s=-2 and again plot root locus.

c. Add a pole at s=-2 to G(s) and plot the root locus.

d. Add a zero at s=+2 to G(s) and plot the root locus.

e. Compare and comment on the stability of the system and response timeusing results in (b), (c) and (d).

For (b),(c) and (d) use Matlab. (Note: use rlocus command)

# Asymptotic Bode Plot:
Sketch the asymptotic Bode plot on a semilog sheet for the transfer function given
![image](https://user-images.githubusercontent.com/76071184/145024182-2d6fc932-aa06-480e-9501-7c7a53f6a918.png)
Verify the same using MATLAB. (Note: use bode command).

Find:

a. Phase crossover frequency

b. Gain crossover frequency

c. Gain margin

d. Phase margin

*Comment on system stability*



