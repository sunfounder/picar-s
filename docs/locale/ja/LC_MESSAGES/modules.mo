Þ    2      ¬              <  ~   =  _   ¼  l     [     4   å  (     :   C  e   ~     ä     r  ¤    o   7  B   §     ê     	  ù  	  i     X   z  ü  Ó     Ð     á     ï     
  7    K   K          ­     Â     Ê     Þ  Á   â     ¤  o  ¬  5     
   R     ]  }  u  R  ó    F  T   Ý  ¼   2    ï  (    =  ¯  $   í  [       n  8   }  H   ¶  Y  ÿ  ¨   Y  w         z   g   ý   I   e!  1   ¯!  E   á!  w   '"  »   "  ,   [#  F  #     Ï%  C   R&  "   &  
   ¹&  W  Ä&  t   )  ]   )  "  ï)     ,     ",     7,     G,    N,  n   æ-  '   U.  '   }.     ¥.  *   µ.     à.  æ   í.     Ô/  ¸  Ü/  5   1     Ë1     Ü1    ÷1  5  3  ã  Ä4  r   ¨6  Ö   7  ½  ò7  ¤  °9  e  U;  '   »<  s   ã<  {  W=  8   Ó>  H   ?   **1. Power and motor control port**: includes pins for supplying the chip and the motors and controlling the motors' direction **1.** **Digital ports**: 3-wire digital sensor ports, signal voltage: 3.3V, VCC voltage: 3.3V. **2**. **Analog ports**: 3-wire 4-channel 8-bit ADC sensor port, reference voltage: 3.3V, VCC voltage: 3.3V. **2. PWM input for the motors**: PWM signal input for adjusting the speed of the two motors **3. Motor output port**: output port for two motors **3.** **I2C ports**: 3.3V I2C bus ports **4**. **5V power output**: 5V power output to PWM driver. **5**. **UART port**: 4-wire UART port, 5V VCC, perfectly working with SunFounder FTDI Serial to USB. **6**. **Motor control ports**: 5V for motors, direction control of motors MA and MB and a floating pin NC; working with motor driver module. **7**. **Switch**: power switch **8**. **Power indicators**: indicating the voltage â 2 indicators on: >7.9V; 1 indicator on: 7.9V~7.4V; no indicator on: <7.4V. To protect the batteries, you're recommended to take them out for charge when there is no indicator on. The power indicators depend on the voltage measuredÂ byÂ theÂ simpleÂ comparatorÂ circuit; the detected voltage may be lower than normal depending on loads, so it is just for reference. **9**. **Power port**: 5.5/2.1mm standard DC port, input voltage: 8.4~7.4V (limited operating voltage: 12V~6V). **LED**: power indicator for the chip and for the PWM power input. **PWM power input**: 12V max. **Principle** **Robot HATS** is a specially-designed HAT for a 40-pin Raspberry Pi and can work with Raspberry Pi 3 model B, 3 model B +, and 4 model B. It supplies power to the Raspberry Pi from the GPIO ports. Thanks to the design of the ideal diode based on the rules of HATS, it can supply the Raspberry Pi via both the USB cable and the DC port thus protecting it from damaging the TF card caused by batteries running out of power. The PCF8591 is used as the ADC chip, with I2C communication, and the address 0x48. 1. **PWM output ports**: 3-color ports, independent power PWM output port, connect to the servo directly. 2 & 3. **I2C port**: 4-wire I2C port, can be used in parallel. Compatible with 3.3V/5.5V All contents including but not limited to texts, images, and code in this manual are owned by the SunFounder Company. You should only use it for personal study, investigation, enjoyment, or other non-commercial or nonprofit purposes, under the related regulations and copyrights laws, without infringing the legal rights of the author and relevant right holders. For any individual or organization that uses these for commercial profit without permission, the Company reserves the right to take legal action. Copyright Notice DC Gear Motor Electrical Specifications: Formula: In other words, the different conduction levels of the phototransistor when it passes over black and white lines can generate different output voltages. Therefore, all we need to do is to collect data by the AD converter on the Atmega328 and then send the data to the master control board via I2C communication. It's a DC motor with a speed reducing gear train. See the parameters below: Light Follower Module Line Follower Module Modules Motor Driver Module Or: PCA9685 16-channel 12-bit I2C Bus PWM driver. It supports independent PWM output power and is easy to use 4-wire I2C port for connection in parallel, distinguished 3-color ports for PWM output. PCA9865 Phototransistor, also known as photodiode, is a device that converts light to current. Currents are generated when photons are absorbed in the P-N junction. When a reverse voltage is applied, the reverse current in the device will change with the light luminance. The stronger the light is, the larger the reverse current will be. Most phototransistors work this way. Range(m) = \frac{Time Interval \times 340_{m/s}}{2}

 Robot HATS SunFounder SF006C Servo Supply a short 10Î¼S pulse to the Trig to start the ranging, and then the module will send out an 8 cycle burst of ultrasound at 40 kHz and raise its echo back. The echo is a distance object that is pulse width and the range in proportion. You can calculate the :math:`\text{Range}` through the :math:`\text{Time Interval}` between sending trigger signal and receiving echo signal. The ADC chip on the HATS can receive 8-bit analog signals and convert them into integers, and transfer the signals to the Raspberry Pi. The Raspberry Pi will analyze the data to determine the direction of the brightest area (the light source), and further control the steering and movement of the four wheels to approach the light source. The HC-SR04 ultrasonic distance sensor provides non-contact measurement from 2cm to 400cm with a range accuracy of 3mm. each HC-SR04 module includes an ultrasonic transmitter, a receiver and a control circuit, so we have to be careful with the Trig and Echo pin connections when using the HC-SR04 module. When we attach it to the picar-s, it measures the distance and detects if there is an obstacle ahead. The Motor Driver module is a low heat generation one and small packaged motor drive. The SunFounder SF0180 Servo is a 180-degree three-wire digital servo. It utilizes PWM signal of 60Hz and has no physical limit â only control by internal software to 180 degrees at most. The TCRT5000 infrared photoelectric switch adopts a high transmit power infrared photodiode and a highly sensitive phototransistor. It works by applying the principle of objects' reflecting IR light â the light is emitted, then reflected, and sensed by the synchronous circuit. Then it determines whether there exists an object or not by the light intensity. It can easily identify black and white lines. The module contains an HC-SR04 ultrasonic distance sensor to detect the distance to an obstacle ahead. It is commonly used for robots to avoid obstacles. With the two holes, it can be easily mounted to the robot. A four foot anti-backwards cable is included to make the wiring tighter and easier. This module is an infrared tracking sensor one that uses 5 TRT5000 sensors. The blue LED of TRT5000 is the emission tube and after electrified it emits infrared light invisible to human eye. The black part of the sensor is for receiving; the resistance of the resistor inside changes with the infrared light received. Ultrasonic Obstacle Avoidance Module We suggest to use over 60ms measurement cycle, so as to prevent trigger signal to the echo. You may need a light focused flashlight in this experiment. At least, the spot size of the torch should not be too big to reach all the 3 phototransistors on the module at the same time. Well, you can also shine the flashlight closer to the car to get a small spot size. \text{Range}(inchs) = \frac{\text{Time Interval}}{148}

 \text{Range}\left( \text{cm} \right) = \frac{\text{Time Interval}}{58}

 Project-Id-Version: SunFounder PiCar-S Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-05-20 18:43+0800
