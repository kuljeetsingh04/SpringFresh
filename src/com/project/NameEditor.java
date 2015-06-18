package com.project;

import java.beans.PropertyEditorSupport;

public class NameEditor extends PropertyEditorSupport {
	
	// will be executed before bindind data to pojo classes.
	// Here name will be edited to default Mr. if it does not have mr or ms with it.
	
	@Override
	public void setAsText(String name){
		
		if(name.contains("Mr.") || name.contains("Ms.")){
			
			setValue(name);
		}else{
			
			name= "Mr."+name;
			
			setValue(name);
		}
	}

}
