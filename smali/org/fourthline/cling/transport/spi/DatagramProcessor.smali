.class public interface abstract Lorg/fourthline/cling/transport/spi/DatagramProcessor;
.super Ljava/lang/Object;
.source "DatagramProcessor.java"


# virtual methods
.method public abstract read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
.end method

.method public abstract write(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)Ljava/net/DatagramPacket;
.end method
