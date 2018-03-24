.class public abstract Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetVolume.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetVolume"

    invoke-virtual {p2, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 42
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Channel"

    sget-object v2, Lorg/fourthline/cling/support/model/Channel;->Master:Lorg/fourthline/cling/support/model/Channel;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/Channel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;I)V
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x1

    .line 50
    :try_start_0
    const-string v0, "CurrentVolume"

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v2

    .line 58
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;->received(Lorg/fourthline/cling/model/action/ActionInvocation;I)V

    .line 59
    :cond_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    new-instance v2, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t parse ProtocolInfo response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    move v0, v1

    .line 56
    goto :goto_0
.end method
