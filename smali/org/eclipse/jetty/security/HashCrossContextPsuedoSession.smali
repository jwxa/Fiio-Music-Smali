.class public Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;
.super Ljava/lang/Object;
.source "HashCrossContextPsuedoSession.java"

# interfaces
.implements Lorg/eclipse/jetty/security/CrossContextPsuedoSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/eclipse/jetty/security/CrossContextPsuedoSession",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final _cookieName:Ljava/lang/String;

.field private final _cookiePath:Ljava/lang/String;

.field private final _data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final _random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_random:Ljava/util/Random;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    .line 46
    if-nez p2, :cond_0

    const-string p2, "/"

    :cond_0
    iput-object p2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookiePath:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public clear(Lc/c/c/c;)V
    .locals 6

    .prologue
    .line 85
    invoke-interface {p1}, Lc/c/c/c;->getCookies()[Lc/c/c/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 87
    iget-object v4, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-virtual {v3}, Lc/c/c/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {v3}, Lc/c/c/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fetch(Lc/c/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/c/c;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p1}, Lc/c/c/c;->getCookies()[Lc/c/c/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 53
    iget-object v4, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-virtual {v3}, Lc/c/c/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v3}, Lc/c/c/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    :goto_1
    return-object v0

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public store(Ljava/lang/Object;Lc/c/c/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/c/c/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    monitor-enter v1

    .line 71
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    rem-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1e

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    new-instance v1, Lc/c/c/a;

    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lc/c/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookiePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lc/c/c/a;->c(Ljava/lang/String;)V

    .line 80
    invoke-interface {p2, v1}, Lc/c/c/e;->addCookie(Lc/c/c/a;)V

    .line 81
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
