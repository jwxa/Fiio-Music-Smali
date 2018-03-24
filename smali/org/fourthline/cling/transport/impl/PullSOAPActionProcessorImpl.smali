.class public Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;
.super Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;
.source "PullSOAPActionProcessorImpl.java"


# static fields
.field protected static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected findActionArgumentValue(Ljava/util/Map;Lorg/fourthline/cling/model/meta/ActionArgument;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 179
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/fourthline/cling/model/meta/ActionArgument;->isNameOrAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected getMatchingNodes(Lorg/xmlpull/v1/XmlPullParser;[Lorg/fourthline/cling/model/meta/ActionArgument;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "[",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_3

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 139
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 147
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    .line 148
    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid number of input or output arguments in XML message, expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_3
    aget-object v0, p2, v1

    .line 126
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getAliases()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 127
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_5
    return-object v0
.end method

.method protected readActionInputArguments(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->readArgumentValues(Lorg/xmlpull/v1/XmlPullParser;[Lorg/fourthline/cling/model/meta/ActionArgument;)[Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput([Lorg/fourthline/cling/model/action/ActionArgumentValue;)V

    .line 115
    return-void
.end method

.method protected readActionOutputArguments(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->readArgumentValues(Lorg/xmlpull/v1/XmlPullParser;[Lorg/fourthline/cling/model/meta/ActionArgument;)[Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setOutput([Lorg/fourthline/cling/model/action/ActionArgumentValue;)V

    .line 119
    return-void
.end method

.method protected readArgumentValues(Lorg/xmlpull/v1/XmlPullParser;[Lorg/fourthline/cling/model/meta/ActionArgument;)[Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 8

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->getMatchingNodes(Lorg/xmlpull/v1/XmlPullParser;[Lorg/fourthline/cling/model/meta/ActionArgument;)Ljava/util/Map;

    move-result-object v1

    .line 160
    array-length v0, p2

    new-array v2, v0, [Lorg/fourthline/cling/model/action/ActionArgumentValue;

    .line 162
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 175
    return-object v2

    .line 164
    :cond_0
    aget-object v3, p2, v0

    .line 165
    invoke-virtual {p0, v1, v3}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->findActionArgumentValue(Ljava/util/Map;Lorg/fourthline/cling/model/meta/ActionArgument;)Ljava/lang/String;

    move-result-object v4

    .line 166
    if-nez v4, :cond_1

    .line 167
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    .line 168
    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not find argument \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    sget-object v5, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reading action argument: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v3, v4}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->createValue(Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v3

    aput-object v3, v2, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readBody(Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 5

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->getMessageBody(Lorg/fourthline/cling/model/message/control/ActionMessage;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :try_start_0
    invoke-static {v1}, Lorg/seamless/xml/XmlPullParserUtils;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0, p1, p2}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->readBodyRequest(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    :catch_0
    move-exception v0

    .line 62
    new-instance v2, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t transform message payload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v2
.end method

.method public readBody(Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->getMessageBody(Lorg/fourthline/cling/model/message/control/ActionMessage;)Ljava/lang/String;

    move-result-object v1

    .line 69
    :try_start_0
    invoke-static {v1}, Lorg/seamless/xml/XmlPullParserUtils;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->readBodyElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 71
    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->readBodyResponse(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    :catch_0
    move-exception v0

    .line 73
    new-instance v2, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t transform message payload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v2
.end method

.method protected readBodyElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "Body"

    invoke-static {p1, v0}, Lorg/seamless/xml/XmlPullParserUtils;->searchTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected readBodyRequest(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/seamless/xml/XmlPullParserUtils;->searchTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1, p3}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->readActionInputArguments(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 84
    return-void
.end method

.method protected readBodyResponse(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 90
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 91
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fault"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->readFaultElement(Lorg/xmlpull/v1/XmlPullParser;)Lorg/fourthline/cling/model/action/ActionException;

    move-result-object v0

    .line 94
    invoke-virtual {p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->readActionOutputArguments(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    goto :goto_0

    .line 103
    :cond_2
    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Body"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :cond_3
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    .line 106
    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 107
    const-string v2, "Action SOAP response do not contain %s element"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v6

    invoke-virtual {v6}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 107
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method protected readFaultElement(Lorg/xmlpull/v1/XmlPullParser;)Lorg/fourthline/cling/model/action/ActionException;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 188
    .line 191
    const-string v1, "UPnPError"

    invoke-static {p1, v1}, Lorg/seamless/xml/XmlPullParserUtils;->searchTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object v1, v0

    .line 195
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 196
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 197
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 198
    const-string v4, "errorCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_1
    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPnPError"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    :cond_2
    if-eqz v1, :cond_5

    .line 209
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    invoke-static {v2}, Lorg/fourthline/cling/model/types/ErrorCode;->getByCode(I)Lorg/fourthline/cling/model/types/ErrorCode;

    move-result-object v3

    .line 211
    if-eqz v3, :cond_4

    .line 212
    sget-object v1, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Reading fault element: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v0, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 216
    :goto_1
    return-object v0

    .line 200
    :cond_3
    const-string v4, "errorDescription"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_4
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/transport/impl/PullSOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reading fault element: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 216
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error code was not a number"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Received fault element but no error code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