PO-Revision-Date: 2021-05-28 18:07+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 **1.é»æºã¨ã¢ã¼ã¿ã¼å¶å¾¡ãã¼ã**ï¼ãããã¨ã¢ã¼ã¿ã¼ã«é»åãä¾çµ¦ããã¢ã¼ã¿ã¼ã®æ¹åãå¶å¾¡ããããã®ãã³ãå«ã¾ãã¦ããã **1.** **ãã¸ã¿ã«ãã¼ã**ï¼3ç·å¼ãã¸ã¿ã«ã»ã³ãµã¼ãã¼ããä¿¡å·é»å§ï¼3.3VãVCCé»å§ï¼3.3Vã **2.** **ã¢ãã­ã°ãã¼ã**ï¼3ç·4ãã£ãã«8ãããADCã»ã³ãµã¼ãã¼ããåºæºé»å§ï¼3.3VãVCCé»å§ï¼3.3Vã **2.ã¢ã¼ã¿ã¼ã®PWMå¥å**ï¼2ã¤ã®ã¢ã¼ã¿ã¼ã®éåº¦ãèª¿æ´ããããã®PWMä¿¡å·å¥åã **3.ã¢ã¼ã¿ã¼åºåãã¼ã**ï¼2ã¤ã®ã¢ã¼ã¿ã¼ã®åºåãã¼ã **3.** **I2Cãã¼ã**ï¼3.3V I2Cãã¹ãã¼ã **4.** **5Vé»æºåºå**ï¼PWMãã©ã¤ãã¼ã¸ã®5Vé»æºåºåã **5.** **UARTãã¼ã**ï¼4ç·UARTãã¼ãã¨5V VCCã¯USBã¸ã®SunFounder FTDIã·ãªã¢ã«ã¨å®å¨ã«é£æºããã **6.** **ã¢ã¼ã¿ã¼å¶å¾¡ãã¼ã**ï¼ã¢ã¼ã¿ã¼ç¨5Vãã¢ã¼ã¿ã¼MAã¨MBã®æ¹åå¶å¾¡ããã­ã¼ãã£ã³ã°ãã³NCãã¢ã¼ã¿ã¼ãã©ã¤ãã¼ã¢ã¸ã¥ã¼ã«ã¨ã®é£æºã **7.** **ã¹ã¤ãã**ï¼é»æºã¹ã¤ãã **8.** **é»æºã¤ã³ã¸ã±ã¼ã¿**ï¼é»å§ãæç¤ºãã-2ã¤ã®ã¤ã³ã¸ã±ã¼ã¿ãç¹ç¯ï¼> 7.9Vã1ã¤ã®ã¤ã³ã¸ã±ã¼ã¿ã¼ï¼7.9Vã7.4Vãã¤ã³ã¸ã±ã¼ã¿ç¹ç¯ãªãï¼<7.4Vãããããªã¼ãä¿è­·ããããã«ãã¤ã³ã¸ã±ã¼ã¿ã¼ãç¹ç¯ãã¦ããªãå ´åã¯ãåé»ããéã«ãããåãåºãã¦ãã ãããé»æºã¤ã³ã¸ã±ã¼ã¿ã¯åç´ãªã³ã³ãã¬ã¼ã¿åè·¯ã«ãã£ã¦æ¸¬å®ãããé»å§ã«ä¾å­ãããè² è·ã«ãã£ã¦ã¯æ¤åºé»å§ãéå¸¸ããä½ä¸ããå ´åãããã®ã§åèå¤ã¨ãã¦ãå©ç¨ãã ããã **9.** **é»æºãã¼ã**ï¼5.5/2.1mmæ¨æºDCãã¼ããå¥åé»å§ï¼8.4ã7.4Vï¼å¶éãããåä½é»å§ï¼12Vã6Vï¼ã **LED**ï¼ãããã¨PWMé»æºå¥åç¨é»æºã¤ã³ã¸ã±ã¼ã¿ã **PWMé»æºå¥å**ï¼æå¤§12Vã **åç** **ã­ãããHATS**ã¯40ãã³Raspberry Piã«ç¹å¥ã«è¨­è¨ãããHATã§ãããRaspberry Piä¸ä»£3ã¢ãã«Bãä¸ä»£3ã¢ãã«B +ãä¸ä»£4ã¢ãã«Bã§åä½ããGPIOãã¼ãããRaspberry Piã«é»åãä¾çµ¦ãããHATSã®ã«ã¼ã«ã«åºã¥ããçæ³çãªãã¤ãªã¼ãã®è¨­è¨ã«ãããUSBã±ã¼ãã«ã¨DCãã¼ãã®ä¸¡æ¹ãä»ãã¦Raspberry Piã«é»æºãä¾çµ¦ã§ãããããããããªã¼ã®é»åä¸è¶³ã«ãã£ã¦TFã«ã¼ããæå·ãããã¨ãé²ããã¨ãã§ãããPCF8591ã¯I2Céä¿¡ã¨ã¢ãã¬ã¹0x48ãåããADCãããã¨ãã¦ä½¿ç¨ãããã 1. **PWMåºåãã¼ã**ï¼3è²ãã¼ããç¬ç«ãããã¯ã¼PWMåºåãã¼ãããµã¼ãã¸ã®ç´æ¥æ¥ç¶ã 2 & 3. **I2Cãã¼ã**ï¼4ç·å¼I2Cãã¼ãã¯ä¸¦åã§ä½¿ç¨ã§ããã3.3V/5.5Vã«å¯¾å¿ ãã®ããã¥ã¢ã«ã®ãã­ã¹ããç»åã¨ã³ã¼ããå«ãããããã«éå®ãããªããã¹ã¦ã®åå®¹ã¯ãSunFounder Companyãææãã¦ãããé¢é£ããè¦å¶ã¨èä½æ¨©æ³ã«åºã¥ããèèã¨é¢é£ããæ¨©å©ææèã®æ³çæ¨©å©ãä¾µå®³ãããã¨ãªããåäººçãªç ç©¶ãèª¿æ»ãäº«æ¥½ãã¾ãã¯ãã®ä»ã®éå¶å©ç®çã§ã®ã¿ä½¿ç¨ãã¦ãã ãããè¨±å¯ãªãå¶å©ç®çã§ãããä½¿ç¨ããåäººã¾ãã¯çµç¹ã«ã¤ãã¦ã¯ãä¼ç¤¾ã¯æ³çæªç½®ãåãæ¨©å©ãçä¿ããã èä½æ¨©è¡¨ç¤º DCã®ã¢ã¢ã¼ã¿ã¼ é»æ°ä»æ§ï¼ å¼ï¼ è¨ãæããã¨ããã©ããã©ã³ã¸ã¹ã¿ãé»ã¨ç½ã®ã©ã¤ã³ãééããã¨ãã®ç°ãªãä¼å°ã¬ãã«ã«ãããç°ãªãåºåé»å§ãçæãããå¯è½æ§ãããããããã£ã¦ãå¿è¦ãªã®ã¯ãAtmega328ã®ADã³ã³ãã¼ã¿ã¼ã«ãã£ã¦ãã¼ã¿ãåéããI2Céä¿¡ãä»ãã¦ãã¹ã¿ã¼ã³ã³ãã­ã¼ã«ãã¼ãã«ãã¼ã¿ãéä¿¡ãããã¨ã ãã§ããã ããã¯æ¸éæ©ä»ãã®DCã¢ã¼ã¿ã¼ã§ãããä»¥ä¸ã®ãã©ã¡ã¼ã¿ã¼ãåç§ãã¦ãã ããï¼ ã©ã¤ããã©ã­ã¯ã¼ã¢ã¸ã¥ã¼ã« ã©ã¤ã³ãã©ã­ã¯ã¼ã¢ã¸ã¥ã¼ã« ã¢ã¸ã¥ã¼ã« ã¢ã¼ã¿ã¼ãã©ã¤ãã¼ã¢ã¸ã¥ã¼ã« ã¾ãã¯ï¼ PCA9685 16ãã£ãã«12ãããI2Cãã¹PWMãã©ã¤ãã¼ãç¬ç«ããPWMåºåé»åããµãã¼ãããä¸¦åæ¥ç¶ç¨ã®4ç·å¼I2Cãã¼ããPWMåºåç¨ã®åºå¥ããã3è²ãã¼ããããç°¡åã«å©ç¨ã§ããã PCA9865 ãã©ããã©ã³ã¸ã¹ã¿ã¼ã¯ãã©ããã¤ãªã¼ãã¨ãå¼ã°ããåãé»æµã«å¤æããããã¤ã¹ã§ããããã©ãã³ãPNã¸ã£ã³ã¯ã·ã§ã³ã§å¸åãããã¨ãé»æµãçæããããéé»å§ãå°å ãããã¨ãããã¤ã¹ã®éé»æµã¯åã®è¼åº¦ã¨ã¨ãã«å¤åãããåãå¼·ãã»ã©ãéé»æµãå¤§ãããªããã»ã¨ãã©ã®ãã©ããã©ã³ã¸ã¹ã¿ã¯ãã®ããã«åä½ããã Range(m) = \frac{Time Interval \times 340_{m/s}}{2}

 ã­ãããHATS SunFounder SF006Cãµã¼ã Trigã«10usã®ç­ããã«ã¹ãä¾çµ¦ãã¦ã¬ã³ã¸ã³ã°ãéå§ããã¢ã¸ã¥ã¼ã«ã¯40 kHzã§8ãµã¤ã¯ã«ã®è¶é³æ³¢ãã¼ã¹ããéä¿¡ããEchoã«ã¨ã³ã¼ãä¸ãããã¨ã³ã¼ã¯ãã«ã¹å¹ã¨è·é¢ã«æ¯ä¾ããè·é¢ãªãã¸ã§ã¯ãã§ãããããªã¬ã¼ä¿¡å·ãéä¿¡ãã¦ããã¨ã³ã¼ä¿¡å·ãåä¿¡ããã¾ã§ã®éã«ãTime Intervalãéãã¦Rangeãè¨ç®ã§ããã HATSã®ADCãããã¯8ãããã®ã¢ãã­ã°ä¿¡å·ãåä¿¡ãã¦æ´æ°ã«å¤æããä¿¡å·ãRaspberry Piã«è»¢éãããRaspberry Piã¯ãã¼ã¿ãåæãã¦ãæãæããé åï¼åæºï¼ã®æ¹åãæ±ºå®ãã4ã¤ã®è»è¼ªã®ã¹ãã¢ãªã³ã°ã¨åããå¶å¾¡ãã¦åæºã«è¿ã¥ããã HC-SR04è¶é³æ³¢è·é¢ã»ã³ãµã¯ã2cmãã400cmã¾ã§ã®è·é¢ã3mmã®ç¯å²ç²¾åº¦ã§éæ¥è§¦ã§æ¸¬å®ãããã¨ãã§ãã¾ããHC-SR04ã¢ã¸ã¥ã¼ã«ã¯ãããããè¶é³æ³¢éä¿¡æ©ãåä¿¡æ©ãå¶å¾¡åè·¯ãå«ã¾ãã¦ãããããHC-SR04ã¢ã¸ã¥ã¼ã«ãä½¿ç¨ããéã«ã¯ãTrigç«¯å­ã¨Echoç«¯å­ã®æ¥ç¶ã«æ³¨æããå¿è¦ãããã¾ãã PiCar-Sã«è£çããã¨ãè·é¢ãè¨æ¸¬ããåæ¹ã«éå®³ç©ããããã©ãããæ¤ç¥ãã¾ãã ã¢ã¼ã¿ã¼ãã©ã¤ãã¼ã¢ã¸ã¥ã¼ã«ã¯ä½çºç±ã®å°åããã±ã¼ã¸ã¢ã¼ã¿ã¼ãã©ã¤ãã§ããã SunFounder SF0180ãµã¼ãã¯180åº¦ã®3ç·å¼ãã¸ã¿ã«ãµã¼ãã§ããã60Hzã®PWMä¿¡å·ãå©ç¨ããç©çå¶éã¯ãªããæå¤§180åº¦ã¾ã§ã®åé¨ã½ããã¦ã§ã¢ã®ã¿ã«ãã£ã¦å¶å¾¡ãããã TCRT5000èµ¤å¤ç·åé»ã¹ã¤ããã¯é«éä¿¡é»åèµ¤å¤ç·ãã©ããã¤ãªã¼ãã¨é«æåº¦ãã©ããã©ã³ã¸ã¹ã¿ãæ¡ç¨ãã¦ãããããã¯ããªãã¸ã§ã¯ãã®IRåå°åã®åçãé©ç¨ãããã¨ã«ãã£ã¦æ©è½ãããåã¯æ¾å°ãããæ¬¡ã«åå°ãããåæåè·¯ã«ãã£ã¦æç¥ããããããã¦ãåã®å¼·å¼±ã«ãã£ã¦ç©ä½ã®æç¡ãå¤æ­ãããç½é»ã®ç·ãç°¡åã«è­å¥ã§ããã ã¢ã¸ã¥ã¼ã«ã«ã¯ãåæ¹ã®éå®³ç©ã¾ã§ã®è·é¢ãæ¤åºããè¶é³æ³¢è·é¢ã»ã³ãµHC-SR04ãæ­è¼ããã¦ãã¾ãã ã­ããããéå®³ç©ãé¿ããããã«ããä½¿ããã¦ãã¾ãã 2ã¤ã®ç©´ãããã®ã§ãã­ãããã«ç°¡åã«åãä»ãããã¨ãã§ãã¾ãã 4ãã³ã®éæ»ãé²æ­¢ã±ã¼ãã«ãä»å±ãã¦ããã®ã§ãããã¿ã¤ãã§ç°¡åã«éç·ãã§ãã¾ãã ãã®ã¢ã¸ã¥ã¼ã«ã¯5ã¤ã®TRT5000ã»ã³ãµã¼ãä½¿ç¨ããèµ¤å¤ç·è¿½è·¡ã»ã³ãµã¼ã§ãããTRT5000ã®éè²LEDã¯çºåç®¡ã§ãããéé»ããã¨äººéã®ç®ã«ã¯è¦ããªãèµ¤å¤åãçºãããã»ã³ãµã¼ã®é»ãé¨åã¯åä¿¡ã«ä½¿ç¨ããããåé¨ã®æµæå¨ã®æµæå¤ã¯ãåä¿¡ããèµ¤å¤ç·ã«ãã£ã¦å¤åããã è¶é³æ³¢éå®³ç©åé¿ã¢ã¸ã¥ã¼ã« ã¨ã³ã¼ã¸ã®ããªã¬ã¼ä¿¡å·ãé²ãããã«ã60msä»¥ä¸ã®æ¸¬å®ãµã¤ã¯ã«ãä½¿ç¨ãã¦ãã ããã ãã®å®é¨ã§ã¯ãåã«ç¦ç¹ãå½ã¦ãæä¸­é»ç¯ãå¿ç¨ãããå°ãªãã¨ããã¢ã¸ã¥ã¼ã«ã®3ã¤ã®ãã©ããã©ã³ã¸ã¹ã¿ã«åæã«å°éããããã«ããã¼ãã®ã¹ããããµã¤ãºã¯å¤§ãããã¦ã¯ãªããªããã¾ããããªãã¯å°ããªã¹ããããµã¤ãºãå¾ãããã«è»ã®è¿ãã«æä¸­é»ç¯ãç§ãããã¨ãã§ããã \text{Range}(inchs) = \frac{\text{Time Interval}}{148}

 \text{Range}\left( \text{cm} \right) = \frac{\text{Time Interval}}{58}

 