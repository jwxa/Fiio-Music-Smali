.class public Lorg/eclipse/jetty/server/handler/HandlerCollection;
.super Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.source "HandlerCollection.java"


# instance fields
.field private volatile _handlers:[Lorg/eclipse/jetty/server/Handler;

.field private final _mutableWhenRunning:Z

.field private _parallelStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;-><init>()V

    .line 49
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    .line 54
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_mutableWhenRunning:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    .line 60
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_mutableWhenRunning:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/HandlerCollection;)[Lorg/eclipse/jetty/server/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method


# virtual methods
.method public addHandler(Lorg/eclipse/jetty/server/Handler;)V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/server/Handler;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 283
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!STOPPED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getChildHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 312
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 313
    invoke-interface {v3}, Lorg/eclipse/jetty/server/Handler;->destroy()V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->destroy()V

    .line 315
    return-void
.end method

.method protected doStart()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 189
    new-instance v4, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v4}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 190
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_1

    .line 192
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    if-eqz v0, :cond_2

    .line 194
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v0, v0

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 196
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v6

    new-instance v0, Lorg/eclipse/jetty/server/handler/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/g;-><init>(Lorg/eclipse/jetty/server/handler/HandlerCollection;Ljava/lang/ClassLoader;ILorg/eclipse/jetty/util/MultiException;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 234
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStart()V

    .line 235
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 236
    return-void

    .line 227
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 229
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected doStop()V
    .locals 3

    .prologue
    .line 245
    new-instance v2, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 246
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v0, v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 250
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->stop()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    .line 252
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 253
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    .line 299
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 300
    aget-object v2, v1, v0

    invoke-virtual {p0, v2, p1, p2}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-object p1
.end method

.method public getHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    const/4 v0, 0x0

    move v1, v2

    .line 150
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 154
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    throw v0

    .line 160
    :catch_1
    move-exception v0

    throw v0

    .line 164
    :catch_2
    move-exception v3

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 168
    :cond_0
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 171
    :cond_1
    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiException;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 174
    new-instance v1, Lc/c/x;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/MultiException;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_2
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 180
    :cond_3
    return-void
.end method

.method public isParallelStart()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    return v0
.end method

.method public removeHandler(Lorg/eclipse/jetty/server/Handler;)V
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 291
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 292
    :cond_0
    return-void
.end method

.method public setHandlers([Lorg/eclipse/jetty/server/Handler;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_mutableWhenRunning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STARTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 83
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    .line 85
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v3

    .line 86
    new-instance v4, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v4}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    move v2, v1

    .line 87
    :goto_1
    if-eqz p1, :cond_3

    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 89
    aget-object v5, p1, v2

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Handler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v5

    if-eq v5, v3, :cond_1

    .line 90
    aget-object v5, p1, v2

    invoke-interface {v5, v3}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/server/Handler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Handler;

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 94
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v2

    const-string v3, "handler"

    invoke-virtual {v2, p0, v0, p1, v3}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    move v2, v1

    .line 97
    :goto_2
    if-eqz v0, :cond_6

    array-length v1, v0

    if-ge v2, v1, :cond_6

    .line 99
    aget-object v1, v0, v2

    if-eqz v1, :cond_5

    .line 103
    :try_start_0
    aget-object v1, v0, v2

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Handler;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    aget-object v1, v0, v2

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Handler;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_5
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 106
    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowRuntime()V

    .line 114
    return-void
.end method

.method public setParallelStart(Z)V
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    .line 136
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STARTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    .line 264
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 266
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    .line 267
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 268
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 271
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    const-string v3, "handler"

    invoke-virtual {v0, p0, v1, v2, v3}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    :cond_2
    return-void
.end method
