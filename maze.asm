           
   draw_maze_contour:
        mov dl,1
        mov dh,0
        draw_topleft_coner:
        call SetCursor       
            PRINT 201
        
        draw_topmaze:
        
            add dl,1
            call SetCursor       
            PRINT 205 
            cmp dl,60
            je draw_topright_coner
            loop draw_topmaze
        
        draw_topright_coner:
            add dl,1
            call SetCursor                  
            PRINT 187
        
    
        draw_downmaze:
            add dh,1
            call SetCursor       
            PRINT 186 
            cmp dh,21
            je draw_bottomright_coner
           loop draw_downmaze
           
        draw_bottomright_coner:
            call SetCursor      
            PRINT 188
        
        draw_bottommaze:
            sub dl,1
            call SetCursor       
            PRINT 205 
            cmp dl,2
            je draw_bottomleft_coner
           loop draw_bottommaze
           
         draw_bottomleft_coner:
            call SetCursor       
            PRINT 200 
        
        draw_upmaze:
            sub dh,1
            call SetCursor       
            PRINT 186 
            cmp dh,1
            je draw_inv
           loop draw_upmaze 
           
           
          
      draw_inv: 
      
        mov dl,63
        mov dh,-1
        draw_leftinv:
        
            add dh,1
            call SetCursor       
            PRINT 'I' 
            cmp dh,5
            je draw_downinv
            loop draw_leftinv
    
        draw_downinv:
            add dl,1
            call SetCursor      
            PRINT '-' 
            cmp dl,75
            je draw_rightinv
           loop draw_downinv
        
        draw_rightinv:
            sub dh,1
            call SetCursor       
            PRINT 'I' 
            cmp dh,0
            je draw_textinv
           loop draw_rightinv
           
          draw_textinv:
                mov dl,65
                mov dh,2
                call SetCursor       
                PRINT 'Inventory'
            
           
     
        

         draw_redzone:
     
     draw_wall1_redzone:
     
           mov dl,4
           mov dh,22
           call SetCursor
           PRINT 202
           
           draw_wall1_redzone_p2:
           
          sub dh,1
          call SetCursor
          PRINT 186
          
          cmp dh,19
          je draw_wall1_redzone_p3
          loop draw_wall1_redzone_p2 
            
          draw_wall1_redzone_p3:
           sub dh,1
           call SetCursor
          PRINT 201
          
          add dl,1
          call SetCursor
          PRINT 205
          
          
      draw_wall2_redzone:
     
           mov dl,1
           mov dh,16
           call SetCursor
           PRINT 204
           
           draw_wall2_redzone_p2:
           
          add dl,1
          call SetCursor
          PRINT 205
          
          cmp dl,13
          je draw_wall2_redzone_p3
          loop draw_wall2_redzone_p2 
            
          draw_wall2_redzone_p3:
           add dl,1
           call SetCursor
          PRINT 203
          
          draw_wall2_redzone_p4:
           mov dl,8
           mov dh,16
           call SetCursor
           PRINT 203
           
           
       draw_wall3_redzone:
     
           mov dl,14
           mov dh,16
           
           draw_wall3_redzone_p1:
           add dh,1
           call SetCursor
           PRINT 186
           
           cmp dh,21
           je draw_wall3_redzone_p2
           loop draw_wall3_redzone_p1
           
          draw_wall3_redzone_p2:
          add dh,1
          call SetCursor
          PRINT 202
          
        draw_wall4_redzone:
     
           mov dl,8
           mov dh,16
           
           draw_wall4_redzone_p1:
           add dh,1
           call SetCursor
           PRINT 186
           
           cmp dh,19
           je draw_wall4_redzone_p2
           loop draw_wall4_redzone_p1
           
          draw_wall4_redzone_p2:
          add dh,1
          call SetCursor
          PRINT 188
          
          sub dl,1
          call SetCursor
          PRINT 205
          
       draw_wall5_redzone:
         mov dl,14
         mov dh,17 
         
       draw_wall5_redzone_p1:
         add dh,1
         call SetCursor
         
         PRINT 185
         
         cmp dh,20
         je draw_wall5_redzone_p2
         loop draw_wall5_redzone_p1  
         
        draw_wall5_redzone_p2:
        
        sub dl,1
        call SetCursor
        
        PRINT 202
        
        sub dh,1
        call SetCursor
        PRINT 206
        
        sub dh,1 
        call SetCursor
        PRINT 203
        
        sub dl,1
        call SetCursor
        PRINT 201 
        
        add dh,1
        call SetCursor
        PRINT 204
        
        add dh,1
        call SetCursor
        PRINT 200 
        
        
        
       draw_purplezone:
       
       ;le wall 1 est tout le contour de la zone
       draw_wall1_purplezone_p1:
       
       mov dl,15
       mov dh,16
       call SetCursor
       
       PRINT 202
       
       draw_wall1_purplezone_p2:
       
       sub dh,1   
       
       call SetCursor 
       
       PRINT 186
       
       cmp dh,8
       je draw_wall1_purplezone_p3
       loop draw_wall1_purplezone_p2
       
       draw_wall1_purplezone_p3:  
       
       sub dh,1
       call SetCursor
       PRINT 203
       
       draw_wall1_purplezone_p4:
       
       add dl,1
       call SetCursor
       PRINT 205
       
       cmp dl,23
       je draw_wall1_purplezone_p5
       loop draw_wall1_purplezone_p4 
       
       draw_wall1_purplezone_p5:
       
       add dl,1
       call SetCursor
       PRINT 185
       
       draw_wall1_purplezone_p6:
       
       add dh,1
       call SetCursor
       PRINT 186
       
       cmp dh,11
       je draw_wall1_purplezone_p7
       loop draw_wall1_purplezone_p6
       
       draw_wall1_purplezone_p7:
       
       add dh,1
       call SetCursor 
       PRINT 202 
       
       draw_wall1_purplezone_p8:
       
       sub dl,1
       call SetCursor
       PRINT 203
       
       draw_wall1_purplezone_p9:
       add dh,1
       call SetCursor
       PRINT 186
       cmp dh,21
       je draw_wall1_purplezone_p10
       loop draw_wall1_purplezone_p9
       
       draw_wall1_purplezone_p10:
       add dh,1
       call SetCursor 
       PRINT 202 
       
       
       
       mov dl,15
       mov dh,16
       call SetCursor
       draw_internalwall1_purplezone:
       add dl,1
       call SetCursor
       PRINT 205
       cmp dl,19
       je draw_internalwall1_purplezone_p1
       loop draw_internalwall1_purplezone
       
       draw_internalwall1_purplezone_p1:
       
       add dl,1
       call SetCursor
       PRINT 187
       
       draw_internalwall1_purplezone_p2:
       
       add dh,1
       call SetCursor
       PRINT 186
       cmp dh,19
       je draw_internalwall1_purplezone_p3
       loop draw_internalwall1_purplezone_p2
       
       draw_internalwall1_purplezone_p3:
       add dh,1
       call SetCursor
       PRINT 188
       
       draw_internalwall1_purplezone_p4:
       
       sub dl,1
       call SetCursor
       PRINT 205
       cmp dl,17
       je draw_internalwall1_purplezone_p5
       loop draw_internalwall1_purplezone_p4
       
       draw_internalwall1_purplezone_p5:
       
       mov dh,16
       mov dl,17
       call SetCursor
       PRINT 203
       
       draw_internalwall1_purplezone_p6:
       add dh,1
       call SetCursor
       PRINT 186
       cmp dh,18
       je draw_internalwall2_purplezone
       loop draw_internalwall1_purplezone_p6
       
       draw_internalwall2_purplezone:
       
       mov dh,11
       mov dl,15
       call SetCursor
       PRINT 206
       
       draw_internalwall2_purplezone_p1:
       
       add dl,1
       call SetCursor
       PRINT 205
       
       cmp dl,17
       je draw_internalwall2_purplezone_p2
       loop draw_internalwall2_purplezone_p1
       
       draw_internalwall2_purplezone_p2:
       
       add dl,1
       call SetCursor
       PRINT 185
       
       draw_internalwall2_purplezone_p3:
       
       add dh,1
       call SetCursor
       PRINT 186
       cmp dh,13
       je draw_internalwall2_purplezone_p4
       loop draw_internalwall2_purplezone_p3
       
       draw_internalwall2_purplezone_p4:
       add dh,1
       call SetCursor
       PRINT 200
       
       draw_internalwall2_purplezone_p5:
       add dl,1
       call SetCursor
       PRINT 205 
       cmp dl,20
       je draw_internalwall2_purplezone_p6
       loop draw_internalwall2_purplezone_p5
       
       draw_internalwall2_purplezone_p6:
       
       mov dh,10
       mov dl,18
       call SetCursor
       PRINT 186
       sub dh,1
       call SetCursor
       PRINT 186
        
       
       
       draw_internalwall3_purplezone:
       
       mov dh,12
       mov dl,22
       
       call SetCursor
       PRINT 205
       
       draw_internalwall3_purplezone_p1:
       sub dl,1
       call SetCursor
       PRINT 200
       
       draw_internalwall3_purplezone_p2:
       sub dh,1
       call SetCursor
       PRINT 186
       cmp dh,9
       je draw_wall_yellowzone
       loop draw_internalwall3_purplezone_p2
       
       
       draw_wall_yellowzone:
       mov dh,5
       mov dl,24
       call SetCursor
       PRINT 186
       sub dh,1
       call SetCursor
       PRINT 186
       sub dh,1
       call SetCursor
       PRINT 203
       
       draw_wall_yellowzone_p1:
       sub dl,1
       call SetCursor
       PRINT 205
       
       cmp dl,19
       je draw_wall_yellowzone_p2
       loop draw_wall_yellowzone_p1
       
       draw_wall_yellowzone_p2:
       sub dl,1
       call SetCursor
       PRINT 200
       
       draw_wall_yellowzone_p3:
       sub dh,1
       call SetCursor
       PRINT 186
       sub dh,1
       call SetCursor
       PRINT 186
       sub dh,1
       call SetCursor
       PRINT 203
       
       
       
      draw_wall2_yellowzone:
      mov dh,7
      mov dl,14
      call SetCursor
      PRINT 205
      
      draw_wall2_yellowzone_p1:
      sub dl,1
      call SetCursor
      PRINT 205
      cmp dl,5
      je draw_internalwall1_yellowzone
      loop draw_wall2_yellowzone_p1
      
      
      
      draw_internalwall1_yellowzone:
      mov dh,11
      mov dl,14
      call SetCursor
      PRINT 205
      draw_internalwall1_yellowzone_p1:
      sub dl,1
      call SetCursor
      PRINT 205
      cmp dl,10
      je draw_internalwall1_yellowzone_p2
      loop draw_internalwall1_yellowzone_p1
      
      draw_internalwall1_yellowzone_p2:
      sub dl,1
      call SetCursor
      PRINT 201
      add dh,1
      call SetCursor
      PRINT 186  
      
      
      draw_internalwall1_yellowzone_p3:
      sub dh,1
      mov dl,12
      call SetCursor
      PRINT 203
      draw_internalwall1_yellowzone_p4:
      add dh,1
      call SetCursor
      PRINT 186
      cmp dh,13
      je draw_internalwall1_yellowzone_p5
      loop draw_internalwall1_yellowzone_p4
      
      draw_internalwall1_yellowzone_p5:
      add dh,1
      call SetCursor
      PRINT 188
      
      draw_internalwall1_yellowzone_p6:
      sub dl,1
      call SetCursor
      PRINT 205
      cmp dl,7
      je draw_internalwall1_yellowzone_p7
      loop draw_internalwall1_yellowzone_p6
      
      draw_internalwall1_yellowzone_p7:
      sub dl,1
      call SetCursor
      PRINT 202
      sub dl,1
      call SetCursor
      PRINT 200
      sub dh,1
      call SetCursor
      PRINT 201
      add dl,1
      call SetCursor
      PRINT 187     
       
        
       draw_internalwall2_yellowzone:
       mov dh,7
       mov dl,21
       call SetCursor
       PRINT 202
       draw_internalwall2_yellowzone_p1:
       sub dh,1
       call SetCursor
       PRINT 186
       sub dh,1
       call SetCursor
       PRINT 187
       draw_internalwall2_yellowzone_p2:
       sub dl,1
       call SetCursor
       PRINT 205
       cmp dl,16
       je draw_internalwall2_yellowzone_p3
       loop draw_internalwall2_yellowzone_p2
       
       draw_internalwall2_yellowzone_p3:
       
       sub dl,1
       call SetCursor
       PRINT 200
       sub dh,1
       call SetCursor
       PRINT 186
       sub dh,1
       call SetCursor
       PRINT 187
       
       draw_internalwall2_yellowzone_p4:
       
       sub dl,1
       call SetCursor
       PRINT 205
       cmp dl,12
       je draw_internalwall3_yellowzone 
       loop draw_internalwall2_yellowzone_p4
         
         
          
       draw_internalwall3_yellowzone: 
       mov dl,1
       mov dh,5
       call SetCursor
       PRINT 204
       
       
       mov dl,2
       mov dh,5
       call SetCursor
       PRINT 205
       draw_internalwall3_yellowzone_p1:
       add dl,1
       call SetCursor
       PRINT 205
       cmp dl,12
       je draw_internalwall3_yellowzone_p2
       loop draw_internalwall3_yellowzone_p1
       
       
       draw_internalwall3_yellowzone_p2:
       sub dl,4
       call SetCursor
       PRINT 202
       sub dh,1
       call SetCursor
       PRINT 186
       sub dh,1
       call SetCursor
       PRINT 187
       
       draw_internalwall3_yellowzone_p3:
       
       sub dl,1
       call SetCursor
       PRINT 205 
       
       cmp dl,4
       je draw_internalwall4_yellowzone 
       loop draw_internalwall3_yellowzone_p3
       
       draw_internalwall4_yellowzone:
       mov dh,9
       mov dl,1
       call SetCursor
       PRINT 204
       add dh,1
       call SetCursor
       PRINT 204
       add dh,1
       call SetCursor
       PRINT 204
       add dl,1
       call SetCursor
       PRINT 202
       add dl,1
       call SetCursor
       PRINT 202
       add dl,1
       call SetCursor
       PRINT 202
       add dl,1
       call SetCursor
       PRINT 188
       sub dh,1
       call SetCursor
       PRINT 185
       sub dl,1
       call SetCursor
       PRINT 206
       sub dl,1
       call SetCursor
       PRINT 206
       sub dl,1
       call SetCursor
       PRINT 206
       sub dh,1
       call SetCursor
       PRINT 203
       add dl,1
       call SetCursor
       PRINT 203
       add dl,1
       call SetCursor
       PRINT 203
       add dl,1
       call SetCursor
       PRINT 203
       
       draw_internalwall4_yellowzone_p1:
       add dl,1
       call SetCursor
       PRINT 205
       cmp dl,12
       je draw_OrangeANDGreenzone
       loop draw_internalwall4_yellowzone_p1
       
       
       
       draw_OrangeANDGreenzone:
         
         draw_wall1_OrangeANDGreenzone:
         
         mov dh,3
         mov dl,61
         call SetCursor
         PRINT 185 
         
         draw_wall1_OrangeANDGreenzone_p1:
         
         sub dl,1
         call SetCursor
         PRINT 205
         cmp dl,51
         je draw_wall2_OrangeANDGreenzone
         loop draw_wall1_OrangeANDGreenzone_p1
         
         
         
         
         
         draw_wall2_OrangeANDGreenzone:
         
         mov dh,7
         mov dl,61
         call SetCursor
         PRINT 185
        
        draw_wall2_OrangeANDGreenzone_p1:
         
         sub dl,1
         call SetCursor
         PRINT 205
         cmp dl,56
         je draw_wall2_OrangeANDGreenzone_p2
         loop draw_wall2_OrangeANDGreenzone_p1
         
         draw_wall2_OrangeANDGreenzone_p2:
         
         sub dl,1
         call SetCursor
         PRINT 201
         
         add dh,1
         call SetCursor
         PRINT 186
         
         add dh,1
         call SetCursor
         PRINT 202
         
         
         
         draw_wall2_OrangeANDGreenzone_p3:
         
         sub dl,1
         call SetCursor
         PRINT 205
         
          
    
         
         draw_wall2_OrangeANDGreenzone_p4:
         sub dl,1
         call SetCursor
         PRINT 205 
         cmp dl,50
         je draw_wall2_OrangeANDGreenzone_p5
         loop draw_wall2_OrangeANDGreenzone_p4
         
         draw_wall2_OrangeANDGreenzone_p5:
         
         mov dl,56
         call SetCursor
         PRINT 205 
         
         add dl,1
         call SetCursor
         PRINT 205
         
         add dl,1
         call SetCursor
         PRINT 187
         
         
         add dh,1
         call SetCursor
         PRINT 186 
         
         add dh,1
         call SetCursor
         PRINT 188
         
         
         draw_wall2_OrangeANDGreenzone_p6:
         
         sub dl,1
         call SetCursor
         PRINT 205
         cmp dl,43
         je draw_wall2_OrangeANDGreenzone_p7
         loop draw_wall2_OrangeANDGreenzone_p6
         
         draw_wall2_OrangeANDGreenzone_p7: 
         
         mov dl,47
         call SetCursor 
         PRINT 202
         
         draw_wall2_OrangeANDGreenzone_p8:
         sub dh,1
         call SetCursor
         PRINT 186
         cmp dh,8
         je draw_wall2_OrangeANDGreenzone_p9
         loop draw_wall2_OrangeANDGreenzone_p8 
         
         draw_wall2_OrangeANDGreenzone_p9:
         sub dh,1
         call SetCursor
         PRINT 201
         
         draw_wall2_OrangeANDGreenzone_p10:
         add dl,1
         call SetCursor
         PRINT 205
         cmp dl,52
         je draw_wall2_OrangeANDGreenzone_p11
         loop draw_wall2_OrangeANDGreenzone_p10
         
         
         draw_wall2_OrangeANDGreenzone_p11:
         
         mov dh,11
         mov dl,52
         call SetCursor
         PRINT 203
         add dh,1
         call SetCursor
         PRINT 186
         
         
           
         
         
         
         
             
         
         
         draw_wall3_OrangeANDGreenzone_p1:
          mov dl,61
          mov dh,15
          call SetCursor
          PRINT 185
         sub dl,1
         call SetCursor
         PRINT 205
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         sub dl,1
         call SetCursor
         PRINT 201
         
         
         draw_wall3_OrangeANDGreenzone_p2:
         
         add dh,1
         call SetCursor
         PRINT 186
         
         cmp dh,20
         je draw_wall4_OrangeANDGreenzone ; a changer
         loop draw_wall3_OrangeANDGreenzone_p2
                
                
         draw_wall4_OrangeANDGreenzone:
         
         mov dh,5
         mov dl,58    
         
         call SetCursor
         
         
         draw_wall4_OrangeANDGreenzone_p1:
         
         sub dl,1
         call SetCursor
         
         PRINT 205
         
         cmp dl,49
         je draw_wall4_OrangeANDGreenzone_p3
         loop draw_wall4_OrangeANDGreenzone_p1
         
         draw_wall4_OrangeANDGreenzone_p3:
         sub dl,1
         call SetCursor
         PRINT 200 
         
         draw_wall4_OrangeANDGreenzone_p4:
         sub dh,1
         call SetCursor
         PRINT 186
         cmp dh,1
         je draw_wall4_OrangeANDGreenzone_p5
         loop draw_wall4_OrangeANDGreenzone_p4
         
         draw_wall4_OrangeANDGreenzone_p5:
         sub dh,1
         call SetCursor
         PRINT 203
         
         draw_wall4_OrangeANDGreenzone_p6:
         mov dh,3
         call SetCursor
         PRINT 185
         
         draw_wall4_OrangeANDGreenzone_p7:
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         cmp dl,44
         je draw_wall5_OrangeANDGreenzone 
         loop draw_wall4_OrangeANDGreenzone_p7
         
         draw_wall5_OrangeANDGreenzone: 
         mov dh,13
         mov dl,58
         call SetCursor
         PRINT 205
         
         draw_wall5_OrangeANDGreenzone_p1:
         sub dl,1
         call SetCursor 
         PRINT 205 
         
         sub dl,1
         call SetCursor 
         PRINT 205
         
         
         
         sub dl,1
         call SetCursor 
         PRINT 201
         
         add dh,1
         call SetCursor
         PRINT 188
         
         draw_wall5_OrangeANDGreenzone_p2:
         
         sub dl,1
         call SetCursor
         PRINT 205
         cmp dl,50
         je draw_wall5_OrangeANDGreenzone_p3
         loop draw_wall5_OrangeANDGreenzone_p2
         
         draw_wall5_OrangeANDGreenzone_p3:
         sub dl,1
         call SetCursor
         PRINT 200
         
         sub dh,1
         call SetCursor
         PRINT 187
         
         draw_wall5_OrangeANDGreenzone_p4:
         sub dl,1
         call SetCursor
         PRINT 205
         
         cmp dl,44
         je draw_wall5_OrangeANDGreenzone_p5
         loop draw_wall5_OrangeANDGreenzone_p4
         
         draw_wall5_OrangeANDGreenzone_p5:
         
         sub dl,1
         call SetCursor
         PRINT 201
         
         add dh,1
         call SetCursor
         PRINT 188  
         
         sub dl,1
         call SetCursor
         PRINT 201
         
         
         add dh,1
         call SetCursor
         PRINT 186
         
         add dh,1
         call SetCursor
         PRINT 202
         
         draw_wall5_OrangeANDGreenzone_p6:
         
         add dl,1
         call SetCursor
         PRINT 205
         
         cmp dl,54
         je draw_wall5_OrangeANDGreenzone_p7
         loop draw_wall5_OrangeANDGreenzone_p6
         
         draw_wall5_OrangeANDGreenzone_p7:
         
         add dl,1
         call SetCursor
         PRINT 187
         
         
         draw_wall5_OrangeANDGreenzone_p8:
         
         add dh,1
         call SetCursor
         PRINT 186
         
         cmp dh,21
         je draw_wall5_OrangeANDGreenzone_p9
         loop draw_wall5_OrangeANDGreenzone_p8
         
         draw_wall5_OrangeANDGreenzone_p9:
         add dh,1
         call SetCursor
         PRINT 202 
         
         
        draw_wall5_OrangeANDGreenzone_p10:
        mov dl,46
        mov dh,16
        call SetCursor
        PRINT 206
        
        sub dh,1
         call SetCursor
         PRINT 186
         
         add dh,1
         
        draw_wall5_OrangeANDGreenzone_p11:
        add dh,1
        call SetCursor
        PRINT 186
        
        cmp dh,19
        je draw_wall5_OrangeANDGreenzone_p12
        loop draw_wall5_OrangeANDGreenzone_p11
        
        draw_wall5_OrangeANDGreenzone_p12:
        
        add dh,1
        call SetCursor
        PRINT 200  
        
        
        
        draw_wall5_OrangeANDGreenzone_p13:
        
        add dl,1
        call SetCursor
        PRINT 205
        cmp dl,51
        je draw_wall5_OrangeANDGreenzone_p14
        loop draw_wall5_OrangeANDGreenzone_p13
        
        
        draw_wall5_OrangeANDGreenzone_p14:
        
         add dl,1
        call SetCursor
        PRINT 188
        
        sub dh,1
        call SetCursor
        PRINT 186
        
        sub dh,1
        call SetCursor
        PRINT 187
        
        
        sub dl,1
        call SetCursor
        PRINT 205
        
        sub dl,1
        call SetCursor
        PRINT 205
        
        sub dl,1
        call SetCursor
        PRINT 205  
         
        draw_wall5_OrangeANDGreenzone_p15:
        
        mov dl,41
        mov dh,16
        call SetCursor
        PRINT 205
        draw_wall5_OrangeANDGreenzone_p16:
        sub dl,1
        call SetCursor
        PRINT 205
        cmp dl,38
        je draw_wall5_OrangeANDGreenzone_p17
        loop draw_wall5_OrangeANDGreenzone_p16
        
        draw_wall5_OrangeANDGreenzone_p17:
         sub dl,1
        call SetCursor
        PRINT 201
        
        add dh,1
        call SetCursor
        PRINT 186
        
        
        add dh,1
        call SetCursor
        PRINT 202
        
        draw_wall5_OrangeANDGreenzone_p18:
         sub dl,1
        call SetCursor
        PRINT 205
        cmp dl,31
        je draw_wall5_OrangeANDGreenzone_p19
        loop draw_wall5_OrangeANDGreenzone_p18
        
        draw_wall5_OrangeANDGreenzone_p19:
        
         sub dl,1
        call SetCursor
        PRINT 201
        
         add dh,1
        call SetCursor
        PRINT 186  
        
        add dh,1
        call SetCursor
        PRINT 202
        
         sub dl,1
        call SetCursor
        PRINT 205 
        
        sub dl,1
        call SetCursor
        PRINT 205
        
        sub dl,1
        call SetCursor
        PRINT 205
        
        mov dl,30
         call SetCursor  
         
        draw_wall5_OrangeANDGreenzone_p20:
        add dl,1
        call SetCursor
        PRINT 205
        cmp dl,35
        je draw_wall5_OrangeANDGreenzone_p21
        loop draw_wall5_OrangeANDGreenzone_p20
        
        draw_wall5_OrangeANDGreenzone_p21:
        mov dl,38
        mov dh,18
        call SetCursor
        PRINT 205
          
        draw_wall5_OrangeANDGreenzone_p22:
         
       add dl,1
       call SetCursor
        PRINT 205
        cmp dl,42
        je draw_wall5_OrangeANDGreenzone_p23
        loop draw_wall5_OrangeANDGreenzone_p22 
        
        
        draw_wall5_OrangeANDGreenzone_p23:
        add dl,1
       call SetCursor
        PRINT 187
         
         add dh,1
       call SetCursor
        PRINT 186 
        
        add dh,1
       call SetCursor
        PRINT 186 
        
        ;petit mur du bas
        draw_wall6_OrangeANDGreenzone:
          mov dl,38
          mov dh,22
          call SetCursor
          PRINT 202
          
          
          sub dh,1
          call SetCursor
          PRINT 186
          
          
          sub dh,1
          call SetCursor
          PRINT 201 
          
          add dl,1
          call SetCursor
          PRINT 205
          
          add dl,1
          call SetCursor
          PRINT 205
          
         
        draw_wall7_OrangeANDGreenzone:
          mov dh,5
          mov dl,45
          call SetCursor
          PRINT 205
          
          sub dl,1
          call SetCursor
          PRINT 201
          
          
          add dh,1
          call SetCursor
          PRINT 186
          
          add dh,1
          call SetCursor
          PRINT 186
          
          add dh,1
          call SetCursor
          PRINT 186
          
          add dh,1
          call SetCursor
          PRINT 188
          
          sub dl,1
          call SetCursor
          PRINT 205
          
          sub dl,1
          call SetCursor
          PRINT 205
          
          sub dl,1
          call SetCursor
          PRINT 205
          
          sub dl,1
          call SetCursor
          PRINT 204 
          
          sub dh,1
          call SetCursor
          PRINT 185
          
          sub dl,1
          call SetCursor
          PRINT 205
          
          sub dl,1
          call SetCursor
          PRINT 200
          
          sub dh,1
          call SetCursor
          PRINT 201
          
          add dl,1
          call SetCursor
          PRINT 205
          
         add dl,1
          call SetCursor
          PRINT 203
          
          add dl,1
          call SetCursor
          PRINT 188
          
          
         draw_wall7_OrangeANDGreenzone_p1:
         
         sub dh,1
         call SetCursor
         PRINT 186
         
         cmp dh,1
         je draw_wall7_OrangeANDGreenzone_p2
         loop draw_wall7_OrangeANDGreenzone_p1
         
          
          
         draw_wall7_OrangeANDGreenzone_p2:
          
          
          
         sub dh,1
         call SetCursor
         PRINT 203
                     
                     
          draw_wall7_OrangeANDGreenzone_p3: 
          
          mov dh,10
          mov dl,40
          call SetCursor
          PRINT 186
         
         add dh,1
         call SetCursor
         PRINT 186    
                    
                    
         add dh,1
         call SetCursor
         PRINT 188  
         
         sub dl,1
         call SetCursor
         PRINT 201
         
         add dh,1
         call SetCursor
         PRINT 186 
         
         add dh,1
         call SetCursor
         PRINT 188
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         sub dl,1
         call SetCursor
         PRINT 205 
         
         sub dl,1
         call SetCursor
         PRINT 200
         
           
         draw_wall7_OrangeANDGreenzone_p4:
         
         sub dh,1
         call SetCursor
         PRINT 186
         
         cmp dh,11
         je draw_wall7_OrangeANDGreenzone_p5
         loop draw_wall7_OrangeANDGreenzone_p4
         
         draw_wall7_OrangeANDGreenzone_p5:
         
         sub dh,1
         call SetCursor
         PRINT 203
         
         add dl,1
         call SetCursor
         PRINT 205
         
         sub dl,2 
         call SetCursor
         PRINT 205
         
         sub dl,1 
         call SetCursor
         PRINT 205 
         
          sub dl,1 
         call SetCursor
         PRINT 200
         
         
         
         
         sub dh,1 
         call SetCursor
         PRINT 186 
         
          
         sub dh,1 
         call SetCursor
         PRINT 203 
         
         
         add dl,1
         call SetCursor
         PRINT 205
         
         add dl,1
         call SetCursor
         PRINT 188
         
         sub dh,1
         call SetCursor
         PRINT 186
         
         sub dh,1
         call SetCursor
         PRINT 186
         
         sub dh,1
         call SetCursor
         PRINT 201
         
         add dl,1
         call SetCursor
         PRINT 205 
         
         add dl,1
         call SetCursor
         PRINT 205
         
         add dl,1
         call SetCursor
         PRINT 205
         
         
         
        draw_wall7_OrangeANDGreenzone_p6:
        
        mov dl,32
        mov dh,8
        call SetCursor
        PRINT 205
        
        sub dl,1
        call SetCursor
        PRINT 205
        
        sub dl,1
        call SetCursor
        PRINT 200
        
        
        sub dh,1 
        call SetCursor
        PRINT 187
        
        
        sub dl,1 
        call SetCursor
        PRINT 202
        
        sub dl,1 
        call SetCursor
        PRINT 202
        
        sub dl,1 
        call SetCursor
        PRINT 200
        
        
        sub dh,1 
        call SetCursor
        PRINT 204
        
        add dl,1
        call SetCursor
        PRINT 206
        
         
        add dl,1
        call SetCursor
        PRINT 185
        
        sub dh,1 
        call SetCursor
        PRINT 187 
        
        sub dl,1 
        call SetCursor
        PRINT 203
        
        sub dl,1 
        call SetCursor
        PRINT 201
        
         
         
        draw_wall8_OrangeANDGreenzone:             
          
        mov dh,3
        mov dl,38
        call SetCursor
        PRINT 205
        
        sub dl,1
        call SetCursor
        PRINT 205 
        
        sub dl,1
        call SetCursor
        PRINT 205 
        
        sub dl,1
        call SetCursor
        PRINT 200
        
        sub dh,1
        call SetCursor
        PRINT 186 
        
        sub dh,1
        call SetCursor
        PRINT 186          
          
        sub dh,1
        call SetCursor
        PRINT 203  
          
        draw_wall9_OrangeANDGreenzone:
        mov dh,6
        mov dl,32
        call SetCursor
        PRINT 186  
        
        draw_wall9_OrangeANDGreenzone_p1:
         sub dh,1
         call SetCursor
         PRINT 186 
         
         
         
         sub dh,1
         call SetCursor
         PRINT 186
         
         sub dh,1
         call SetCursor
         PRINT 187
         
         
         draw_wall9_OrangeANDGreenzone_p2:
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         cmp dl,25
         je draw_wall10_OrangeANDGreenzone
         loop draw_wall9_OrangeANDGreenzone_p2
         
         
         draw_wall10_OrangeANDGreenzone:
          mov dh,9
          mov dl,27
          call SetCursor
         PRINT 186
         
          add dh,1
          call SetCursor
         PRINT 200
         
          add dl,1
          call SetCursor
         PRINT 205 
         
         add dl,1
          call SetCursor
         PRINT 205
         
         add dl,1
          call SetCursor
         PRINT 187
          
          add dh,1
          call SetCursor
         PRINT 186
         
          add dh,1
          call SetCursor
         PRINT 204
         
          add dh,1
          call SetCursor
         PRINT 186
         
         add dh,1
          call SetCursor
         PRINT 188
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         draw_wall10_OrangeANDGreenzone_p1:
         
          mov dh,12
          mov dl,31
          call SetCursor
         PRINT 205
          
          add dl,1
         call SetCursor
         PRINT 205 
         
         
         add dl,1
         call SetCursor
         PRINT 187
         
         
         add dh,1
         call SetCursor
         PRINT 186 
         
         add dh,1
         call SetCursor
         PRINT 186 
         
         add dh,1
         call SetCursor
         PRINT 186 
         
         add dh,1
         call SetCursor
         PRINT 188
         
         
        draw_wall10_OrangeANDGreenzone_p2:
        
        sub dl,1
        call SetCursor
         PRINT 205
         
         cmp dl,27
         je draw_wall10_OrangeANDGreenzone_p3
         loop draw_wall10_OrangeANDGreenzone_p2
         
           
        draw_wall10_OrangeANDGreenzone_p3:
        
        sub dl,1
        call SetCursor
         PRINT 201
         
         add dh,1
        call SetCursor
         PRINT 186  
         
         add dh,1
        call SetCursor
         PRINT 188  
         
         sub dl,1
        call SetCursor
         PRINT 205
         
         sub dl,1
        call SetCursor
         PRINT 205
         
         sub dl,1
        call SetCursor
         PRINT 204
         
         
        draw_wall11_OrangeANDGreenzone_p3: 
         
          mov dl,27
          mov dh,12    
          call SetCursor
          PRINT 205 
          
          sub dl,1
          call SetCursor
          PRINT 205
          
          
          sub dl,1
          call SetCursor
          PRINT 205
          
















          
        
     draw_object_redzone:
        ;object(1stkey RED) spawn draw 
            draw_redkey:
            ;cursor pos:
            mov dl,13 
            mov dh,21
            mov bh, 0
            mov ah, 0x2
            int 0x10
            mov cx, 1 ; nb char
            mov bh, 0
            mov bl, 0x40 ; color
            mov al, 0x20 ; blank char
            mov ah, 0x9
            int 0x10 
            mov ah, 02h
            mov bh, 00
            int 10h
            PRINT 216

             
    
            draw_reddoor:
                ;object(door) spawn draw 
                ;cursor pos:
                mov dl,14 
                mov dh,17
                mov bh, 0
                mov ah, 0x2
                int 0x10
                mov cx, 1 ; nb char
                mov bh, 0
                mov bl, 0x40 ; color
                mov al, 0x20 ; blank char
                mov ah, 0x9
                int 0x10 
                mov ah, 02h
                mov bh, 00
                int 10h 
                PRINT 177

       draw_object_purplezone:
   
            draw_purpledoor:
                ;object(door) spawn draw 
                ;cursor pos:
                mov dl,15 
                mov dh,10
                mov bh, 0
                mov ah, 0x2
                int 0x10
                mov cx, 1 ; nb char
                mov bh, 0
                mov bl, 0x10 ; color
                mov al, 0x20 ; blank char
                mov ah, 0x9
                int 0x10 
                mov ah, 02h
                mov bh, 00
                int 10h 
                PRINT 177
             
                                       
         draw_object_yellowzone:
   
            draw_yellowdoor:
                ;object(door) spawn draw 
                ;cursor pos:
                mov dl,24 
                mov dh,6
                mov bh, 0
                mov ah, 0x2
                int 0x10
                mov cx, 1 ; nb char
                mov bh, 0
                mov bl, 0x70 ; color
                mov al, 0x20 ; blank char
                mov ah, 0x9
                int 0x10 
                mov ah, 02h
                mov bh, 00
                int 10h 
                PRINT 177
    
          draw_object_OrangeANDGreenzone:
   
            draw_Orangedoor:
                ;object(door) spawn draw 
                ;cursor pos:
                mov dl,51 
                mov dh,19
                mov bh, 0
                mov ah, 0x2
                int 0x10
                mov cx, 1 ; nb char
                mov bh, 0
                mov bl, 0x80 ; color
                mov al, 0x20 ; blank char
                mov ah, 0x9
                int 0x10 
                mov ah, 02h
                mov bh, 00
                int 10h 
                PRINT 177
                
                
            draw_Greendoor:
                ;object(door) spawn draw 
                ;cursor pos:
                mov dl,60 
                mov dh,2
                mov bh, 0
                mov ah, 0x2
                int 0x10
                mov cx, 1 ; nb char
                mov bh, 0
                mov bl, 0x60 ; color
                mov al, 0x20 ; blank char
                mov ah, 0x9
                int 0x10 
                mov ah, 02h
                mov bh, 00
                int 10h 
                PRINT 177
   
          draw_rules:
          
            mov dl,63
            mov dh,18
            call SetCursor
              
              PRINT ':) -> YOU'
            
            
            
              add dh,1
              add dl,1
              call SetCursor
              
              PRINT 216
              
              add dl,2
              call SetCursor
              
              PRINT '-> A KEY'
            
            
              add dh,1
              sub dl,2
              call SetCursor
              
              PRINT 177
              
              add dl,2
              call SetCursor
              
              PRINT '-> A DOOR'
            
            
            add dh,1
            sub dl,3
            call SetCursor
             PRINT 'REDkey open'
            
            add dh,1
            call SetCursor
            PRINT 'REDdoor'
            
            add dh,1 
            call SetCursor
              mov cx, 1 ; nb char
            mov bh, 0
            mov bl, 0x40 ; color
            mov al, 0x20 ; blank char
            mov ah, 0x9
            int 0x10 
            mov ah, 02h
            mov bh, 00
            int 10h
            PRINT 216    
                
             add dl,2
             call SetCursor
              PRINT '---->'
              
              add dl,6
             
            
            call SetCursor
                mov cx, 1 ; nb char
                mov bh, 0
                mov bl, 0x40 ; color
                mov al, 0x20 ; blank char
                mov ah, 0x9
                int 0x10 
                mov ah, 02h
                mov bh, 00
                int 10h 
                PRINT 177
              
             
                                         
          draw_hero:
            

              mov dl, 2 ; column
              mov dh, 21 ; row 

              call SetCursor
        
              PRINT ':)'
           
   
        
    
    
    
            jmp init_var
    
   
    
    
     
                  