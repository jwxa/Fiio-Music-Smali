.class public interface abstract Lorg/eclipse/jetty/client/HttpEventListener;
.super Ljava/lang/Object;
.source "HttpEventListener.java"


# virtual methods
.method public abstract onConnectionFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onException(Ljava/lang/Throwable;)V
.end method

.method public abstract onExpire()V
.end method

.method public abstract onRequestCommitted()V
.end method

.method public abstract onRequestComplete()V
.end method

.method public abstract onResponseComplete()V
.end method

.method public abstract onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
.end method

.method public abstract onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
.end method

.method public abstract onResponseHeaderComplete()V
.end method

.method public abstract onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
.end method

.method public abstract onRetry()V
.end method
