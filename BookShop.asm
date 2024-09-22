               ;                                               ==================
               ;                                             |  Online Book Shop  |
               ;                                               ==================

               ; This is the Online Book Shop Project. As it is online portal, so for buying & purchasing Buyer have to Create Account First.
               ; So that he can buy every time he visit the Shop. 

               ; 1. Create Account
               ; 2. Login

               ; If he Already have an account then he will not Create account, he login the Account.
               ; If he/she enters Wrong Email or Password after Creation of Account, then he/she cant login or Enter into the Portal.

               ;  Once, Account is login, then User will be provided by the Menu of Book Novels.
               ; 1. English Novels
               ; 2. Urdu Novels
               ; 3. Islamic Books

               ; User have t o select any one of them. If he selects any one of them, then he will be displayed by the sub-list of that Category Books or Novels.
               ; He will select the Book and his/her price will be shown to him.
               ; Prices will be givwn in the Menu.

               ; After buying one book, he will be asked to buy more or not. If he continues, then again hw eill be provided by the Menu and the Proceedure is going on.
               ; If He Exit the Program , For this He will enter Escapr Button. Then he'll be logged out of this Online Portal. 









; Macro to Print the String
PRINT_STR MACRO STR

             LEA DX , STR
             MOV AH , 9
             INT 21H
  
ENDM                        ; End Macro

