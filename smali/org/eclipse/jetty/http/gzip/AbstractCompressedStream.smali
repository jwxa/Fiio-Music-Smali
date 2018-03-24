.class public abstract Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
.super Lc/c/z;
.source "AbstractCompressedStream.java"


# instance fields
.field protected _bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

.field protected _closed:Z

.field protected _compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

.field protected _doNotCompress:Z

.field private final _encoding:Ljava/lang/String;

.field protected _out:Ljava/io/OutputStream;

.field protected final _response:Lc/c/c/e;

.field protected final _vary:Ljava/lang/String;

.field protected final _wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/c/c/c;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lc/c/z;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_encoding:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    .line 61
    invoke-virtual {p3}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Lc/c/ai;

    move-result-object v0

    check-cast v0, Lc/c/c/e;

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    .line 62
    iput-object p4, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_vary:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    .line 66
    :cond_0
    return-void
.end method

.method private checkOut(I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 297
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_5

    .line 302
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 303
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    invoke-interface {v2}, Lc/c/c/e;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_1

    cmp-long v2, v0, v6

    if-ltz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 304
    :cond_1
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    .line 318
    :cond_2
    :goto_0
    return-void

    .line 305
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 306
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_0

    .line 308
    :cond_4
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    goto :goto_0

    .line 310
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 313
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    invoke-interface {v2}, Lc/c/c/e;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_6

    cmp-long v2, v0, v6

    if-ltz v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 314
    :cond_6
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    goto :goto_0

    .line 315
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_2

    .line 316
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getRequest()Lc/c/c/c;

    move-result-object v0

    const-string v1, "javax.servlet.include.request_uri"

    invoke-interface {v0, v1}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->flush()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 136
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v0

    int-to-long v0, v0

    .line 139
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    .line 141
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 142
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    .line 152
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 156
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_1

    .line 146
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_3

    .line 149
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    goto :goto_1

    .line 155
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_2
.end method

.method protected abstract createStream()Ljava/util/zip/DeflaterOutputStream;
.end method

.method public doCompress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-nez v0, :cond_2

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    invoke-interface {v0}, Lc/c/c/e;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_encoding:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 234
    const-string v0, "Content-Encoding"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_encoding:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Lc/c/c/e;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    const-string v0, "Vary"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_vary:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->createStream()Ljava/util/zip/DeflaterOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getETag()Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_2

    .line 249
    const-string v1, "ETag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_2
    :goto_0
    return-void

    .line 255
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    goto :goto_0
.end method

.method public doNotCompress(Z)V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compressed output stream is already assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_5

    .line 271
    :cond_1
    if-eqz p1, :cond_2

    .line 272
    const-string v0, "Vary"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_vary:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getETag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 274
    const-string v0, "ETag"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_doNotCompress:Z

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    invoke-interface {v0}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    .line 279
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 283
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 285
    :cond_5
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 173
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    if-nez v0, :cond_2

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 185
    :cond_2
    return-void

    .line 176
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 110
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 117
    return-void

    .line 113
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    return v0
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2

    .prologue
    .line 341
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

.method public resetBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    invoke-interface {v0}, Lc/c/c/e;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    .line 76
    iput-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    .line 77
    iput-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1, v2}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    .line 81
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_doNotCompress:Z

    .line 82
    return-void
.end method

.method public setContentLength()V
    .locals 4

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_doNotCompress:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 90
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 92
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 93
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    long-to-int v0, v0

    invoke-interface {v2, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    const-string v3, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Lc/c/c/e;

    invoke-interface {v0, p1, p2}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->checkOut(I)V

    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 196
    return-void
.end method

.method public write([B)V
    .locals 1

    .prologue
    .line 205
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->checkOut(I)V

    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 207
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->checkOut(I)V

    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    return-void
.end method
