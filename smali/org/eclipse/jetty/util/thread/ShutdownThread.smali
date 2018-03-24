.class public Lorg/eclipse/jetty/util/thread/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final _thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;


# instance fields
.field private _hooked:Z

.field private final _lifeCycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/component/LifeCycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 40
    new-instance v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    .line 53
    return-void
.end method

.method public static declared-synchronized deregister(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 2

    .prologue
    .line 116
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->unhook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    monitor-exit v1

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lorg/eclipse/jetty/util/thread/ShutdownThread;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    return-object v0
.end method

.method private declared-synchronized hook()V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 67
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "shutdown already commenced"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static varargs declared-synchronized register(I[Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 3

    .prologue
    .line 108
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 109
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->hook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit v1

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized register([Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 3

    .prologue
    .line 100
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->hook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit v1

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized unhook()V
    .locals 3

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z

    .line 77
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 82
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "shutdown already commenced"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 125
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 129
    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    .line 132
    sget-object v2, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Stopped {}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    sget-object v2, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method
