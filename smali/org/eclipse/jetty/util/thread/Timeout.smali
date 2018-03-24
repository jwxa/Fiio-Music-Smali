.class public Lorg/eclipse/jetty/util/thread/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _duration:J

.field private _head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field private _lock:Ljava/lang/Object;

.field private volatile _now:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/thread/Timeout;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    .line 40
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    .line 40
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 52
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 54
    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/util/thread/Timeout;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/util/thread/Timeout;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v3, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v3, v2, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v3, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 199
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public expired()Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-wide v4, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    iget-wide v6, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_duration:J

    sub-long/2addr v4, v6

    .line 106
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v3, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eq v1, v3, :cond_1

    .line 108
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 109
    iget-wide v6, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 110
    monitor-exit v2

    .line 116
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-static {v1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->access$000(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    .line 114
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 116
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_duration:J

    return-wide v0
.end method

.method public getNow()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    return-wide v0
.end method

.method public getTimeToNext()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 214
    iget-object v4, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v2, v2, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v3, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-ne v2, v3, :cond_0

    .line 217
    const-wide/16 v0, -0x1

    monitor-exit v4

    .line 219
    :goto_0
    return-wide v0

    .line 218
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_duration:J

    iget-object v5, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v5, v5, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-wide v6, v5, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    add-long/2addr v2, v6

    iget-wide v6, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    sub-long/2addr v2, v6

    .line 219
    cmp-long v5, v2, v0

    if-gez v5, :cond_1

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    move-wide v0, v2

    .line 219
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 2

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 160
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 169
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-wide v2, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 173
    invoke-static {p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->access$000(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 174
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    .line 176
    :cond_0
    iput-object p0, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    .line 178
    iput-wide p2, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_delay:J

    .line 179
    iget-wide v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    add-long/2addr v2, p2

    iput-wide v2, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 182
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eq v0, v2, :cond_1

    .line 184
    iget-wide v2, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    iget-wide v4, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 185
    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->access$100(Lorg/eclipse/jetty/util/thread/Timeout$Task;Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 189
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_duration:J

    .line 72
    return-void
.end method

.method public setNow()J
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    return-wide v0
.end method

.method public setNow(J)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    .line 90
    return-void
.end method

.method public tick()V
    .locals 6

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    iget-wide v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_duration:J

    sub-long v2, v0, v2

    .line 130
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 133
    iget-object v4, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eq v0, v4, :cond_0

    iget-wide v4, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 134
    :cond_0
    monitor-exit v1

    return-void

    .line 135
    :cond_1
    invoke-static {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->access$000(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 136
    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    .line 137
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->expire()V

    .line 138
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->expired()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lorg/eclipse/jetty/util/thread/Timeout;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "EXCEPTION "

    invoke-interface {v1, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public tick(J)V
    .locals 1

    .prologue
    .line 152
    iput-wide p1, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_now:J

    .line 153
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/Timeout;->tick()V

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 231
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout;->_head:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eq v0, v2, :cond_0

    .line 233
    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 235
    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
