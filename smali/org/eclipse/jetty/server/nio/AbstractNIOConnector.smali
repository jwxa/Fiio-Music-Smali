.class public abstract Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;
.super Lorg/eclipse/jetty/server/AbstractConnector;
.source "AbstractNIOConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/server/nio/NIOConnector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/eclipse/jetty/server/AbstractConnector;-><init>()V

    .line 31
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 32
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 33
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 34
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getUseDirectBuffers()Z
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseDirectBuffers(Z)V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    if-eqz p1, :cond_0

    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 51
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    if-eqz p1, :cond_1

    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 52
    return-void

    .line 50
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_1
.end method
