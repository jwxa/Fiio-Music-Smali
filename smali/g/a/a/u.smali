.class final Lg/a/a/u;
.super Ljava/io/OutputStream;
.source "Request.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Ljava/nio/ByteBuffer;

.field c:Z

.field d:[B

.field e:Lg/a/a/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    const-class v0, Lg/a/a/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/u;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lg/a/a/ae;Ljava/nio/channels/SocketChannel;)V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 324
    iput-object p2, p0, Lg/a/a/u;->a:Ljava/nio/channels/SocketChannel;

    .line 325
    iput-object p1, p0, Lg/a/a/u;->e:Lg/a/a/ae;

    .line 326
    sget-boolean v0, Lg/a/a/u;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a/a/u;->c:Z

    .line 328
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lg/a/a/u;->d:[B

    .line 329
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/u;->b:Ljava/nio/ByteBuffer;

    .line 330
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 363
    iget-boolean v0, p0, Lg/a/a/u;->c:Z

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lg/a/a/u;->e:Lg/a/a/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request.OS.close: isOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/a/a/u;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/a/a/ae;->b(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lg/a/a/u;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/u;->c:Z

    goto :goto_0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/a/a/u;->d:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 334
    iget-object v0, p0, Lg/a/a/u;->d:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lg/a/a/u;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([B)V
    .locals 2

    .prologue
    .line 338
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lg/a/a/u;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 2

    .prologue
    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-boolean v0, p0, Lg/a/a/u;->c:Z

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 346
    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/a/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 347
    if-ge v0, p3, :cond_1

    .line 348
    sub-int v1, p3, v0

    .line 349
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/u;->b:Ljava/nio/ByteBuffer;

    .line 351
    :cond_1
    iget-object v0, p0, Lg/a/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 352
    iget-object v0, p0, Lg/a/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 353
    iget-object v0, p0, Lg/a/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 355
    :cond_2
    iget-object v0, p0, Lg/a/a/u;->a:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lg/a/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ge v0, p3, :cond_3

    .line 356
    sub-int/2addr p3, v0

    .line 357
    if-nez p3, :cond_2

    .line 360
    :cond_3
    monitor-exit p0

    return-void
.end method
