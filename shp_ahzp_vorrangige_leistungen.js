function getApplicantName(){
    var res = "";
    var tit = "";
    var nam = "";
    var surnam = "";
    tit = assistants.xpath.select('case', 'string(//myForm/F00000043)') + " ";
    nam = assistants.xpath.select('case', 'string(//myForm/F00000045)') + " ";
    surnam = assistants.xpath.select('case', 'string(//myForm/F00000013)');
    // if (tit.length > 1){res = tit};
    // if (nam.length > 1){res = res + nam};
    // if (surnam.length > 0){res = res + surnam};
    res = tit + " " + nam + " " + surnam; 
    return res;
    
}