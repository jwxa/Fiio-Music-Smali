.class public interface abstract Lorg/eclipse/jetty/http/HttpContent;
.super Ljava/lang/Object;
.source "HttpContent.java"


# virtual methods
.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Lorg/eclipse/jetty/io/Buffer;
.end method

.method public abstract getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
.end method

.method public abstract getETag()Lorg/eclipse/jetty/io/Buffer;
.end method

.method public abstract getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getLastModified()Lorg/eclipse/jetty/io/Buffer;
.end method

.method public abstract getResource()Lorg/eclipse/jetty/util/resource/Resource;
.end method

.method public abstract release()V
.end method
