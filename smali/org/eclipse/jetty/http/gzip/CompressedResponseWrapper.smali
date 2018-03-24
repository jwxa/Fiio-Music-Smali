.class public abstract Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
.super Lc/c/c/f;
.source "CompressedResponseWrapper.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_MIN_COMPRESS_SIZE:I = 0x100


# instance fields
.field private _bufferSize:I

.field private _compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

.field private _contentLength:J

.field private _etag:Ljava/lang/String;

.field private _mimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _minCompressSize:I

.field private _noCompression:Z

.field protected _request:Lc/c/c/c;

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lc/c/c/c;Lc/c/c/e;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p2}, Lc/c/c/f;-><init>(Lc/c/c/e;)V

    .line 45
    const/16 v0, 0x2000

    iput v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_bufferSize:I

    .line 46
    const/16 v0, 0x100

    iput v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_minCompressSize:I

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Lc/c/c/c;

    .line 60
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 209
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_2
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    invoke-super {p0, p1, p2}, Lc/c/c/f;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    goto :goto_0

    .line 224
    :cond_3
    const-string v0, "etag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    iput-object p2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    goto :goto_0

    .line 227
    :cond_4
    invoke-super {p0, p1, p2}, Lc/c/c/f;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 373
    const-string v0, "etag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lc/c/c/f;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->finish()V

    .line 338
    :cond_1
    return-void
.end method

.method public flushBuffer()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->finish()V

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    invoke-interface {v0}, Lc/c/ai;->flushBuffer()V

    goto :goto_0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_bufferSize:I

    return v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    return-object v0
.end method

.method public getMinCompressSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_minCompressSize:I

    return v0
.end method

.method public getOutputStream()Lc/c/z;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-nez v0, :cond_3

    .line 387
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    invoke-interface {v0}, Lc/c/ai;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    .line 390
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    invoke-interface {v0}, Lc/c/ai;->getOutputStream()Lc/c/z;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    .line 393
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Lc/c/c/c;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    check-cast v0, Lc/c/c/e;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newCompressedStream(Lc/c/c/c;Lc/c/c/e;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 398
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    goto :goto_0

    .line 395
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWriter() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequest()Lc/c/c/c;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Lc/c/c/c;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-nez v0, :cond_3

    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    invoke-interface {v0}, Lc/c/ai;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-eqz v0, :cond_2

    .line 415
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    .line 416
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    invoke-interface {v0}, Lc/c/ai;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    .line 419
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Lc/c/c/c;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    check-cast v0, Lc/c/c/e;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newCompressedStream(Lc/c/c/c;Lc/c/c/e;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 422
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method protected abstract newCompressedStream(Lc/c/c/c;Lc/c/c/e;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2

    .prologue
    .line 453
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public noCompression()V
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-super {p0}, Lc/c/c/f;->reset()V

    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->resetBuffer()V

    .line 255
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 256
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    .line 258
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 259
    return-void
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-super {p0}, Lc/c/c/f;->resetBuffer()V

    .line 269
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->resetBuffer()V

    .line 271
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 272
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 273
    return-void
.end method

.method public sendError(I)V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 294
    invoke-super {p0, p1}, Lc/c/c/f;->sendError(I)V

    .line 295
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 283
    invoke-super {p0, p1, p2}, Lc/c/c/f;->sendError(ILjava/lang/String;)V

    .line 284
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 305
    invoke-super {p0, p1}, Lc/c/c/f;->sendRedirect(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_bufferSize:I

    .line 110
    return-void
.end method

.method public setContentLength(I)V
    .locals 2

    .prologue
    .line 176
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    .line 177
    return-void
.end method

.method protected setContentLength(J)V
    .locals 7

    .prologue
    .line 182
    iput-wide p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    check-cast v0, Lc/c/c/e;

    .line 188
    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 190
    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    long-to-int v1, v2

    invoke-interface {v0, v1}, Lc/c/c/e;->setContentLength(I)V

    goto :goto_0

    .line 194
    :cond_2
    const-string v1, "Content-Length"

    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Lc/c/c/f;->setContentType(Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_0

    .line 132
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 133
    if-lez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_mimeTypes:Ljava/util/Set;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "gzip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_mimeTypes:Ljava/util/Set;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_mimeTypes:Ljava/util/Set;

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    .line 143
    :cond_4
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 347
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_2
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    invoke-super {p0, p1, p2}, Lc/c/c/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    goto :goto_0

    .line 363
    :cond_3
    const-string v0, "etag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    iput-object p2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_4
    invoke-super {p0, p1, p2}, Lc/c/c/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 432
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    int-to-long v0, p2

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 435
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-super {p0, p1, p2}, Lc/c/c/f;->setIntHeader(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setMimeTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_mimeTypes:Ljava/util/Set;

    .line 100
    return-void
.end method

.method public setMinCompressSize(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_minCompressSize:I

    .line 119
    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0, p1}, Lc/c/c/f;->setStatus(I)V

    .line 165
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    .line 167
    :cond_1
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lc/c/c/f;->setStatus(ILjava/lang/String;)V

    .line 153
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    .line 155
    :cond_1
    return-void
.end method
