.class public Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;
.super Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;
.source "PullGENAEventProcessorImpl.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public readBody(Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 5

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->getMessageBody(Lorg/fourthline/cling/model/message/UpnpMessage;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :try_start_0
    invoke-static {v1}, Lorg/seamless/xml/XmlPullParserUtils;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0, p1}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->readProperties(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    :catch_0
    move-exception v0

    .line 53
    new-instance v2, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t transform message payload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v2
.end method

.method protected readProperties(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getService()Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 61
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 67
    return-void

    .line 62
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "property"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->readProperty(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    goto :goto_0
.end method

.method protected readProperty(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;[Lorg/fourthline/cling/model/meta/StateVariable;)V
    .locals 6

    .prologue
    .line 73
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 74
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    array-length v3, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_3

    .line 86
    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :cond_2
    return-void

    .line 77
    :cond_3
    aget-object v4, p3, v0

    .line 78
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    sget-object v0, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Reading state variable value: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getStateVariableValues()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/model/state/StateVariableValue;

    invoke-direct {v3, v4, v0}, Lorg/fourthline/cling/model/state/StateVariableValue;-><init>(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
