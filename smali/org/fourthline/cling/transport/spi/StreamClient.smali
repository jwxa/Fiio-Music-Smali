.class public interface abstract Lorg/fourthline/cling/transport/spi/StreamClient;
.super Ljava/lang/Object;
.source "StreamClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract sendRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
.end method

.method public abstract stop()V
.end method
