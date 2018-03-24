.class public Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;
.super Ljava/lang/Object;
.source "DefaultUpnpServiceConfiguration.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field protected final group:Ljava/lang/ThreadGroup;

.field protected final namePrefix:Ljava/lang/String;

.field protected final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 352
    const-string v0, "cling-"

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;->namePrefix:Ljava/lang/String;

    .line 355
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;->group:Ljava/lang/ThreadGroup;

    .line 357
    return-void

    .line 356
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 360
    new-instance v0, Ljava/lang/Thread;

    .line 361
    iget-object v1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;->group:Ljava/lang/ThreadGroup;

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cling-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    const-wide/16 v4, 0x0

    move-object v2, p1

    .line 360
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 367
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 368
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 370
    :cond_1
    return-object v0
.end method
