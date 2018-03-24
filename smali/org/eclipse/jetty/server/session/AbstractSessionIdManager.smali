.class public abstract Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "AbstractSessionIdManager.java"

# interfaces
.implements Lorg/eclipse/jetty/server/SessionIdManager;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __NEW_SESSION_ID:Ljava/lang/String; = "org.eclipse.jetty.server.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field protected _weakRandom:Z

.field protected _workerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 50
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->initRandom()V

    .line 151
    return-void
.end method

.method protected doStop()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-object v0
.end method

.method public initRandom()V
    .locals 6

    .prologue
    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 171
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Could not generate SecureRandom for session-id randomness"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v4, v1

    xor-long/2addr v2, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    goto :goto_0
.end method

.method public newSessionId(Lc/c/c/c;J)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x20

    .line 100
    monitor-enter p0

    .line 102
    if-eqz p1, :cond_1

    .line 105
    :try_start_0
    invoke-interface {p1}, Lc/c/c/c;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    monitor-exit p0

    .line 142
    :goto_0
    return-object v0

    .line 114
    :cond_0
    const-string v0, "org.eclipse.jetty.server.newSessionId"

    invoke-interface {p1, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    .line 121
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    xor-long/2addr v0, v2

    .line 126
    :goto_2
    cmp-long v2, v0, v8

    if-gez v2, :cond_8

    .line 127
    neg-long v0, v0

    move-wide v2, v0

    .line 128
    :goto_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    xor-long/2addr v0, v4

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v0, v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 131
    :goto_4
    cmp-long v4, v0, v8

    if-gez v4, :cond_4

    .line 132
    neg-long v0, v0

    .line 133
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x24

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 123
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_2

    .line 128
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_4

    .line 141
    :cond_7
    const-string v1, "org.eclipse.jetty.server.newSessionId"

    invoke-interface {p1, v1, v0}, Lc/c/c/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-wide v2, v0

    goto :goto_3
.end method

.method public declared-synchronized setRandom(Ljava/util/Random;)V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot contain \'.\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    .line 77
    return-void
.end method
