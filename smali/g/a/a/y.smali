.class final Lg/a/a/y;
.super Ljava/lang/Object;
.source "SSLStreams.java"


# static fields
.field static final synthetic i:Z


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Ljavax/net/ssl/SSLEngine;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/nio/ByteBuffer;

.field f:Ljava/nio/ByteBuffer;

.field g:Z

.field h:I

.field final synthetic j:Lg/a/a/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    const-class v0, Lg/a/a/v;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/y;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lg/a/a/v;Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lg/a/a/y;->j:Lg/a/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a/a/y;->g:Z

    .line 226
    iput-object p2, p0, Lg/a/a/y;->a:Ljava/nio/channels/SocketChannel;

    .line 227
    iput-object p3, p0, Lg/a/a/y;->b:Ljavax/net/ssl/SSLEngine;

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/a/a/y;->c:Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/a/a/y;->d:Ljava/lang/Object;

    .line 230
    sget-object v0, Lg/a/a/x;->a:Lg/a/a/x;

    invoke-static {p1, v0}, Lg/a/a/v;->a(Lg/a/a/v;Lg/a/a/x;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    .line 231
    sget-object v0, Lg/a/a/x;->a:Lg/a/a/x;

    invoke-static {p1, v0}, Lg/a/a/v;->a(Lg/a/a/v;Lg/a/a/x;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/y;->f:Ljava/nio/ByteBuffer;

    .line 232
    return-void
.end method

.method static a()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method


# virtual methods
.method final a(Ljava/nio/ByteBuffer;)Lg/a/a/ac;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/a/a/y;->a(Ljava/nio/ByteBuffer;Z)Lg/a/a/ac;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/nio/ByteBuffer;Z)Lg/a/a/ac;
    .locals 7

    .prologue
    .line 247
    iget-boolean v0, p0, Lg/a/a/y;->g:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 248
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Engine is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v0, Lg/a/a/ac;

    iget-object v1, p0, Lg/a/a/y;->j:Lg/a/a/v;

    invoke-direct {v0, v1}, Lg/a/a/ac;-><init>(Lg/a/a/v;)V

    .line 252
    iget-object v2, p0, Lg/a/a/y;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v1, p0, Lg/a/a/y;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 255
    :cond_1
    iget-object v1, p0, Lg/a/a/y;->b:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lg/a/a/y;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    iput-object v1, v0, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    .line 256
    iget-object v1, v0, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 257
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_2

    .line 258
    iget-object v3, p0, Lg/a/a/y;->j:Lg/a/a/v;

    iget-object v4, p0, Lg/a/a/y;->f:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    sget-object v6, Lg/a/a/x;->a:Lg/a/a/x;

    invoke-static {v3, v4, v5, v6}, Lg/a/a/v;->a(Lg/a/a/v;Ljava/nio/ByteBuffer;ZLg/a/a/x;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lg/a/a/y;->f:Ljava/nio/ByteBuffer;

    .line 260
    :cond_2
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v3, :cond_1

    .line 261
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_3

    if-nez p2, :cond_3

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/a/a/y;->g:Z

    .line 263
    monitor-exit v2

    .line 276
    :goto_0
    return-object v0

    .line 265
    :cond_3
    iget-object v1, v0, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v1

    if-lez v1, :cond_5

    .line 266
    iget-object v1, p0, Lg/a/a/y;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 267
    iget-object v1, p0, Lg/a/a/y;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 268
    sget-boolean v3, Lg/a/a/y;->i:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-eq v1, v3, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 269
    :cond_4
    :try_start_1
    iget-object v3, p0, Lg/a/a/y;->j:Lg/a/a/v;

    iget-object v3, v3, Lg/a/a/v;->c:Lg/a/a/am;

    invoke-interface {v3}, Lg/a/a/am;->g()J

    .line 270
    sget-wide v4, Lg/a/a/v;->j:J

    .line 271
    :goto_1
    if-lez v1, :cond_5

    .line 272
    iget-object v3, p0, Lg/a/a/y;->a:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lg/a/a/y;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 273
    goto :goto_1

    .line 275
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final b(Ljava/nio/ByteBuffer;)Lg/a/a/ac;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 285
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 286
    new-instance v3, Lg/a/a/ac;

    iget-object v0, p0, Lg/a/a/y;->j:Lg/a/a/v;

    invoke-direct {v3, v0}, Lg/a/a/ac;-><init>(Lg/a/a/v;)V

    .line 287
    iput-object p1, v3, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    .line 288
    iget-boolean v0, p0, Lg/a/a/y;->g:Z

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Engine is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iget v0, p0, Lg/a/a/y;->h:I

    if-lez v0, :cond_3

    .line 293
    iget-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 294
    iget-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move v0, v1

    .line 300
    :goto_0
    iget-object v4, p0, Lg/a/a/y;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 303
    :cond_1
    if-eqz v0, :cond_5

    .line 305
    :cond_2
    :try_start_0
    iget-object v5, p0, Lg/a/a/y;->a:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 306
    if-eqz v5, :cond_2

    .line 307
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 308
    new-instance v0, Ljava/io/IOException;

    const-string v1, "connection closed for reading"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 297
    :cond_3
    iget-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v0, v2

    .line 298
    goto :goto_0

    .line 310
    :cond_4
    :try_start_1
    iget-object v5, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 312
    :cond_5
    iget-object v5, p0, Lg/a/a/y;->b:Ljavax/net/ssl/SSLEngine;

    iget-object v6, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    iget-object v7, v3, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v7}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    iput-object v5, v3, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    .line 313
    iget-object v5, v3, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    .line 314
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v5, v6, :cond_8

    .line 315
    iget-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v6, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ne v0, v6, :cond_7

    .line 317
    iget-object v0, p0, Lg/a/a/y;->j:Lg/a/a/v;

    iget-object v6, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    sget-object v8, Lg/a/a/x;->a:Lg/a/a/x;

    invoke-static {v0, v6, v7, v8}, Lg/a/a/v;->a(Lg/a/a/v;Ljava/nio/ByteBuffer;ZLg/a/a/x;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    :goto_1
    move v0, v2

    .line 337
    :cond_6
    :goto_2
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v5, v6, :cond_1

    .line 338
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    iget-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lg/a/a/y;->h:I

    move-object v0, v3

    .line 340
    :goto_3
    return-object v0

    .line 325
    :cond_7
    :try_start_2
    iget-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 326
    iget-object v0, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lg/a/a/y;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 329
    :cond_8
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v5, v6, :cond_9

    .line 330
    iget-object v0, p0, Lg/a/a/y;->j:Lg/a/a/v;

    iget-object v6, v3, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    const/4 v7, 0x1

    sget-object v8, Lg/a/a/x;->b:Lg/a/a/x;

    invoke-static {v0, v6, v7, v8}, Lg/a/a/v;->a(Lg/a/a/v;Ljava/nio/ByteBuffer;ZLg/a/a/x;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    move v0, v1

    .line 332
    goto :goto_2

    :cond_9
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v5, v6, :cond_6

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/y;->g:Z

    .line 334
    iget-object v0, v3, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 335
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    goto :goto_3
.end method
