t=data.frame(n=c(1,0,0),m=c(0,1,0),e=c(0,0,1))
shinyServer(function(input,output){
      #output$table <- renderTable(t)
      output$table <-renderTable({
            if(input$seldim==3){
                   t=data.frame(col1=c(paste0("<input id='c11", "' class='shiny-bound-input' type='number' value='0'>"),
                                       paste0("<input id='c21", "' class='shiny-bound-input' type='number' value='0'>"),
                                       paste0("<input id='c31", "' class='shiny-bound-input' type='number' value='0'>")),
                                col2=c(paste0("<input id='c12", "' class='shiny-bound-input' type='number' value='0'>"),
                                       paste0("<input id='c22", "' class='shiny-bound-input' type='number' value='0'>"),
                                       paste0("<input id='c32", "' class='shiny-bound-input' type='number' value='0'>")),
                                col3=c(paste0("<input id='c13", "' class='shiny-bound-input' type='number' value='0'>"),
                                       paste0("<input id='c23", "' class='shiny-bound-input' type='number' value='0'>"),
                                       paste0("<input id='c33", "' class='shiny-bound-input' type='number' value='0'>")))
                   
                   t}
            else if(input$seldim==2){      
                  t=data.frame(col1=c(paste0("<input id='c11", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c21", "' class='shiny-bound-input' type='number' value='0'>")), 
                                      col2=c(paste0("<input id='c12", "' class='shiny-bound-input' type='number' value='0'>"),
                                             paste0("<input id='c22", "' class='shiny-bound-input' type='number' value='0'>")))
                  
                  t}
            else if(input$seldim==4){
                  t=data.frame(col1=c(paste0("<input id='c11", "' class='shiny-bound-input' type='number' value='0'>")
                                      ,paste0("<input id='c21", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c31", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c41", "' class='shiny-bound-input' type='number' value='0'>")), 
                               col2=c(paste0("<input id='c12", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c22", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c32", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c42", "' class='shiny-bound-input' type='number' value='0'>")),
                               col3=c(paste0("<input id='c13", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c23", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c33", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c43", "' class='shiny-bound-input' type='number' value='0'>")),
                               col4=c(paste0("<input id='c14", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c24", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c34", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c44", "' class='shiny-bound-input' type='number' value='0'>")))
                  
                  t}
            
            else if(input$seldim==5){
                  t=data.frame(col1=c(paste0("<input id='c11", "' class='shiny-bound-input' type='number' value='0'>")
                                      ,paste0("<input id='c21", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c31", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c41", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c51", "' class='shiny-bound-input' type='number' value='0'>")), 
                               col2=c(paste0("<input id='c12", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c22", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c32", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c42", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c52", "' class='shiny-bound-input' type='number' value='0'>")),
                               col3=c(paste0("<input id='c13", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c23", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c33", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c43", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c53", "' class='shiny-bound-input' type='number' value='0'>")),
                               col4=c(paste0("<input id='c14", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c24", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c34", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c44", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c54", "' class='shiny-bound-input' type='number' value='0'>")),
                               col5=c(paste0("<input id='c15", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c25", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c35", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c45", "' class='shiny-bound-input' type='number' value='0'>"),
                                      paste0("<input id='c55", "' class='shiny-bound-input' type='number' value='0'>"))) 
                  
                  t} 
      }
      , sanitize.text.function = function(x) x)
      output$tran <-renderTable({
            
            if(input$test==0)
                  return()
            isolate({
                  if(input$seldim==2)
                        tran=rbind(c(input$c11,input$c21),c(input$c12,input$c22))
                  else if(input$seldim==3)
                        tran=rbind(c(input$c11,input$c21,input$c31),c(input$c12,input$c22,input$c32),c(input$c13,input$c23,input$c33))
                  else if(input$seldim==4)
                        tran=rbind(c(input$c11,input$c21,input$c31,input$c41),c(input$c12,input$c22,input$c32,input$c42),c(input$c13,input$c23,input$c33,input$c43),c(input$c14,input$c24,input$c34,input$c44))
                  else if(input$seldim==5)
                        tran=rbind(c(input$c11,input$c21,input$c31,input$c41,input$c51),c(input$c12,input$c22,input$c32,input$c42,input$c52),c(input$c13,input$c23,input$c33,input$c43,input$c53),c(input$c14,input$c24,input$c34,input$c44,input$c54),c(input$c15,input$c25,input$c35,input$c45,input$c55))
                  
            })
            })
      output$text1 <- renderText({ if(input$test==0)
            return()
            isolate({
                  if(input$select==2){
                       if(input$seldim==2) 
                            paste("The trace is",input$c11+input$c22)
                       else if(input$seldim==3)
                             paste("The trace is",input$c11+input$c22+input$c33)
                        else if(input$seldim==4)
                              paste("The trace is",input$c11+input$c22+input$c33+input$c44)
                        else if(input$seldim==5)
                              paste("The trace is",input$c11+input$c22+input$c33+input$c44+input$c55)
                        }
                  else if(input$select==1){
                        if(input$seldim==2)
                               paste("The determinant is",det(rbind(c(input$c11,input$c12),c(input$c21,input$c22))))
                        else if(input$seldim==3)
                              paste("The determinant is",det(rbind(c(input$c11,input$c12,input$c13),c(input$c21,input$c22,input$c23),c(input$c31,input$c32,input$c33))))
                        else if(input$seldim==4)
                            paste("The determinant is",det(rbind(c(input$c11,input$c12,input$c13,input$c14),c(input$c21,input$c22,input$c23,input$c24),c(input$c31,input$c32,input$c33,input$c34),c(input$c41,input$c42,input$c43,input$c44))))
                        else if(input$seldim==5)
                              paste("The determinant is",det(rbind(c(input$c11,input$c12,input$c13,input$c14,input$c15),c(input$c21,input$c22,input$c23,input$c24,input$c25),c(input$c31,input$c32,input$c33,input$c34,input$c35),c(input$c41,input$c42,input$c43,input$c44,input$c45),c(input$c51,input$c52,input$c53,input$c54,input$c55))))
                  }                                        

                  
                  else if(input$select==5){
                        if(input$seldim==2)
                              paste("The eigenvalues are",paste(eigen(rbind(c(input$c11,input$c12),c(input$c21,input$c22)))[[1]],collapse = ", "))
                        else if(input$seldim==3)
                              paste("The eigenvalues are",paste(eigen(rbind(c(input$c11,input$c12,input$c13),c(input$c21,input$c22,input$c23),c(input$c31,input$c32,input$c33)))[[1]],collapse = ", "))
                        else if(input$seldim==4)
                              paste("The eigenvalues are",paste(eigen(rbind(c(input$c11,input$c12,input$c13,input$c14),c(input$c21,input$c22,input$c23,input$c24),c(input$c31,input$c32,input$c33,input$c34),c(input$c41,input$c42,input$c43,input$c44))
                               )[[1]],collapse = ", "))
                        else if(input$seldim==5)
                              paste("The eigenvalues are",paste(eigen(rbind(c(input$c11,input$c12,input$c13,input$c14,input$c15),c(input$c21,input$c22,input$c23,input$c24,input$c25),c(input$c31,input$c32,input$c33,input$c34,input$c35),c(input$c41,input$c42,input$c43,input$c44,input$c45),c(input$c51,input$c52,input$c53,input$c54,input$c55))
                              )[[1]],collapse = ", "))
                        
                        }
                  })
            
      })
})