.MODEL LARGE   ;Use Large MODEL Because of the Large Data
.STACK 1000H   ;Use 1000h Stack Because of the Large Data
.DATA
   D1        DB 10,13,10,13,               "---------------------------------------------------------------------$"
   
   D2        DB 10,13,10,13,                "*******   *******    *******    *     *     ******    *      *   *******    ******$"
   D3        DB 10,13,                      "|     |   |     |    |     |    |    *      *         *      *   |     |    |    *$"
   D4        DB 10,13,                      "*******   |     |    |     |    |****       ******    ********   |     |    ******$"
   D5        DB 10,13,                      "|     |   |     |    |     |    |    *           *    *      *   |     |    |$"
   D6        DB 10,13,                      "*******   *******    *******    *     *     ******    *      *   *******    *$"
   
   D7        DB 10,13,10,13,               "---------------------------------------------------------------------$"
   
   
   
   
   MS000     DB 10,13,10,13,'________________________________________________________$',10,13
   MS1       DB 10,13,10,13,'|                Welcome to Our BOOK SHOP               |$',10,13
   MS00      DB 10,13,10,13, '|_______________________________________________________|$',10,13
   MS2       DB 10,13,10,13,  '      <------------ Create Account ----------->      $'
   MS3       DB 10,13,10,13,  '      <------------ Login Account  ----------->      $'
   MS4       DB 10,13,10,13,  '      Email or Name:     $'
   MS5       DB 10,13,        '      Password:          $'
   MS111     DB 10,13,10,13,'________________________________________________________$',10,13
   MS6       DB 10,13,10,13,'|               Account Created Successfully            |$',10,13
   MS011     DB 10,13,10,13,'|_______________________________________________________|$',10,13
   MSG1      DB 10,13,10,13,  '      < YOU HAVE TO CREATE ACCOUNT FIRST >               $'
   MSG2      DB 10,13,10,13,  '      DO YOU HAVE ACCOUNT?                               $'
   MSG3      DB 10,13,10,13,  '      1. YES                                             $'
   MSG4      DB 10,13,10,13,  '      2. NO                                              $'
   MSG5      DB 10,13,10,13,  '     _____  WRONG EMAIL ID _____ $'
   MSG6      DB 10,13,10,13,  '     _____  WRONG PASWORD  _____ $'

   MS211     DB 10,13,10,13,'________________________________________________________$',10,13
   MSG7      DB 10,13,10,13,'|              Account LOGIN Successfully               |$',10,13
   MS022     DB 10,13,10,13,'|_______________________________________________________|$',10,13
   MS7       DB 10,13,10,13,  '      Enter "L" to display the Book Lists  $'
   MS8       DB 10,13,10,13,  '      Enter your Choice:  $'
   MSG8      DB 10,13,10,13,  '      ENTER YOUR QUANTITY $'
   MSG9      DB 10,13,10,13,  '      TOTAL PRICE:        $'

   MS411     DB 10,13,10,13,'________________________________________________________$',10,13
   MS9       DB 10,13,10,13,'|       Choose your Type of Book from the menu          | $',10,13
   MS044     DB 10,13,10,13,'|_______________________________________________________|$',10,13
   MS10      DB 10,13,'                   1. English Novels      $'
   MS11      DB 10,13,'                   2. Islamic Books       $'
   MS12      DB 10,13,'                   3. Urdu Novels         $'
   MS13      DB 10,13,'                   4. Logout              $'
               
               
   ;BREAKFAST
   MS511     DB 10,13,10,13,'________________________________________________________$',10,13
   MS14      DB 10,13,10,13,'|               List of English Novels                  |$',10,13
   MS055     DB 10,13,10,13,'|_______________________________________________________|$',10,13
   MS15      DB 10,13,'             1.Clarissa                          50/-                       $'
   MS16      DB 10,13,'             2.Nineteen EightyFour               80/-                       $'
   MS17      DB 10,13,'             3.Vuthering Heights                 90/-                       $'
   MS18      DB 10,13,'             4.Middle March                      100/-                       $'
   MS19      DB 10,13,'             5. Nightmare Abbey                  90/-                       $'
   MS20      DB 10,13,'             6.The Lord of The Rings             70/-                       $'
 

 

   ;lunch & dinner
   MS611     DB 10,13,10,13,'________________________________________________________$',10,13
   MS21      DB 10,13,10,13,'|                List of Islamic Books                  |$',10,13
   MS066     DB 10,13,10,13,'|_______________________________________________________|$',10,13
   MS22      DB 10,13,'          1.Muqaddimah                          50/-                $'
   MS23      DB 10,13,'          2.Namaz e Nabvi                       90/-                $'
   MS24      DB 10,13,'          3.Tafseer Ahsan-ul-Bayan              80/-               $'
   MS25      DB 10,13,'          4. Riyad-Us-Saliheen                  100/-               $'
   MS26      DB 10,13,'          5.Minhaj ul Muslim                    100/-               $'
   MS27      DB 10,13,'          6.Zindagi Se Lutf Uthaye              50/-                $'

 
   ;DINNER
   MS711     DB 10,13,10,13,'________________________________________________________$',10,13
   MS28      DB 10,13,10,13,'|                   List of Urdu Novels                 |$',10,13
   MS077     DB 10,13,10,13,'|_______________________________________________________|$',10,13
   MS29      DB 10,13,'         1.MAUT KI KITAB                        80/-                        $'
   MS30      DB 10,13,'         2.Namal                                90/-                        $'
   MS31      DB 10,13,'         3.AAG KA DARYA                         70/-                        $'
   MS32      DB 10,13,'         4.Laa Hasil                            100/-                       $'
   MS33      DB 10,13,'         5.KHUDA KI BASTI                       50/-                        $'


   ;INVALID
   MS34      DB 10,13,10,13,'_____ &&INVALID ENTRY&&_____ $'
   MS35      DB 10,13,'      _____ &&Try Again&&_____ $'

   MS36      DB 10,13,10,13,'Enter your order: $'
   MS37      DB 10,13,'Quantity: $'
   MS311     DB 10,13,10,13,  '------------------------------------------$',10,13
   MS38      DB 10,13,10,13,  '          Total Price:  $'
   MS033     DB 10,13,10,13,  '------------------------------------------$',10,13

   QUANTITY  DB ?
   ITERATE   DB '0'
  

   MS39      DB 10,13,10,13,'Enter BACKSPACE to Go Back to Main Menu$'
   MS40      DB 10,13,10,13,'     Enter Escape to EXIT$'

   STR_NAME  DB 50 DUP('$')
   STR_PASS  DB 50 DUP('$')
   STR_NAME1 DB 50 DUP('$')
   STR_PASS1 DB 50 DUP('$')
   FIRST     DB ?
   SECOND    DB ?
   suj       DW ?
   TEMP      DW ?

