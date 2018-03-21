define(function() {

  /* 
   --------------------
   DataAdapter
   --------------------

   @param adaptee 
     The object that will adapt
   @param matchingProperties
     An object with the relationship
     Example :
     adaptee -> {group: 'mygroup', name: 'myname'}
     And we want to adapt to {id: 'mygroup', description : 'myname'}
     matchingProperties will be {id: 'group', description : 'name'}
     
   */
  YSDDataAdapter = function(adaptee, matchingProperties) {
	
	this.adaptee = adaptee;

	var value = null;

	for (idx in matchingProperties) {

    if (matchingProperties[idx] instanceof Function) {
      value = matchingProperties[idx](adaptee);
    }
    else {
      value = adaptee[matchingProperties[idx]];
    }
	 
	  this[idx] = value;
	 	
	}
	
  }
  
  return YSDDataAdapter;

});
