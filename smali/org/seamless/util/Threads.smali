.class public Lorg/seamless/util/Threads;
.super Ljava/lang/Object;
.source "Threads.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllThreads()[Ljava/lang/Thread;
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lorg/seamless/util/Threads;->getRootThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    .line 35
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getThreadCount()I

    move-result v0

    .line 40
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 41
    new-array v2, v0, [Ljava/lang/Thread;

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v3

    .line 43
    if-eq v3, v0, :cond_0

    .line 44
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread;

    return-object v0
.end method

.method public static getRootThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method

.method public static getThread(J)Ljava/lang/Thread;
    .locals 6

    .prologue
    .line 48
    invoke-static {}, Lorg/seamless/util/Threads;->getAllThreads()[Ljava/lang/Thread;

    move-result-object v2

    .line 49
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 52
    :goto_1
    return-object v0

    .line 49
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
