.class final Lg/a/a/ag;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lg/a/a/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    const-class v0, Lg/a/a/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/ag;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lg/a/a/ae;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/nio/channels/SocketChannel;Lg/a/a/k;)V
    .locals 4

    .prologue
    .line 372
    :try_start_0
    new-instance v0, Lg/a/a/ah;

    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    iget-object v2, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v2}, Lg/a/a/ae;->l(Lg/a/a/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Lg/a/a/ah;-><init>(Lg/a/a/ae;Ljava/nio/channels/SocketChannel;Ljava/lang/String;Lg/a/a/k;)V

    .line 373
    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->m(Lg/a/a/ae;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lg/a/a/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Dispatcher (5)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    invoke-virtual {p2}, Lg/a/a/k;->a()V

    goto :goto_0

    .line 377
    :catch_1
    move-exception v0

    .line 378
    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Dispatcher (6)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    invoke-virtual {p2}, Lg/a/a/k;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 297
    :cond_0
    :goto_0
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->g(Lg/a/a/ae;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 300
    :try_start_0
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->e(Lg/a/a/ae;)Ljava/nio/channels/Selector;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    .line 304
    :goto_1
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-virtual {v0}, Lg/a/a/ae;->e()I

    move-result v0

    if-lez v0, :cond_7

    .line 306
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->h(Lg/a/a/ae;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 307
    :try_start_1
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->i(Lg/a/a/ae;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a/g;

    .line 308
    iget-object v2, v0, Lg/a/a/g;->a:Lg/a/a/h;

    invoke-virtual {v2}, Lg/a/a/h;->m()Lg/a/a/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    instance-of v0, v0, Lg/a/a/ao;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-virtual {v0}, Lg/a/a/ae;->i()I

    move-result v0

    iget-object v4, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v4}, Lg/a/a/ae;->a(Lg/a/a/ae;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->b(Lg/a/a/ae;)Z

    :cond_1
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-virtual {v0, v3}, Lg/a/a/ae;->d(Lg/a/a/k;)V

    iget-object v0, v3, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Lg/a/a/h;->h()Lg/a/a/q;

    move-result-object v4

    invoke-virtual {v4}, Lg/a/a/q;->c()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, v2, Lg/a/a/h;->k:Z

    :cond_2
    iget-boolean v2, v2, Lg/a/a/h;->k:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v2}, Lg/a/a/ae;->c(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sget v5, Lg/a/a/ae;->c:I

    if-lt v2, v5, :cond_5

    :cond_3
    invoke-virtual {v3}, Lg/a/a/k;->a()V

    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->d(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 358
    :catch_0
    move-exception v0

    .line 359
    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Dispatcher (3)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 308
    :cond_5
    :try_start_5
    invoke-virtual {v4}, Lg/a/a/q;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-virtual {v0, v3}, Lg/a/a/ae;->a(Lg/a/a/k;)V

    iget-object v0, v3, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v0, v3}, Lg/a/a/ag;->a(Ljava/nio/channels/SocketChannel;Lg/a/a/k;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v2}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v5, "Dispatcher (1)"

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Lg/a/a/k;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v2, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v2}, Lg/a/a/ae;->e(Lg/a/a/ae;)Ljava/nio/channels/Selector;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v3, Lg/a/a/k;->i:Ljava/nio/channels/SelectionKey;

    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-virtual {v0}, Lg/a/a/ae;->g()J

    move-result-wide v4

    sget-wide v6, Lg/a/a/ae;->b:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lg/a/a/k;->k:J

    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->c(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 310
    :cond_7
    :try_start_8
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->e(Lg/a/a/ae;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 316
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 318
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 319
    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->j(Lg/a/a/ae;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 320
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->a(Lg/a/a/ae;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 321
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->k(Lg/a/a/ae;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_8

    .line 325
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 328
    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->e(Lg/a/a/ae;)Ljava/nio/channels/Selector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 329
    new-instance v2, Lg/a/a/k;

    invoke-direct {v2}, Lg/a/a/k;-><init>()V

    .line 330
    iput-object v1, v2, Lg/a/a/k;->i:Ljava/nio/channels/SelectionKey;

    .line 331
    iput-object v0, v2, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    .line 332
    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->d(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-virtual {v0, v2}, Lg/a/a/ae;->a(Lg/a/a/k;)V
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 360
    :catch_2
    move-exception v0

    .line 361
    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Dispatcher (4)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 337
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 339
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 340
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/a/a/k;

    .line 342
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 343
    iget-object v4, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-virtual {v4, v2}, Lg/a/a/ae;->a(Lg/a/a/k;)V

    .line 344
    invoke-direct {p0, v1, v2}, Lg/a/a/ag;->a(Ljava/nio/channels/SocketChannel;Lg/a/a/k;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    .line 348
    :catch_3
    move-exception v1

    .line 349
    :try_start_a
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a/k;

    .line 350
    iget-object v2, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v2}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v5, "Dispatcher (2)"

    invoke-virtual {v2, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    invoke-virtual {v0}, Lg/a/a/k;->a()V
    :try_end_a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    .line 362
    :catch_4
    move-exception v0

    .line 363
    iget-object v1, p0, Lg/a/a/ag;->b:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Dispatcher (7)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 346
    :cond_a
    :try_start_b
    sget-boolean v1, Lg/a/a/ag;->a:Z

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 366
    :cond_b
    return-void
.end method
