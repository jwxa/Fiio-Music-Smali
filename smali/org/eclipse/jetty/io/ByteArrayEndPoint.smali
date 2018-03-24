.class public Lorg/eclipse/jetty/io/ByteArrayEndPoint;
.super Ljava/lang/Object;
.source "ByteArrayEndPoint.java"

# interfaces
.implements Lorg/eclipse/jetty/io/ConnectedEndPoint;


# instance fields
.field protected _closed:Z

.field protected _connection:Lorg/eclipse/jetty/io/Connection;

.field protected _growOutput:Z

.field protected _in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field protected _inBytes:[B

.field protected _maxIdleTime:I

.field protected _nonBlocking:Z

.field protected _out:Lorg/eclipse/jetty/io/ByteArrayBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_inBytes:[B

    .line 93
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([B)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 94
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 95
    return-void
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    .line 203
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 217
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->skip(I)I

    .line 225
    :goto_0
    return v0

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_nonBlocking:Z

    if-eqz v0, :cond_2

    .line 222
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->close()V

    .line 225
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 4

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_growOutput:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->compact()V

    .line 240
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 242
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 244
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 245
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    if-lez v1, :cond_1

    .line 247
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->mark()V

    .line 248
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 250
    :cond_1
    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 253
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 254
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 256
    :cond_3
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 270
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 271
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 273
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 275
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 276
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 280
    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 282
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    :cond_5
    return v0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    return-object v0
.end method

.method public getIn()Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_maxIdleTime:I

    return v0
.end method

.method public getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_inBytes:[B

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_nonBlocking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGrowOutput()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_growOutput:Z

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    return v0
.end method

.method public isNonBlocking()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_nonBlocking:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 298
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_inBytes:[B

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_inBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 301
    :cond_0
    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    .line 66
    return-void
.end method

.method public setGrowOutput(Z)V
    .locals 0

    .prologue
    .line 386
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_growOutput:Z

    .line 387
    return-void
.end method

.method public setIn(Lorg/eclipse/jetty/io/ByteArrayBuffer;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 112
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    .prologue
    .line 404
    iput p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_maxIdleTime:I

    .line 405
    return-void
.end method

.method public setNonBlocking(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_nonBlocking:Z

    .line 84
    return-void
.end method

.method public setOut(Lorg/eclipse/jetty/io/ByteArrayBuffer;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 128
    return-void
.end method

.method public shutdownInput()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->close()V

    .line 194
    return-void
.end method

.method public shutdownOutput()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->close()V

    .line 185
    return-void
.end method
