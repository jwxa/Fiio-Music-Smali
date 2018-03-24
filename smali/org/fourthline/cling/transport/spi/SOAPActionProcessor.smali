.class public interface abstract Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
.super Ljava/lang/Object;
.source "SOAPActionProcessor.java"


# virtual methods
.method public abstract readBody(Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end method

.method public abstract readBody(Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end method

.method public abstract writeBody(Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end method

.method public abstract writeBody(Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end method
