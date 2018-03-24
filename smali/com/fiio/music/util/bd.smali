.class public final Lcom/fiio/music/util/bd;
.super Ljava/lang/Object;
.source "MaliciousUtils.java"


# static fields
.field private static a:J

.field private static b:J


# direct methods
.method public static declared-synchronized a()Z
    .locals 8

    .prologue
    .line 9
    const-class v1, Lcom/fiio/music/util/bd;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11
    sget-wide v4, Lcom/fiio/music/util/bd;->a:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x320

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 12
    sput-wide v2, Lcom/fiio/music/util/bd;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v0, 0x1

    .line 16
    :goto_0
    monitor-exit v1

    return v0

    .line 15
    :cond_0
    :try_start_1
    sput-wide v2, Lcom/fiio/music/util/bd;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(I)Z
    .locals 8

    .prologue
    .line 20
    const-class v1, Lcom/fiio/music/util/bd;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u6309\u952e\u95f4\u9694="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/fiio/music/util/bd;->b:J

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;)V

    .line 22
    sget-wide v4, Lcom/fiio/music/util/bd;->b:J

    sub-long v4, v2, v4

    int-to-long v6, p0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 23
    sput-wide v2, Lcom/fiio/music/util/bd;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v0, 0x1

    .line 27
    :goto_0
    monitor-exit v1

    return v0

    .line 26
    :cond_0
    :try_start_1
    sput-wide v2, Lcom/fiio/music/util/bd;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
