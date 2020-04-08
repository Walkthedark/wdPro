define(function(require) {
	
	var userId = "";
	var userName = "";
	var loginName = "";
	var department = "";
	var compNo="";
	var job = "";
	var phone = "";
	var mobile = "";
	var email = "";
	var remark = "";
	var employeeNo = "";
	var idNo = "";
	var gender = "";
	var shortTel = "";
	var entryDate = "";
	var workYear = "";
	var employBegin = "";
	var education = "";
	var major = "";
	var isDel = "";
	var workState = "";
	var token="";
	var companyNo="";
	var QQ="";
	var fn = {

			setUserId : function(v){ userId = v; },
			getUserId : function() { return(userId); },
			setCompNo : function(v){ compNo = v; },
			getCompNo : function() { return(compNo); },
			setUserName : function(v){ userName = v; },
			getUserName : function() { return(userName); },
			setLoginName : function(v){ loginName = v; },
			getLoginName : function() { return(loginName); },
			setDepartment : function(v){ department = v; },
			getDepartment : function() { return(department); },
			setJob : function(v){ job = v; },
			getJob : function() { return(job); },
			setPhone : function(v){ phone = v; },
			getPhone : function() { return(phone); },
			setMobile : function(v){ mobile = v; },
			getMobile : function() { return(mobile); },
			setEmail : function(v){ email = v; },
			getEmail : function() { return(email); },
			setRemark : function(v){ remark = v; },
			getRemark : function() { return(remark); },
			setEmployeeNo : function(v){ employeeNo = v; },
			getEmployeeNo : function() { return(employeeNo); },
			setIdNo : function(v){ idNo = v; },
			getIdNo : function() { return(idNo); },
			setGender : function(v){ gender = v; },
			getGender : function() { return(gender); },
			setShortTel : function(v){ shortTel = v; },
			getShortTel : function() { return(shortTel); },
			setEntryDate : function(v){ entryDate = v; },
			getEntryDate : function() { return(entryDate); },
			setWorkYear : function(v){ workYear = v; },
			getWorkYear : function() { return(workYear); },
			setEmployBegin : function(v){ employBegin = v; },
			getEmployBegin : function() { return(employBegin); },
			setEducation : function(v){ education = v; },
			getEducation : function() { return(education); },
			setEajor : function(v){ major = v; },
			getEajor : function() { return(major); },
			setIsDel : function(v){ isDel = v; },
			getIsDel : function() { return(isDel); },
			setWorkState : function(v){ workState = v; },
			getWorkState : function() { return(workState); },
			setToken : function(v){ token = v; },
			getToken : function() { return(token); },
			setCompanyNo : function(v){ companyNo = v; },
			getCompanyNo : function() { return(companyNo); },
			setQQ : function(v){ QQ = v; },
			getQQ : function() { return(QQ); },
			clear : function() {
				 userId = "";
				 userName = "";
				 loginName = "";
				 department = "";
				 job = "";
				 phone = "";
				 mobile = "";
				 email = "";
				 remark = "";
				 employeeNo = "";
				 idNo = "";
				 gender = "";
				 shortTel = "";
				 entryDate = "";
				 workYear = "";
				 employBegin = "";
				 education = "";
				 major = "";
				 isDel = "";
				 workState = "";
				 token ="";
				 companyNo ="";
			},ifFlag:function(v){
				var text ="";
				if(v == 0){
					text ="否";
				}else if (v == 1){
					text ="是";
				}
				return text;
			}
		};
	
	return fn;
});