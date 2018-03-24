.class final Lf/d;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 302
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/d;->setDaemon(Z)V

    .line 304
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 310
    :goto_0
    :try_start_0
    const-class v1, Lf/a;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :try_start_1
    invoke-static {}, Lf/a;->e()Lf/a;

    move-result-object v0

    .line 314
    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0

    .line 318
    :cond_0
    :try_start_3
    invoke-static {}, Lf/a;->f()Lf/a;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 319
    invoke-static {}, Lf/a;->g()Lf/a;

    .line 320
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 322
    :cond_1
    :try_start_4
    monitor-exit v1

    .line 325
    invoke-virtual {v0}, Lf/a;->a()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
