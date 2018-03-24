.class public Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# instance fields
.field private _busySelects:I

.field private final _changes:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _endPoints:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _idleTick:J

.field private _monitorNext:J

.field private _paused:Z

.field private _pausing:Z

.field private volatile _selecting:Ljava/lang/Thread;

.field private volatile _selector:Ljava/nio/channels/Selector;

.field private final _setID:I

.field private final _timeout:Lorg/eclipse/jetty/util/thread/Timeout;

.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V
    .locals 4

    .prologue
    .line 408
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 404
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    .line 409
    iput p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_setID:I

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    .line 412
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 416
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    .line 418
    return-void
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$900(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->renewSelector()V

    return-void
.end method

.method private createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 5

    .prologue
    .line 841
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0, p1, p0, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v0

    .line 842
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "created {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 844
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    return-object v0
.end method

.method private renewSelector()V
    .locals 4

    .prologue
    .line 754
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 757
    if-nez v0, :cond_0

    .line 758
    monitor-exit p0

    .line 775
    :goto_0
    return-void

    .line 759
    :cond_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    .line 760
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 762
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    .line 766
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 768
    if-nez v0, :cond_2

    .line 769
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 775
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 780
    :catch_0
    move-exception v0

    .line 779
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "recreating selector"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 771
    :cond_2
    :try_start_3
    invoke-virtual {p0, v3, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    goto :goto_1

    .line 773
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 774
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 775
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addChange(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 429
    if-nez p2, :cond_0

    .line 430
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 435
    :goto_0
    return-void

    .line 431
    :cond_0
    instance-of v0, p2, Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/e;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/e;-><init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0

    .prologue
    .line 812
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 813
    return-void
.end method

.method public destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 4

    .prologue
    .line 851
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "destroyEndPoint {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 854
    return-void
.end method

.method public doSelect()V
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 447
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    .line 448
    iget-object v12, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-nez v12, :cond_0

    .line 744
    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    .line 745
    :goto_0
    return-void

    .line 455
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    .line 456
    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_a

    .line 463
    :try_start_2
    instance-of v3, v2, Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v3, :cond_1

    .line 466
    check-cast v2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 467
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 468
    :try_start_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->doUpdateKey()V
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v4

    .line 469
    goto :goto_1

    .line 470
    :cond_1
    :try_start_4
    instance-of v3, v2, Lorg/eclipse/jetty/io/nio/e;

    if-eqz v3, :cond_4

    .line 473
    check-cast v2, Lorg/eclipse/jetty/io/nio/e;

    .line 474
    iget-object v3, v2, Lorg/eclipse/jetty/io/nio/e;->a:Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 476
    :try_start_5
    iget-object v6, v2, Lorg/eclipse/jetty/io/nio/e;->b:Ljava/lang/Object;

    .line 478
    instance-of v2, v3, Ljava/nio/channels/SocketChannel;

    if-eqz v2, :cond_2

    move-object v0, v3

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 480
    const/4 v2, 0x1

    invoke-virtual {v3, v12, v2, v6}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    .line 481
    move-object v0, v3

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v2, v0

    invoke-direct {p0, v2, v6}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v2

    .line 482
    invoke-virtual {v6, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V

    move v2, v4

    .line 484
    goto :goto_1

    .line 485
    :cond_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    const/16 v2, 0x8

    invoke-virtual {v3, v12, v2, v6}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    move v2, v4

    .line 489
    goto :goto_1

    .line 490
    :cond_4
    :try_start_6
    instance-of v3, v2, Ljava/nio/channels/SocketChannel;

    if-eqz v3, :cond_5

    .line 493
    check-cast v2, Ljava/nio/channels/SocketChannel;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 495
    const/4 v3, 0x1

    const/4 v6, 0x0

    :try_start_7
    invoke-virtual {v2, v12, v3, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 496
    invoke-direct {p0, v2, v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v6

    .line 497
    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v2, v4

    .line 499
    goto :goto_1

    .line 500
    :cond_5
    :try_start_8
    instance-of v3, v2, Lorg/eclipse/jetty/io/nio/d;

    if-eqz v3, :cond_6

    .line 502
    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move v2, v4

    goto :goto_1

    .line 504
    :cond_6
    instance-of v3, v2, Ljava/lang/Runnable;

    if-eqz v3, :cond_7

    .line 506
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    move v2, v4

    goto/16 :goto_1

    .line 509
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 531
    :catch_0
    move-exception v2

    .line 513
    :try_start_9
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move v2, v4

    .line 531
    goto/16 :goto_1

    .line 515
    :catch_1
    move-exception v2

    move-object v3, v5

    .line 517
    :goto_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 518
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 524
    :goto_3
    if-eqz v3, :cond_8

    .line 525
    :try_start_a
    invoke-interface {v3}, Ljava/nio/channels/Channel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_8
    move v2, v4

    .line 530
    goto/16 :goto_1

    .line 520
    :cond_9
    :try_start_b
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 731
    :catch_2
    move-exception v2

    .line 733
    :try_start_c
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 734
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 744
    :goto_4
    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto/16 :goto_0

    .line 527
    :catch_3
    move-exception v2

    .line 529
    :try_start_d
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    move v2, v4

    .line 532
    goto/16 :goto_1

    .line 536
    :cond_a
    invoke-virtual {v12}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v4

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 541
    if-nez v4, :cond_b

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 544
    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z
    :try_end_d
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v4, :cond_1f

    .line 548
    :try_start_e
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$200()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 554
    :goto_5
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v10, v2

    .line 558
    :goto_6
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2, v10, v11}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 559
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->getTimeToNext()J

    move-result-wide v2

    .line 561
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$300()I

    move-result v4

    int-to-long v6, v4

    .line 562
    :goto_7
    cmp-long v4, v6, v8

    if-lez v4, :cond_1e

    cmp-long v4, v2, v8

    if-ltz v4, :cond_1e

    cmp-long v4, v6, v2

    if-lez v4, :cond_1e

    .line 566
    :goto_8
    cmp-long v4, v2, v8

    if-lez v4, :cond_b

    .line 569
    invoke-virtual {v12, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 571
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v4, v2, v3}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 575
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v4

    if-lez v4, :cond_b

    sub-long/2addr v2, v10

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-gtz v2, :cond_b

    .line 578
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$400()I

    move-result v3

    if-le v2, v3, :cond_b

    .line 581
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z

    .line 584
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_paused:Z

    if-nez v2, :cond_b

    .line 587
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_paused:Z

    .line 588
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Selector {} is too busy, pausing!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_b
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_c

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->isOpen()Z
    :try_end_f
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result v2

    if-nez v2, :cond_e

    .line 744
    :cond_c
    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto/16 :goto_0

    .line 550
    :catch_4
    move-exception v2

    .line 552
    :try_start_10
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_5

    .line 738
    :catch_5
    move-exception v2

    .line 740
    :try_start_11
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 744
    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto/16 :goto_0

    :cond_d
    move-wide v6, v8

    .line 561
    goto :goto_7

    .line 600
    :cond_e
    :try_start_12
    invoke-virtual {v12}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;
    :try_end_12
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 606
    :try_start_13
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_10

    .line 608
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 609
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 610
    if-eqz v3, :cond_f

    .line 611
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->doUpdateKey()V
    :try_end_13
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_9

    .line 660
    :catch_6
    move-exception v2

    .line 662
    :try_start_14
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_9

    .line 744
    :catchall_0
    move-exception v2

    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    throw v2

    .line 615
    :cond_10
    :try_start_15
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    .line 616
    instance-of v4, v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v4, :cond_13

    .line 618
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 619
    :cond_11
    check-cast v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_15
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_9

    .line 664
    :catch_7
    move-exception v3

    move-object v4, v5

    .line 666
    :goto_a
    :try_start_16
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 667
    sget-object v7, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 673
    :goto_b
    if-eqz v4, :cond_12

    .line 674
    :try_start_17
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 681
    :cond_12
    :goto_c
    if-eqz v2, :cond_f

    :try_start_18
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    instance-of v3, v3, Ljava/nio/channels/ServerSocketChannel;

    if-nez v3, :cond_f

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 682
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_18
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_9

    .line 621
    :cond_13
    :try_start_19
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 624
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SocketChannel;
    :try_end_19
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 625
    :try_start_1a
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->finishConnect()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-result v3

    .line 636
    if-eqz v3, :cond_14

    .line 638
    const/4 v3, 0x1

    :try_start_1b
    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 639
    invoke-direct {p0, v4, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v3

    .line 640
    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V

    goto/16 :goto_9

    .line 664
    :catch_8
    move-exception v3

    goto :goto_a

    .line 645
    :cond_14
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_9

    .line 630
    :catch_9
    move-exception v7

    .line 632
    :try_start_1c
    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v10, v4, v7, v3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 636
    :try_start_1d
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto/16 :goto_9

    :catchall_1
    move-exception v3

    .line 638
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    throw v3
    :try_end_1d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1d .. :try_end_1d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1d .. :try_end_1d} :catch_2
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 648
    :cond_15
    :try_start_1e
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SocketChannel;
    :try_end_1e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1e .. :try_end_1e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 653
    :try_start_1f
    invoke-direct {p0, v3, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v4

    .line 654
    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 656
    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_1f
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_9

    .line 664
    :catch_a
    move-exception v4

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    goto :goto_a

    .line 669
    :cond_16
    :try_start_20
    sget-object v7, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 676
    :catch_b
    move-exception v3

    .line 678
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 687
    :cond_17
    invoke-virtual {v12}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 690
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2, v6, v7}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 691
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->expired()Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v2

    .line 692
    :goto_d
    if-eqz v2, :cond_19

    .line 694
    instance-of v3, v2, Ljava/lang/Runnable;

    if-eqz v3, :cond_18

    .line 695
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 696
    :cond_18
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->expired()Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v2

    goto :goto_d

    .line 700
    :cond_19
    iget-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    sub-long v2, v6, v2

    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$300()I

    move-result v4

    int-to-long v10, v4

    cmp-long v2, v2, v10

    if-lez v2, :cond_1a

    .line 702
    iput-wide v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    .line 704
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$500(Lorg/eclipse/jetty/io/nio/SelectorManager;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1c

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$500(Lorg/eclipse/jetty/io/nio/SelectorManager;)J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-lez v2, :cond_1c

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$600(Lorg/eclipse/jetty/io/nio/SelectorManager;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v6

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$700(Lorg/eclipse/jetty/io/nio/SelectorManager;)I

    move-result v4

    int-to-long v8, v4

    sub-long/2addr v2, v8

    .line 708
    :goto_e
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    new-instance v8, Lorg/eclipse/jetty/io/nio/f;

    invoke-direct {v8, p0, v2, v3}, Lorg/eclipse/jetty/io/nio/f;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;J)V

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 723
    :cond_1a
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v2

    if-lez v2, :cond_1b

    iget-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    cmp-long v2, v6, v2

    if-lez v2, :cond_1b

    .line 725
    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    .line 726
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z

    .line 727
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J
    :try_end_20
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 744
    :cond_1b
    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto/16 :goto_0

    :cond_1c
    move-wide v2, v6

    .line 704
    goto :goto_e

    .line 736
    :cond_1d
    :try_start_21
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_4

    .line 515
    :catch_c
    move-exception v2

    goto/16 :goto_2

    :catch_d
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_2

    :cond_1e
    move-wide v2, v6

    goto/16 :goto_8

    :cond_1f
    move-wide v10, v2

    goto/16 :goto_6
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 928
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, " id="

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_setID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 930
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    .line 932
    const-string v1, "not selecting"

    .line 933
    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v4, v0

    .line 934
    :goto_0
    if-eqz v4, :cond_3

    .line 936
    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 937
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "org.eclipse.jetty."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 944
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 945
    if-eqz v1, :cond_0

    .line 947
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 948
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 952
    new-instance v1, Lorg/eclipse/jetty/io/nio/h;

    invoke-direct {v1, p0, v2, v0}, Lorg/eclipse/jetty/io/nio/h;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 963
    const-wide/16 v4, 0x5

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_3
    new-array v0, v8, [Ljava/util/Collection;

    aput-object v2, v0, v3

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 972
    :cond_0
    return-void

    .line 933
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 936
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 965
    :catch_0
    move-exception v0

    .line 967
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public dumpKeyState(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 978
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " keys="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 982
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iOps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rOps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 985
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " iOps=-1 rOps=-1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 987
    :cond_1
    return-void
.end method

.method public getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    return-object v0
.end method

.method public getNow()J
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->getNow()J

    move-result-wide v0

    return-wide v0
.end method

.method getSelector()Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 2

    .prologue
    .line 804
    instance-of v0, p1, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "!Runnable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 807
    return-void
.end method

.method stop()V
    .locals 4

    .prologue
    .line 869
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 871
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 872
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 877
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 881
    :cond_0
    monitor-enter p0

    .line 883
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 884
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 886
    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 889
    instance-of v2, v0, Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_1

    .line 891
    check-cast v0, Lorg/eclipse/jetty/io/EndPoint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    :try_start_2
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 896
    :catch_1
    move-exception v0

    .line 898
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 904
    :cond_2
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 907
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 908
    if-eqz v0, :cond_3

    .line 909
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 915
    :cond_3
    :goto_2
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 916
    monitor-exit p0

    return-void

    .line 911
    :catch_2
    move-exception v0

    .line 913
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 992
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 993
    const-string v3, "%s keys=%d selected=%d"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public wakeup()V
    .locals 1

    .prologue
    .line 820
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 821
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    new-instance v0, Lorg/eclipse/jetty/io/nio/g;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/g;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 834
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->renewSelector()V

    goto :goto_0
.end method
