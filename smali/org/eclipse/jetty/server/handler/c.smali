.class final Lorg/eclipse/jetty/server/handler/c;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# instance fields
.field final a:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 2436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2437
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/c;->a:Ljava/lang/ClassLoader;

    .line 2438
    return-void
.end method


# virtual methods
.method public final dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2442
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2447
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/c;->a:Ljava/lang/ClassLoader;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2449
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/c;->a:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/c;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2452
    if-eqz v0, :cond_0

    .line 2454
    instance-of v1, v0, Lorg/eclipse/jetty/util/component/Dumpable;

    if-nez v1, :cond_2

    .line 2455
    new-instance v1, Lorg/eclipse/jetty/server/handler/c;

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/server/handler/c;-><init>(Ljava/lang/ClassLoader;)V

    .line 2457
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/c;->a:Ljava/lang/ClassLoader;

    instance-of v0, v0, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_1

    .line 2458
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/util/Collection;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/c;->a:Ljava/lang/ClassLoader;

    check-cast v0, Ljava/net/URLClassLoader;

    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p1, p2, v2}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 2463
    :cond_0
    :goto_1
    return-void

    .line 2460
    :cond_1
    new-array v0, v4, [Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
