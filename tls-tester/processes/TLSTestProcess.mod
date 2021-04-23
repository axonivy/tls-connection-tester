[Ivy]
168B8347C57B9D0E 7.5.0 #module
>Proto >Proto Collection #zClass
Ts0 TLSTestProcess Big #zClass
Ts0 B #cInfo
Ts0 #process
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @StartRequest f0 '' #zField
Ts0 @EndTask f1 '' #zField
Ts0 @GridStep f3 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @UserDialog f7 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @UserDialog f6 '' #zField
Ts0 @PushWFArc f8 '' #zField
>Proto Ts0 Ts0 TLSTestProcess #zField
Ts0 f0 outLink start.ivp #txt
Ts0 f0 inParamDecl '<> param;' #txt
Ts0 f0 inParamTable 'out.logList=new java.util.ArrayList();
' #txt
Ts0 f0 requestEnabled true #txt
Ts0 f0 triggerEnabled false #txt
Ts0 f0 callSignature start() #txt
Ts0 f0 persist false #txt
Ts0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ts0 f0 caseData businessCase.attach=true #txt
Ts0 f0 showInStartList 1 #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 @C|.responsibility Everybody #txt
Ts0 f0 81 49 30 30 -21 17 #rect
Ts0 f0 @|StartRequestIcon #fIcon
Ts0 f1 633 49 30 30 0 15 #rect
Ts0 f1 @|EndIcon #fIcon
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'import com.axonivy.test.tls.TLSTest;

TLSTest test = new com.axonivy.test.tls.TLSTest(in.logList, in.targetUri);
if (in.useSpecialTruststore) {
	test.runTLSTestsWithSpecificTruststore(in.truststoreFile, in.truststorePwd.toCharArray());
} else {
	test.runTLSTests();
}

' #txt
Ts0 f3 328 42 112 44 0 -8 #rect
Ts0 f3 @|StepIcon #fIcon
Ts0 f5 expr out #txt
Ts0 f5 616 64 633 64 #arcP
Ts0 f2 expr out #txt
Ts0 f2 440 64 504 64 #arcP
Ts0 f7 dialogId tls.connection.test.TestTLSDialog #txt
Ts0 f7 startMethod start(String,List<com.axonivy.test.tls.TLSTestData>) #txt
Ts0 f7 requestActionDecl '<String targetUri,List<com.axonivy.test.tls.TLSTestData> logList> param;' #txt
Ts0 f7 requestMappingAction 'param.targetUri=in.targetUri;
param.logList=in.logList;
' #txt
Ts0 f7 responseActionDecl 'tls.connection.test.Data out;
' #txt
Ts0 f7 responseMappingAction 'out=in;
out.logList=result.logList;
' #txt
Ts0 f7 504 42 112 44 0 -8 #rect
Ts0 f7 @|UserDialogIcon #fIcon
Ts0 f4 expr out #txt
Ts0 f4 280 64 328 64 #arcP
Ts0 f6 dialogId tls.connection.test.TestTLSTarget #txt
Ts0 f6 startMethod start(String,List<com.axonivy.test.tls.TLSTestData>,File,String) #txt
Ts0 f6 requestActionDecl '<String targetUri,List<com.axonivy.test.tls.TLSTestData> logList,File truststoreFile,String truststorePwd> param;' #txt
Ts0 f6 requestMappingAction 'param.targetUri=in.targetUri;
param.logList=in.logList;
param.truststoreFile=in.truststoreFile;
param.truststorePwd=in.truststorePwd;
' #txt
Ts0 f6 responseActionDecl 'tls.connection.test.Data out;
' #txt
Ts0 f6 responseMappingAction 'out=in;
out.logList=result.logList;
out.targetUri=result.targetUri;
out.truststoreFile=result.truststoreFile;
out.truststorePwd=result.truststorePwd;
out.useSpecialTruststore=result.useSpecialTruststore;
' #txt
Ts0 f6 168 42 112 44 0 -8 #rect
Ts0 f6 @|UserDialogIcon #fIcon
Ts0 f8 expr out #txt
Ts0 f8 111 64 168 64 #arcP
>Proto Ts0 .type tls.connection.test.Data #txt
>Proto Ts0 .processKind NORMAL #txt
>Proto Ts0 0 0 32 24 18 0 #rect
>Proto Ts0 @|BIcon #fIcon
Ts0 f3 mainOut f2 tail #connect
Ts0 f2 head f7 mainIn #connect
Ts0 f7 mainOut f5 tail #connect
Ts0 f5 head f1 mainIn #connect
Ts0 f6 mainOut f4 tail #connect
Ts0 f4 head f3 mainIn #connect
Ts0 f0 mainOut f8 tail #connect
Ts0 f8 head f6 mainIn #connect
