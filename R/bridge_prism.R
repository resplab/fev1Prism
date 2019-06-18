model_run<-function(model_input=NULL)
{
   patient_data<-fev1::samplePatients[1,]

   if(length(model_input)>0)
   {
     patient_data[names(model_input)]<-model_input
   }
   else
     stop("Error: no input parameter was submitted")

  res <- predictFEV1(patient_data)
  
  return(as.list(res))
}
