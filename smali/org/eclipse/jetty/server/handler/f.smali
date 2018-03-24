.class final Lorg/eclipse/jetty/server/handler/f;
.super Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
.source "GzipHandler.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/handler/e;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/e;Ljava/lang/String;Lc/c/c/c;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/f;->a:Lorg/eclipse/jetty/server/handler/e;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;-><init>(Ljava/lang/String;Lc/c/c/c;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final createStream()Ljava/util/zip/DeflaterOutputStream;
    .locals 3

    .prologue
    .line 331
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/f;->_response:Lc/c/c/e;

    invoke-interface {v1}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/f;->a:Lorg/eclipse/jetty/server/handler/e;

    iget-object v2, v2, Lorg/eclipse/jetty/server/handler/e;->a:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget v2, v2, Lorg/eclipse/jetty/server/handler/GzipHandler;->_bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method
