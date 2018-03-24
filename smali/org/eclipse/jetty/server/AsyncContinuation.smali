.class public Lorg/eclipse/jetty/server/AsyncContinuation;
.super Ljava/lang/Object;
.source "AsyncContinuation.java"

# interfaces
.implements Lc/c/a;
.implements Lorg/eclipse/jetty/continuation/Continuation;


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x7530L

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __ASYNCSTARTED:I = 0x2

.field private static final __ASYNCWAIT:I = 0x4

.field private static final __COMPLETED:I = 0x9

.field private static final __COMPLETING:I = 0x7

.field private static final __DISPATCHED:I = 0x1

.field private static final __IDLE:I = 0x0

.field private static final __REDISPATCH:I = 0x5

.field private static final __REDISPATCHED:I = 0x6

.field private static final __REDISPATCHING:I = 0x3

.field private static final __UNCOMPLETED:I = 0x8

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private _asyncListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/c/c;",
            ">;"
        }
    .end annotation
.end field

.field protected _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private volatile _continuation:Z

.field private _continuationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private _event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

.field private volatile _expireAt:J

.field private _expired:Z

.field private _initial:Z

.field private _lastAsyncListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _responseWrapped:Z

.field private _resumed:Z

.field private _state:I

.field private _timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 57
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 105
    return-void
.end method

.method private doSuspend(Lc/c/s;Lc/c/ac;Lc/c/ai;)V
    .locals 3

    .prologue
    .line 346
    monitor-enter p0

    .line 348
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v0, :sswitch_data_0

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :sswitch_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 355
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Lc/c/ac;

    move-result-object v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Lc/c/ai;

    move-result-object v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Lc/c/s;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 356
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;Lc/c/s;Lc/c/ac;Lc/c/ai;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 362
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    .line 364
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    iput-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    .line 365
    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 366
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c;

    .line 381
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v0, v2}, Lc/c/c;->onStartAsync(Lc/c/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 383
    :catch_0
    move-exception v0

    .line 385
    sget-object v2, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 359
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Lc/c/s;)Lc/c/s;

    .line 360
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 389
    :cond_3
    return-void

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addListener(Lc/c/c;)V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addListener(Lc/c/c;Lc/c/ac;Lc/c/ai;)V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 689
    monitor-enter p0

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 693
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected cancelTimeout()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 748
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    monitor-enter p0

    .line 752
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    .line 753
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 754
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 758
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 759
    if-eqz v1, :cond_0

    .line 761
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-static {v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    goto :goto_0
.end method

.method public complete()V
    .locals 2

    .prologue
    .line 555
    .line 556
    monitor-enter p0

    .line 558
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 574
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 562
    :pswitch_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :pswitch_2
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 566
    monitor-exit p0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 569
    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 570
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 576
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 581
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 570
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createListener(Ljava/lang/Class;)Lc/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/c/c;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 592
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 594
    :catch_0
    move-exception v0

    .line 596
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dispatch()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 447
    .line 448
    monitor-enter p0

    .line 450
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v1, :pswitch_data_0

    .line 467
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 453
    :pswitch_1
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 455
    monitor-exit p0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 458
    :pswitch_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-nez v1, :cond_1

    .line 459
    :goto_1
    const/4 v1, 0x5

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 460
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 469
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 474
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 464
    :pswitch_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatch(Lc/c/s;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Lc/c/s;)Lc/c/s;

    .line 837
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v0, p2}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 838
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 839
    return-void
.end method

