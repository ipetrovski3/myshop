import { Controller } from "stimulus"                  

 export default class extends Controller {              
   static targets = [ "toggleable" ]                    
      toggle() {
        console.log('it works')
      }
   // toggle function will be here                                                    
 }