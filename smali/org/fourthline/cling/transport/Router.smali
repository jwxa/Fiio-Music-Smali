.class public interface abstract Lorg/fourthline/cling/transport/Router;
.super Ljava/lang/Object;
.source "Router.java"


# virtual methods
.method public abstract broadcast([B)V
.end method

.method public abstract disable()Z
.end method

.method public abstract enable()Z
.end method

.method public abstract getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
.end method

.method public abstract getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
.end method

.method public abstract handleStartFailure(Lorg/fourthline/cling/transport/spi/InitializationException;)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract received(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
.end method

.method public abstract received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V
.end method

.method public abstract send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
.end method

.method public abstract send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V
.end method

.method public abstract shutdown()V
.end method
