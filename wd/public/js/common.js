define( function( require ){
	
	return {
		add:function(count){
			 count++;
			 return count;
		},
		reduce:function(count){
			if(Number(count)<1){
				count = 0;
			}else{
				 count--;
			}
			
			 return count;
		}
	};
	
});