.class public abstract Lorg/fourthline/cling/support/contentdirectory/callback/Browse;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "Browse.java"


# static fields
.field public static final CAPS_WILDCARD:Ljava/lang/String; = "*"

.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;)V
    .locals 10

    .prologue
    .line 63
    const-string v5, "*"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    new-array v9, v0, [Lorg/fourthline/cling/support/model/SortCriterion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V

    .line 64
    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "Browse"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 74
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating browse action for object ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "ObjectID"

    invoke-virtual {v0, v1, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "BrowseFlag"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/BrowseFlag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Filter"

    invoke-virtual {v0, v1, p4}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "StartingIndex"

    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v2, p5, p6}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v2

    const-string v3, "RequestedCount"

    .line 81
    new-instance v4, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    if-nez p7, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->getDefaultMaxResults()J

    move-result-wide v0

    :goto_0
    invoke-direct {v4, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 80
    invoke-virtual {v2, v3, v4}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "SortCriteria"

    invoke-static {p8}, Lorg/fourthline/cling/support/model/SortCriterion;->toString([Lorg/fourthline/cling/support/model/SortCriterion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultMaxResults()J
    .locals 2

    .prologue
    .line 132
    const-wide/16 v0, 0x3e7

    return-wide v0
.end method

.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V
.end method

.method public receivedRaw(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/BrowseResult;)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->LOADING:Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V

    .line 89
    invoke-super {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->run()V

    .line 90
    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 6

    .prologue
    .line 93
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    const-string v1, "Successful browse action, reading output argument values"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 95
    new-instance v3, Lorg/fourthline/cling/support/model/BrowseResult;

    .line 96
    const-string v0, "Result"

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    const-string v0, "NumberReturned"

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 98
    const-string v1, "TotalMatches"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 99
    const-string v2, "UpdateID"

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 95
    invoke-direct {v3, v4, v0, v1, v2}, Lorg/fourthline/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 102
    invoke-virtual {p0, p1, v3}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->receivedRaw(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/BrowseResult;)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/BrowseResult;->getCountLong()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/BrowseResult;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;-><init>()V

    .line 109
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/BrowseResult;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;

    move-result-object v0

    .line 110
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V

    .line 111
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->OK:Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t parse DIDL XML response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V

    .line 122
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->NO_CONTENT:Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V

    goto :goto_0
.end method

.method public abstract updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V
.end method
