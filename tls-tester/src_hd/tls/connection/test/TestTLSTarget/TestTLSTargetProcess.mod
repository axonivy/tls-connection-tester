[Ivy]
168B89D8FA6339FA 7.5.0 #module
>Proto >Proto Collection #zClass
Ts0 TestTLSTargetProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @UdInit f0 '' #zField
Ts0 @UdProcessEnd f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @UdEvent f3 '' #zField
Ts0 @UdExitEnd f4 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @UdProcessEnd f14 '' #zField
Ts0 @PushWFArc f15 '' #zField
Ts0 @GridStep f7 '' #zField
Ts0 @UdEvent f6 '' #zField
Ts0 @PushWFArc f8 '' #zField
>Proto Ts0 Ts0 TestTLSTargetProcess #zField
Ts0 f0 guid 168B89D8FB9AB024 #txt
Ts0 f0 method start(String,List<com.axonivy.test.tls.TLSTestData>,File,String) #txt
Ts0 f0 inParameterDecl '<String targetUri,List<com.axonivy.test.tls.TLSTestData> logList,File truststoreFile,String truststorePwd> param;' #txt
Ts0 f0 inParameterMapAction 'out.logList=param.logList;
out.specialTruststorePwd=param.truststorePwd;
out.targetUri=param.targetUri;
out.truststoreFile=param.truststoreFile;
' #txt
Ts0 f0 outParameterDecl '<String targetUri,List<com.axonivy.test.tls.TLSTestData> logList,File truststoreFile,String truststorePwd,Boolean useSpecialTruststore> result;' #txt
Ts0 f0 outParameterMapAction 'result.targetUri=in.targetUri;
result.logList=in.logList;
result.truststoreFile=in.truststoreFile;
result.truststorePwd=in.specialTruststorePwd;
result.useSpecialTruststore=in.useSpecialTruststore;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,List&lt;String&gt;)</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 83 51 26 26 -66 15 #rect
Ts0 f0 @|UdInitIcon #fIcon
Ts0 f1 211 51 26 26 0 12 #rect
Ts0 f1 @|UdProcessEndIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 109 64 211 64 #arcP
Ts0 f3 guid 168B89D8FC04F16D #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ts0 f3 83 147 26 26 -15 12 #rect
Ts0 f3 @|UdEventIcon #fIcon
Ts0 f4 211 147 26 26 0 12 #rect
Ts0 f4 @|UdExitEndIcon #fIcon
Ts0 f5 expr out #txt
Ts0 f5 109 160 211 160 #arcP
Ts0 f14 459 243 26 26 0 12 #rect
Ts0 f14 @|UdProcessEndIcon #fIcon
Ts0 f15 expr out #txt
Ts0 f15 280 256 459 256 #arcP
Ts0 f7 actionTable 'out=in;
' #txt
Ts0 f7 actionCode 'import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContextFactory;
import javax.faces.context.FacesContext;

out.specialTruststore = in.truststoreFile.getName();

try {
	com.axonivy.test.tls.TLSUtils.checkStoretype(out.specialTruststore);
	java.security.KeyStore truststore = com.axonivy.test.tls.TLSUtils.loadKeyStore(in.truststoreFile.getJavaFile().getAbsolutePath(),in.specialTruststorePwd.toCharArray(), null, null);
	if (truststore.aliases().hasMoreElements() == 0) {
		FacesContext context = FacesContext.getCurrentInstance();
		context.addMessage(null ,new FacesMessage(FacesMessage.SEVERITY_ERROR, "No certificates found in truststore ''" + out.specialTruststore + "'' ", "Maybe password is invalid"));
		out.specialTruststore = null;
		out.truststoreFile.delete();
		out.truststoreFile = null;
	}
} catch (Exception exc) {
	ivy.log.error("Error while loading truststore", exc);
	FacesContext context = FacesContext.getCurrentInstance();
	String mainMsg = "Could not load truststore ''" + out.specialTruststore + "'' with given password.";
	String detailMsg = "Error message is: " + exc.getMessage();
	context.addMessage(null ,new FacesMessage(FacesMessage.SEVERITY_ERROR, mainMsg, detailMsg));
	out.specialTruststore = null;
	out.truststoreFile.delete();
	out.truststoreFile = null;
}
' #txt
Ts0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load Truststore</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f7 168 234 112 44 -43 -8 #rect
Ts0 f7 @|StepIcon #fIcon
Ts0 f6 guid 16D964C1F4DB90AA #txt
Ts0 f6 actionTable 'out=in;
' #txt
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadTruststore</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f6 83 243 26 26 -47 15 #rect
Ts0 f6 @|UdEventIcon #fIcon
Ts0 f8 expr out #txt
Ts0 f8 109 256 168 256 #arcP
>Proto Ts0 .type tls.connection.test.TestTLSTarget.TestTLSTargetData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f3 mainOut f5 tail #connect
Ts0 f5 head f4 mainIn #connect
Ts0 f7 mainOut f15 tail #connect
Ts0 f15 head f14 mainIn #connect
Ts0 f6 mainOut f8 tail #connect
Ts0 f8 head f7 mainIn #connect
