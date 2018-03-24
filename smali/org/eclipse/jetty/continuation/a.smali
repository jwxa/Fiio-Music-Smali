.class final Lorg/eclipse/jetty/continuation/a;
.super Ljava/lang/Object;
.source "FauxContinuation.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;


# static fields
.field private static final a:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private final b:Lc/c/ac;

.field private c:Lc/c/ai;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/continuation/a;->a:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method constructor <init>(Lc/c/ac;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v1, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 55
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/a;->e:Z

    .line 56
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->f:Z

    .line 57
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->g:Z

    .line 58
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->h:Z

    .line 59
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/continuation/a;->i:J

    .line 65
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/a;->b:Lc/c/ac;

    .line 66
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 73
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/continuation/a;->i:J

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 431
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 441
    monitor-enter p0

    .line 443
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "HANDLING"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->e:Z

    if-eqz v0, :cond_6

    const-string v0, ",initial"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->f:Z

    if-eqz v0, :cond_7

    const-string v0, ",resumed"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->g:Z

    if-eqz v0, :cond_8

    const-string v0, ",timeout"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "SUSPENDING"

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    const-string v0, "SUSPENDED"

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v0, "RESUMING"

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    const-string v0, "UNSUSPENDING"

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const-string v0, "COMPLETING"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "???"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, ""

    goto :goto_1

    :cond_7
    const-string v0, ""

    goto :goto_2

    :cond_8
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/a;->j:Ljava/util/ArrayList;

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method public final complete()V
    .locals 2

    .prologue
    .line 230
    monitor-enter p0

    .line 232
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 235
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 258
    :goto_0
    :pswitch_2
    monitor-exit p0

    :goto_1
    return-void

    .line 245
    :pswitch_3
    monitor-exit p0

    goto :goto_1

    .line 248
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 249
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->b()V

    goto :goto_0

    .line 253
    :pswitch_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final enter(Lc/c/ai;)Z
    .locals 1

    .prologue
    .line 267
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/a;->c:Lc/c/ai;

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public final exit()Z
    .locals 13

    .prologue
    const/4 v12, 0x5

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 318
    monitor-enter p0

    .line 320
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 355
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 323
    :pswitch_0
    const/4 v0, 0x7

    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 324
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->a()V

    .line 325
    monitor-exit p0

    move v0, v1

    .line 350
    :goto_0
    return v0

    .line 328
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->e:Z

    .line 329
    const/4 v0, 0x5

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/eclipse/jetty/continuation/a;->i:J

    add-long/2addr v6, v4

    iget-wide v4, p0, Lorg/eclipse/jetty/continuation/a;->i:J

    :goto_1
    iget-wide v8, p0, Lorg/eclipse/jetty/continuation/a;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    cmp-long v0, v4, v10

    if-lez v0, :cond_0

    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v6, v4

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_0
    iget-wide v6, p0, Lorg/eclipse/jetty/continuation/a;->i:J

    cmp-long v0, v6, v10

    if-lez v0, :cond_2

    cmp-long v0, v4, v10

    if-gtz v0, :cond_2

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->g:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :pswitch_2
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 331
    :cond_2
    :goto_3
    :try_start_9
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    if-eq v0, v12, :cond_3

    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 333
    :cond_3
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->a()V

    .line 334
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v0, v1

    goto :goto_0

    .line 330
    :pswitch_3
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->g:Z

    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->b()V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :pswitch_4
    :try_start_b
    monitor-exit p0

    goto :goto_3

    :pswitch_5
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :pswitch_6
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->g:Z

    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    monitor-exit p0

    goto :goto_3

    :pswitch_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->g:Z

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 337
    :cond_4
    const/4 v0, 0x0

    :try_start_d
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->e:Z

    .line 338
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 339
    monitor-exit p0

    move v0, v2

    goto/16 :goto_0

    .line 342
    :pswitch_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->e:Z

    .line 343
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 344
    monitor-exit p0

    move v0, v2

    goto/16 :goto_0

    .line 347
    :pswitch_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->e:Z

    .line 348
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 349
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->a()V

    .line 350
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move v0, v1

    goto/16 :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 330
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->b:Lc/c/ac;

    invoke-interface {v0, p1}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getServletResponse()Lc/c/ai;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->c:Lc/c/ai;

    return-object v0
.end method

.method public final isExpired()Z
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->g:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isInitial()Z
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isResponseWrapped()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->h:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isSuspended()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 114
    monitor-enter p0

    .line 116
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/continuation/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 127
    monitor-exit p0

    :goto_0
    return v0

    .line 119
    :pswitch_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :pswitch_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->b:Lc/c/ac;

    invoke-interface {v0, p1}, Lc/c/ac;->removeAttribute(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public final resume()V
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    .line 193
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 196
    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->f:Z

    .line 197
    monitor-exit p0

    .line 221
    :goto_0
    return-void

    .line 200
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->f:Z

    .line 201
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 202
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :pswitch_2
    monitor-exit p0

    goto :goto_0

    .line 209
    :pswitch_3
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->b()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->f:Z

    .line 211
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 221
    monitor-exit p0

    goto :goto_0

    .line 215
    :pswitch_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->f:Z

    .line 216
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/a;->b:Lc/c/ac;

    invoke-interface {v0, p1, p2}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public final setTimeout(J)V
    .locals 1

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/eclipse/jetty/continuation/a;->i:J

    .line 145
    return-void
.end method

.method public final suspend()V
    .locals 3

    .prologue
    .line 158
    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->g:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->f:Z

    .line 165
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/continuation/a;->d:I

    .line 166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_0
    return-void

    :pswitch_1
    monitor-exit p0

    goto :goto_0

    .line 175
    :pswitch_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final suspend(Lc/c/ai;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/a;->c:Lc/c/ai;

    .line 151
    instance-of v0, p1, Lc/c/aj;

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/a;->h:Z

    .line 152
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/a;->suspend()V

    .line 153
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final undispatch()V
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/a;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 503
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/continuation/a;->a:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 505
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