.CODE
MAIN PROC


   ; Welcome Screen which print 'BOOK SHOP'
                    MOV       AX,@DATA
                    MOV       DS , AX
                    PRINT_STR D1
                    PRINT_STR D2
                    PRINT_STR D3
                    PRINT_STR D4
                    PRINT_STR D5
                    PRINT_STR D6
                    PRINT_STR D7

   ; Main Menu
   LABELSTART:      
                    PRINT_STR MS000
                    PRINT_STR MS1
                    PRINT_STR MS00
                    PRINT_STR MSG1
                    PRINT_STR MSG2
                    PRINT_STR MSG3
                    PRINT_STR MSG4
                    PRINT_STR MS40
                    PRINT_STR MS8
   ; Take User Choice
                    MOV       AH,1
                    INT       21H
                    CMP       AL, '1'
                    JE        LOGIN              ; Label which Log in The Account
                    CMP       AL,'2'
                    JE        ACCOUNT
                    CMP       AL , 27            ; EXIT THE PROGRAM
                    JE        EXITT1
                    PRINT_STR MS34
                    JMP       LABELSTART

   ; Exit the Program
   EXITT1:          
                    MOV       AH , 4CH
                    INT       21H

   ;Creating Account
   ACCOUNT:         
                    PRINT_STR MS2
                    LEA       DX , MS4
                    MOV       AH , 9
                    INT       21H
   ; Move the offset adresses of string 'Email' & 'Password'
                    LEA       DI , STR_PASS
                    LEA       SI , STR_NAME
                  
   ; Take String for Email
   A1:              
                    MOV       AH , 1
                    INT       21H
                  
                    CMP       AL , 13
                    JE        A21
                    MOV       [SI] , AL
                  
                    INC       SI
                    JMP       A1
   ;Take String as a Password
   A21:             

                    PRINT_STR MS5
                  
                    
                    JMP       A2

   A2:              

                    MOV       AH , 7             ; User value without Echo
                    INT       21H
               
                    CMP       AL , 13
                    JE        SUCCESS
                    MOV       [DI] , AL
                    MOV       DL,'*'
                    MOV       AH,2
                    INT       21H
                    INC       DI
                    JMP       A2
  
   ; Account Created Successfully
   SUCCESS:         
                    PRINT_STR MS111
                    PRINT_STR MS6
                    PRINT_STR MS011
                    JMP       LABELSTART


   ;LOGIN PART START
   LOGIN:           

                    PRINT_STR MS3
                    PRINT_STR MS4
                    LEA       BX , STR_NAME1
              
                    JMP       L1
               
   ; Take String as Email
   L1:              
                    MOV       AH , 1
                    INT       21H
                    CMP       AL , 13
                    JE        PUT
                    MOV       [BX] , AL
                    INC       BX
                    JMP       L1
   PUT:             
                    LEA       BX,STR_NAME1
                    LEA       SI , STR_NAME
                    JMP       L21
   ; COMPARISON (Compare the Email with the Account Email)
   L21:             
   ;   CMP       SI,BX
   ;   JL        L22
                    MOV       AL,[SI]
                    CMP       AL,[BX]
                    JNE       L211
                    cmp       al , '$'
                    je        L22
                    INC       SI
                    INC       BX
                    jmp       L21

            

   ;WRONG EMAIL
   ;If Email Entered is Wrong then Jump to the Login part Again
   L211:            
                    PRINT_STR MSG5
                  
                    JMP       LOGIN

               
   ;Take String as a PASSWORD
   L22:             
                    LEA       BX,STR_PASS1
                    PRINT_STR MS5
                    jmp       L2
   L2:              

               
                    MOV       AH , 7
                    INT       21H

                    CMP       AL , 13
                    JE        CMP_PASS
                    MOV       [BX] , AL
                    MOV       DL,'*'
                    MOV       AH,2
                    INT       21H
               
                    
                    INC       BX
                    JMP       L2
   ;COMPARISON (Compare the Password with the Account Password)
   
   CMP_PASS:        
                    LEA       BX,STR_PASS1
                    LEA       DI , STR_PASS
                   
   t1:              
   ;CMP       DI,BX
   ; JL        PR
                    MOV       AL,[DI]
                    CMP       AL,[BX]
                    JNE       L2111
                    cmp       al , '$'
                    je        PR
                    INC       DI
                    INC       BX
    
    
                    jmp       t1
                    
   ;If Password Entered is Wrong then Jump to the Login part Again
   L2111:           
                    PRINT_STR MSG6
                    JMP       L22
    
   PR:              
                    PRINT_STR MS211
                    PRINT_STR MSG7
                    PRINT_STR MS022
                    JMP       MAIN_MENU

   ;Menu of the Books
   MAIN_MENU:       
                    PRINT_STR MS411
                    PRINT_STR MS9
                    PRINT_STR MS044
                    PRINT_STR MS10
                    PRINT_STR MS11
                    PRINT_STR MS12
                    PRINT_STR MS13
                    PRINT_STR MS40
                    PRINT_STR MS8

                    MOV       AH , 1
                    INT       21H

                    CMP       AL , '1'
                    JE        ENGLISH
                    CMP       AL , '2'
                    JE        ISLAMIC_BOOKS111
                    CMP       AL , '3'
                    JE        URDU_NOVELS111
                    
                    CMP       AL , '4'
                    JE        LOGOUT

                    PRINT_STR MS34
                    JMP       MAIN_MENU
                    JMP       MAIN_MENU
   LOGOUT:          
                    JMP       LABELSTART
   ISLAMIC_BOOKS111:
                    JMP       ISLAMIC_BOOKS11
   URDU_NOVELS111:  
                    JMP       URDU_NOVELS11
   ; Label whick contains the English Novels List
   ENGLISH:         
                    PRINT_STR MS511
                    PRINT_STR MS14
                    PRINT_STR MS055
                    PRINT_STR MS15
                    PRINT_STR MS16
                    PRINT_STR MS17
                    PRINT_STR MS18
                    PRINT_STR MS19
                    PRINT_STR MS20
                    PRINT_STR MS40
  
                    PRINT_STR MS39
                    PRINT_STR MS8
   ;Take User Choice for Novel
                    MOV       AH , 1
                    INT       21H

                    CMP       AL , '1'
                    JE        FIFTY111
                    CMP       AL , "B"
                    CMP       AL , '2'
                    JE        EIGHTY111
                    CMP       AL , '3'
                    JE        NINETY111
                    CMP       AL , '4'
                    JE        HUNDRED111
                    CMP       AL , '5'
                    JE        NINETY111
                    CMP       AL , '6'
                    JE        SEVENTY111
                    PRINT_STR MS34
                    JMP       ENGLISH

   ;Islamic Books
   ISLAMIC_BOOKS11: 
                    JMP       ISLAMIC_BOOKS

   ;Label which contains list of Urdu Novels
   URDU_NOVELS11:   
                    JMP       URDU_NOVELS1

   
   ;Calculate Price which Book price is 50
   FIFTY111:        
                    JMP       FIFTY11
   ;Calculate Price which Book price is 90
   NINETY111:       
                    JMP       NINETY11
   ;Calculate Price which Book price is 70
   SEVENTY111:      
                    JMP       SEVENTY11

   ;Calculate Price which Book price is 70
   EIGHTY111:       
                    JMP       EIGHTY11

   ;Calculate Price which Book price is 100
   HUNDRED111:      
                    JMP       HUNDRED11

   ;Islamic Books List
   ISLAMIC_BOOKS:   
                    PRINT_STR MS611
                    PRINT_STR MS21
                    PRINT_STR MS066
                    PRINT_STR MS22
                    PRINT_STR MS23
                    PRINT_STR MS24
                    PRINT_STR MS25
                    PRINT_STR MS26
                    PRINT_STR MS27
                    PRINT_STR MS40
  
                    PRINT_STR MS39
                    PRINT_STR MS8
   ;Take User Choice
                    MOV       AH , 1
                    INT       21H

                    CMP       AL , '1'
                    JE        FIFTY11
                    CMP       AL , "B"
                    CMP       AL , '2'
                    JE        NINETY11
                    CMP       AL , '3'
                    JE        EIGHTY11
                    CMP       AL , '4'
                    JE        HUNDRED11
                    CMP       AL , '5'
                    JE        HUNDRED11
                    CMP       AL , '6'
                    JE        FIFTY11
                    PRINT_STR MS34
                    JMP       ISLAMIC_BOOKS
   ;Urdu Novels List
   URDU_NOVELS1:    
                    JMP       URDU_NOVELS

   HUNDRED11:       
                    JMP       HUNDRED1
   NINETY11:        
                    JMP       NINETY1
   SEVENTY11:       
                    JMP       SEVENTY
   FIFTY11:         
                    JMP       FIFTY1
   EIGHTY11:        
                    JMP       EIGHTY1
   ;Inner Urdu Novel Label   (Because of Jump Range Error )
   URDU_NOVELS:     
                    PRINT_STR MS711
                    PRINT_STR MS28
                    PRINT_STR MS077
                    PRINT_STR MS29
                    PRINT_STR MS30
                    PRINT_STR MS31
                    PRINT_STR MS32
                    PRINT_STR MS33
                    PRINT_STR MS40
  
                    PRINT_STR MS39
                    PRINT_STR MS8
   ;Take User Choice
                    MOV       AH , 1
                    INT       21H

                    CMP       AL , '1'
                    JE        EIGHTY1
                    CMP       AL , '2'
                    JE        NINETY1
                    CMP       AL , '3'
                    JE        SEVENTY1
                    CMP       AL , '4'
                    JE        HUNDRED1
                    CMP       AL , '5'
                    JE        FIFTY1
                    PRINT_STR MS34
                    JMP       URDU_NOVELS
   
   HUNDRED1:        
                    JMP       HUNDRED
   NINETY1:         
                    JMP       NINETY
   SEVENTY1:        
                    JMP       SEVENTY
   FIFTY1:          
                    JMP       FIFTY
   EIGHTY1:         
                    JMP       EIGHTY

   ;Label which calculate price of 80
   EIGHTY:          
   ; Ask From User the Quantity of Book
                    PRINT_STR MSG8
                    MOV       AH , 1
                    INT       21H
                    SUB       AL,30H
                    MOV       BL , 8
                    MUL       BL
                    AAM                          ;Ascii Adjustment After Multiplication
                   
   ;Divide into two parts
                    MOV       FIRST,AH           ;First part in this variable
                    MOV       SECOND,AL          ;Second part in this variable
                    ADD       FIRST , 30H        ;Convert it into Decimal
                    ADD       SECOND , 30H
                   

                    PRINT_STR MS311
                    PRINT_STR MS38
                    
   ;Print the Price of Book
                    MOV       AH , 2
                    MOV       DL , FIRST
                    INT       21H


  
                    MOV       AH  , 2
                    MOV       DL , SECOND
                    INT       21H

                    MOV       AH,2
                    MOV       DL  , '0'

                    INT       21H
                    PRINT_STR MS033              ;Just Print the line for display
                    JMP       K
   K:               
   ; Ask User Whether to go to Back Menu or Escape
                    PRINT_STR MS39
                    PRINT_STR MS40
                    PRINT_STR MS8
                    MOV       AH , 1
                    INT       21H
                    CMP       AL , 8             ;Ascii Value of Backspace
                    JMP       MAIN_MENU
                    CMP       AL , 27            ;Ascii Value of Escape
                    JMP       EXITT1
                    PRINT_STR MS34
                    JMP       K


   FIFTY:           
   ;Enter Quantity
                    PRINT_STR MSG8
                    MOV       AH , 1
                    INT       21H
                    SUB       AL,30H             ; Convert into Hexadecimal
                    MOV       BL , 5
                    MUL       BL
                    AAM                          ; Ascii Adjustment After Multiplication

  
 
   ;Divide the ans into Two Parts
                    MOV       FIRST,AH
                    MOV       SECOND,AL
                    ADD       FIRST , 30H
                    ADD       SECOND , 30h
                    PRINT_STR MS311
                    PRINT_STR MS38

                    MOV       AH , 2
                    MOV       DL , FIRST         ; First Part
                    INT       21H


  
                    MOV       AH  , 2
                    MOV       DL , SECOND        ;Second Part
                    INT       21H

                    MOV       AH,2
                    MOV       DL  , '0'

                    INT       21H
                    PRINT_STR MS033
                    JMP       KK
   KK:              
   ; Ask from the User Whether to Go Back to Main Menu or Escape
                    PRINT_STR MS39
                    PRINT_STR MS40
                    PRINT_STR MS8
                    MOV       AH , 1
                    INT       21H
                    CMP       AL , 8
                    JMP       MAIN_MENU
                    CMP       AL , 27
                    JMP       EXITT1
                    PRINT_STR MS34
                    JMP       KK
     
   NINETY:          
   ; Ask for Quantity
                    PRINT_STR MSG8
                    MOV       AH , 1
                    INT       21H
                    SUB       AL,30H
                    MOV       BL , 9
                    MUL       BL
                    AAM

  
 
   ;Divide the ans into two Parts
                    MOV       FIRST,AH
                    MOV       SECOND,AL
                    ADD       FIRST , 30H
                    ADD       SECOND , 30H
               
   ;Price Display
                    PRINT_STR MS311
                    PRINT_STR MS38
                  
                    MOV       AH , 2
                    MOV       DL , FIRST
                    INT       21H


  
                    MOV       AH  , 2
                    MOV       DL , SECOND
                    INT       21H

                    MOV       AH,2
                    MOV       DL  , '0'

                    INT       21H
                    PRINT_STR MS033
                    JMP       KK
   KK1:             
   ; Ask from the User Whether to Go Back to Main Menu or Escape
                    PRINT_STR MS39
                    PRINT_STR MS40
                    PRINT_STR MS8
                    MOV       AH , 1
                    INT       21H
                    CMP       AL , 8
                    JMP       MAIN_MENU
                    CMP       AL , 27
                    JMP       EXITT1
                    PRINT_STR MS34
                    JMP       KK1

   ; Deal with the books Whose Price is 100/-
   HUNDRED:         

   
                    PRINT_STR MSG8
                    MOV       AH , 1
                    INT       21H
                    SUB       AL,30H
                    MOV       BL , 1
                    MUL       BL
                    AAM                          ; ASCII Adjustment After Muktiplication

  
 
   ; Divide the ans into two Parts
                    MOV       FIRST,AH
                    MOV       SECOND,AL
                    ADD       FIRST , 30H
                    ADD       SECOND , 30H
               
   ;Price string display
                    PRINT_STR MS311
                    PRINT_STR MS38
                   
                    MOV       AH , 2
                    MOV       DL , FIRST
                    INT       21H


  
                    MOV       AH  , 2
                    MOV       DL , SECOND
                    INT       21H

                    MOV       AH,2
                    MOV       DL  , '0'

                    INT       21H
                    MOV       DL  , '0'

                    INT       21H
                    PRINT_STR MS033
                    JMP       KK
   KK2:             
   ; Ask from the User Whether to Go Back to Main Menu or Escape
                    PRINT_STR MS39
                    PRINT_STR MS40
                    PRINT_STR MS8
                    MOV       AH , 1
                    INT       21H
                    CMP       AL , 8
                    JMP       MAIN_MENU
                    CMP       AL , 27
                    JMP       EXITT1
                    PRINT_STR MS34
                    JMP       KK2

   SEVENTY:         
    
                    PRINT_STR MSG8
                    MOV       AH , 1
                    INT       21H
                    SUB       AL,30H
                    MOV       BL , 7
                    MUL       BL
                    AAM

  
 
   ;After Adjustment Divide the ans into two parts
                    MOV       FIRST,AH           ; First Part
                    MOV       SECOND,AL          ;Second Part
                    ADD       FIRST , 30H
                    ADD       SECOND , 30H
   
                    PRINT_STR MS311
                    PRINT_STR MS38
                    
   ; Display the Price
                    MOV       AH , 2
                    MOV       DL , FIRST
                    INT       21H


  
                    MOV       AH  , 2
                    MOV       DL , SECOND
                    INT       21H

                    MOV       AH,2
                    MOV       DL  , '0'

                    INT       21H
                    PRINT_STR MS033
                    JMP       KK
   KK3:             
   ; Ask from the User Whether to Go Back to Main Menu or Escape
                    PRINT_STR MS39
                    PRINT_STR MS40
                    PRINT_STR MS8
                    MOV       AH , 1
                    INT       21H
                    CMP       AL , 8
                    JMP       MAIN_MENU
                    CMP       AL , 27
                    JMP       EXITT1
                    PRINT_STR MS34
                    JMP       KK3

         

 
MAIN ENDP

   ; Proceedure for Breaking a line & Carriage Return
BREAK PROC
                    MOV       DX,10
                    MOV       AH,2
                    INT       21H
                    MOV       DX,13
                    MOV       AH,2
                    INT       21H
                    RET
BREAK ENDP
END MAIN