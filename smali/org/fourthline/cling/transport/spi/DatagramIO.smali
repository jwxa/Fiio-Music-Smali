.class public interface abstract Lorg/fourthline/cling/transport/spi/DatagramIO;
.super Ljava/lang/Object;
.source "DatagramIO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/fourthline/cling/transport/spi/DatagramIOConfiguration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# virtual methods
.method public abstract getConfiguration()Lorg/fourthline/cling/transport/spi/DatagramIOConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;Lorg/fourthline/cling/transport/spi/DatagramProcessor;)V
.end method

.method public abstract send(Ljava/net/DatagramPacket;)V
.end method

.method public abstract send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V
.end method

.method public abstract stop()V
.end method