.method public dispatch(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 845
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 846
    return-void
.end method

.method protected doComplete(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 609
    monitor-enter p0

    .line 611
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 614
    :pswitch_0
    const/16 v0, 0x9

    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 615
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 616
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 624
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    if-eqz v0, :cond_1

    .line 628
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c;

    .line 632
    if-eqz p1, :cond_0

    .line 634
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Lc/c/ac;

    move-result-object v3

    const-string v4, "javax.servlet.error.exception"

    invoke-interface {v3, v4, p1}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Lc/c/ac;

    move-result-object v3

    const-string v4, "javax.servlet.error.message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 636
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v0, v3}, Lc/c/c;->onError(Lc/c/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 643
    sget-object v3, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 639
    :cond_0
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v0, v3}, Lc/c/c;->onComplete(Lc/c/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 647
    :cond_1
    if-eqz v1, :cond_2

    .line 649
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 653
    :try_start_4
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 655
    :catch_1
    move-exception v0

    .line 657
    sget-object v2, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 661
    :cond_2
    return-void

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method protected expired()V
    .locals 4

    .prologue
    .line 483
    monitor-enter p0

    .line 485
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 493
    :pswitch_0
    monitor-exit p0

    .line 546
    :goto_0
    return-void

    .line 489
    :pswitch_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 490
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 497
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 498
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c;

    .line 506
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v0, v3}, Lc/c/c;->onTimeout(Lc/c/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 508
    :catch_0
    move-exception v0

    .line 510
    sget-object v3, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 514
    :cond_0
    if-eqz v1, :cond_1

    .line 516
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 520
    :try_start_2
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 522
    :catch_1
    move-exception v0

    .line 524
    sget-object v2, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 531
    :cond_1
    monitor-enter p0

    .line 533
    :try_start_3
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_1

    .line 543
    :goto_3
    :pswitch_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 545
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 537
    :pswitch_3
    :try_start_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 543
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 541
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->complete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 533
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAsyncEventState()Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBaseRequest()Lorg/eclipse/jetty/server/Request;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    return-object v0
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 899
    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Lc/c/s;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 901
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequest()Lc/c/ac;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Lc/c/ac;

    move-result-object v0

    .line 859
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponse()Lc/c/ai;
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Lc/c/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Lc/c/ai;

    move-result-object v0

    .line 867
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public getServletResponse()Lc/c/ai;
    .locals 1

    .prologue
    .line 984
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Lc/c/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Lc/c/ai;

    move-result-object v0

    .line 986
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    monitor-enter p0

    .line 276
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-nez v0, :cond_0

    const-string v0, "IDLE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    if-eqz v0, :cond_a

    const-string v0, ",initial"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    if-eqz v0, :cond_b

    const-string v0, ",resumed"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-eqz v0, :cond_c

    const-string v0, ",expired"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "DISPATCHED"

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "ASYNCSTARTED"

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const-string v0, "ASYNCWAIT"

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const-string v0, "REDISPATCHING"

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    const-string v0, "REDISPATCH"

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    const-string v0, "REDISPATCHED"

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    const-string v0, "COMPLETING"

    goto :goto_0

    :cond_7
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    const-string v0, "UNCOMPLETED"

    goto :goto_0

    :cond_8
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_9

    const-string v0, "COMPLETE"

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOWN?"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, ""

    goto :goto_1

    :cond_b
    const-string v0, ""

    goto :goto_2

    :cond_c
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    .line 164
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handling()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    monitor-enter p0

    .line 302
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 303
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 305
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 333
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 308
    :pswitch_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 309
    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 310
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 312
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 319
    :goto_0
    monitor-exit p0

    .line 330
    :goto_1
    return v0

    .line 316
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    iput-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    goto :goto_0

    .line 322
    :pswitch_2
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 323
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1

    .line 326
    :pswitch_3
    monitor-exit p0

    move v0, v1

    goto :goto_1

    .line 329
    :pswitch_4
    const/4 v1, 0x6

    :try_start_2
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 330
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hasOriginalRequestAndResponse()Z
    .locals 2

    .prologue
    .line 889
    monitor-enter p0

    .line 891
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Lc/c/ac;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Lc/c/ai;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAsync()Z
    .locals 1

    .prologue
    .line 817
    monitor-enter p0

    .line 819
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    .line 828
    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    .line 825
    :sswitch_0
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isAsyncStarted()Z
    .locals 1

    .prologue
    .line 797
    monitor-enter p0

    .line 799
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 808
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 805
    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 787
    monitor-enter p0

    .line 789
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCompleting()Z
    .locals 2

    .prologue
    .line 769
    monitor-enter p0

    .line 771
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDispatchable()Z
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    .line 247
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 256
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 253
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 922
    monitor-enter p0

    .line 924
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 925
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 911
    monitor-enter p0

    .line 913
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    .line 211
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 220
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 217
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSuspending()Z
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    .line 230
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 237
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 234
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isUncompleted()Z
    .locals 2

    .prologue
    .line 778
    monitor-enter p0

    .line 780
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected recycle()V
    .locals 2

    .prologue
    .line 666
    monitor-enter p0

    .line 668
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v0, :sswitch_data_0

    .line 674
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 680
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 681
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 683
    monitor-exit p0

    return-void

    .line 672
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 668
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/Request;->removeAttribute(Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 934
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 935
    return-void
.end method

.method protected scheduleDispatch()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 700
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 704
    :cond_0
    return-void
.end method

.method protected scheduleTimeout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 709
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 710
    iget-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 712
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 714
    monitor-enter p0

    .line 716
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    .line 717
    iget-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 718
    :goto_0
    iget-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    :goto_1
    :try_start_2
    iget-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 726
    sget-object v1, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 731
    :cond_0
    :try_start_3
    iget-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    .line 735
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 742
    :cond_2
    :goto_2
    return-void

    .line 739
    :cond_3
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1014
    return-void
.end method

.method protected setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    .line 112
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTimeout(J)V
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    .line 155
    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 156
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 874
    if-eqz v0, :cond_0

    .line 876
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jetty/server/d;

    invoke-direct {v2, p0, v0, p1}, Lorg/eclipse/jetty/server/d;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 884
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 975
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Lc/c/s;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Lc/c/s;Lc/c/ac;Lc/c/ai;)V

    .line 976
    return-void
.end method

.method public suspend(Lc/c/ai;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 962
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 963
    instance-of v1, p1, Lorg/eclipse/jetty/server/Response;

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 964
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Lc/c/s;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Lc/c/s;Lc/c/ac;Lc/c/ai;)V

    .line 965
    return-void

    .line 963
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected suspend(Lc/c/s;Lc/c/ac;Lc/c/ai;)V
    .locals 4

    .prologue
    .line 944
    monitor-enter p0

    .line 946
    :try_start_0
    instance-of v1, p3, Lorg/eclipse/jetty/server/Response;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 947
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Lc/c/s;Lc/c/ac;Lc/c/ai;)V

    .line 948
    instance-of v1, p2, Lc/c/c/c;

    if-eqz v1, :cond_0

    .line 950
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    move-object v0, p2

    check-cast v0, Lc/c/c/c;

    move-object v1, v0

    invoke-interface {v1}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lc/c/c/c;

    invoke-interface {p2}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 952
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 946
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    monitor-enter p0

    .line 267
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 1022
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    sget-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 1027
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 1029
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unhandle()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 401
    monitor-enter p0

    .line 403
    :try_start_0
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 439
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 407
    :pswitch_1
    const/16 v1, 0x8

    :try_start_1
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 408
    monitor-exit p0

    .line 436
    :goto_0
    return v0

    .line 411
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 415
    const/4 v2, 0x4

    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 416
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleTimeout()V

    .line 417
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-ne v2, v3, :cond_0

    .line 418
    monitor-exit p0

    goto :goto_0

    .line 419
    :cond_0
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 421
    const/16 v1, 0x8

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 422
    monitor-exit p0

    goto :goto_0

    .line 424
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 425
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 426
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 429
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 430
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 431
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 434
    :pswitch_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 435
    const/16 v1, 0x8

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 436
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
