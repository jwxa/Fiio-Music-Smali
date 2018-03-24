.class public abstract Lorg/fourthline/cling/transport/spi/UpnpStream;
.super Ljava/lang/Object;
.source "UpnpStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

.field protected syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/fourthline/cling/transport/spi/UpnpStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/protocol/ProtocolFactory;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 52
    return-void
.end method


# virtual methods
.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public process(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lorg/fourthline/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing stream request message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/spi/UpnpStream;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createReceivingSync(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/ReceivingSync;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;
    :try_end_0
    .catch Lorg/fourthline/cling/protocol/ProtocolCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    sget-object v0, Lorg/fourthline/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Running protocol for synchronous message processing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;

    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/ReceivingSync;->run()V

    .line 85
    iget-object v0, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;

    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/ReceivingSync;->getOutputMessage()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lorg/fourthline/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    const-string v1, "Protocol did not return any response message"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    sget-object v1, Lorg/fourthline/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing stream request failed - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->NOT_IMPLEMENTED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object v1, Lorg/fourthline/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Protocol returned response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/protocol/ReceivingSync;->responseException(Ljava/lang/Throwable;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/fourthline/cling/protocol/ReceivingSync;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/protocol/ReceivingSync;->responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 104
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
