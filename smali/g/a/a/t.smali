.class final Lg/a/a/t;
.super Ljava/io/InputStream;
.source "Request.java"


# static fields
.field static final synthetic i:Z


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Ljava/nio/ByteBuffer;

.field c:[B

.field d:Ljava/nio/ByteBuffer;

.field e:Z

.field f:Z

.field g:I

.field h:Lg/a/a/ae;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const-class v0, Lg/a/a/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/t;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lg/a/a/ae;Ljava/nio/channels/SocketChannel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 188
    iput-boolean v1, p0, Lg/a/a/t;->j:Z

    iput-boolean v1, p0, Lg/a/a/t;->k:Z

    .line 198
    iput-object p2, p0, Lg/a/a/t;->a:Ljava/nio/channels/SocketChannel;

    .line 199
    iput-object p1, p0, Lg/a/a/t;->h:Lg/a/a/ae;

    .line 200
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/t;->b:Ljava/nio/ByteBuffer;

    .line 201
    iget-object v0, p0, Lg/a/a/t;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lg/a/a/t;->c:[B

    .line 203
    sget-boolean v0, Lg/a/a/t;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/a/a/t;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_0
    iput-boolean v1, p0, Lg/a/a/t;->f:Z

    iput-boolean v1, p0, Lg/a/a/t;->e:Z

    iput-boolean v1, p0, Lg/a/a/t;->j:Z

    .line 205
    return-void
.end method


# virtual methods
.method public final declared-synchronized available()I
    .locals 2

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/a/a/t;->j:Z

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 277
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lg/a/a/t;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, -0x1

    .line 283
    :goto_0
    monitor-exit p0

    return v0

    .line 280
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lg/a/a/t;->f:Z

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lg/a/a/t;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lg/a/a/t;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 287
    iget-boolean v0, p0, Lg/a/a/t;->j:Z

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lg/a/a/t;->h:Lg/a/a/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request.close: isOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/a/a/t;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/a/a/ae;->b(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lg/a/a/t;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/t;->j:Z

    goto :goto_0
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/a/a/t;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 298
    :cond_0
    :try_start_1
    iput p1, p0, Lg/a/a/t;->g:I

    .line 299
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/t;->d:Ljava/nio/ByteBuffer;

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/t;->e:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a/a/t;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/a/a/t;->c:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lg/a/a/t;->read([BII)I

    move-result v0

    .line 213
    if-ne v0, v3, :cond_0

    .line 214
    iget-object v0, p0, Lg/a/a/t;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    .line 216
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([B)I
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lg/a/a/t;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 224
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/a/a/t;->j:Z

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lg/a/a/t;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    move v0, v1

    .line 265
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 231
    :cond_2
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    :try_start_2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_4

    .line 232
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 235
    :cond_4
    iget-boolean v0, p0, Lg/a/a/t;->f:Z

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, p0, Lg/a/a/t;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 237
    if-le v1, p3, :cond_5

    move v0, p3

    .line 238
    :goto_1
    iget-object v2, p0, Lg/a/a/t;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 239
    if-ne v1, v0, :cond_1

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/a/a/t;->f:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 237
    goto :goto_1

    .line 243
    :cond_6
    iget-object v0, p0, Lg/a/a/t;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 244
    const/16 v0, 0x2000

    if-ge p3, v0, :cond_7

    .line 245
    iget-object v0, p0, Lg/a/a/t;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 248
    :cond_7
    iget-object v0, p0, Lg/a/a/t;->a:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lg/a/a/t;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 249
    if-eqz v0, :cond_7

    .line 250
    if-ne v0, v1, :cond_8

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/t;->k:Z

    move v0, v1

    .line 252
    goto :goto_0

    .line 254
    :cond_8
    iget-object v1, p0, Lg/a/a/t;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 255
    iget-object v1, p0, Lg/a/a/t;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 257
    iget-boolean v1, p0, Lg/a/a/t;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 259
    :try_start_3
    iget-object v1, p0, Lg/a/a/t;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/nio/BufferOverflowException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lg/a/a/t;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized reset()V
    .locals 2

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/a/a/t;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lg/a/a/t;->e:Z

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream not marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lg/a/a/t;->e:Z

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/t;->f:Z

    .line 311
    iget-object v0, p0, Lg/a/a/t;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
