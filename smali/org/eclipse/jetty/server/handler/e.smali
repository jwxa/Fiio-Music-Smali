.class final Lorg/eclipse/jetty/server/handler/e;
.super Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
.source "GzipHandler.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/handler/GzipHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/GzipHandler;Lc/c/c/c;Lc/c/c/e;)V
    .locals 1

    .prologue
    .line 316
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/e;->a:Lorg/eclipse/jetty/server/handler/GzipHandler;

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;-><init>(Lc/c/c/c;Lc/c/c/e;)V

    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/e;->a:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_mimeTypes:Ljava/util/Set;

    invoke-super {p0, v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setMimeTypes(Ljava/util/Set;)V

    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/e;->a:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget v0, v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_bufferSize:I

    invoke-super {p0, v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setBufferSize(I)V

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/e;->a:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget v0, v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_minGzipSize:I

    invoke-super {p0, v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setMinCompressSize(I)V

    .line 321
    return-void
.end method


# virtual methods
.method protected final newCompressedStream(Lc/c/c/c;Lc/c/c/e;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
    .locals 6

    .prologue
    .line 326
    new-instance v0, Lorg/eclipse/jetty/server/handler/f;

    const-string v2, "gzip"

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/e;->a:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/GzipHandler;->_vary:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/f;-><init>(Lorg/eclipse/jetty/server/handler/e;Ljava/lang/String;Lc/c/c/c;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/e;->a:Lorg/eclipse/jetty/server/handler/GzipHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/handler/GzipHandler;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method
