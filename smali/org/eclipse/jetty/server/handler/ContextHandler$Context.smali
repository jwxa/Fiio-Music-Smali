.class public Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Lc/c/s;


# static fields
.field private static final __unimplmented:Ljava/lang/String; = "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"


# instance fields
.field protected _enabled:Z

.field protected _majorVersion:I

.field protected _minorVersion:I

.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V
    .locals 1

    .prologue
    .line 1706
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1700
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    .line 1701
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    .line 1702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    .line 1707
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lc/c/e;)Lc/c/i;
    .locals 3

    .prologue
    .line 2206
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2207
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/Class;)Lc/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/e;",
            ">;)",
            "Lc/c/i;"
        }
    .end annotation

    .prologue
    .line 2199
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)Lc/c/i;
    .locals 3

    .prologue
    .line 2213
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2214
    const/4 v0, 0x0

    return-object v0
.end method

.method public addListener(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2335
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 2336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2340
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object v0

    .line 2341
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 2342
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->restrictEventListener(Ljava/util/EventListener;)V
    :try_end_0
    .catch Lc/c/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 2347
    return-void

    .line 2344
    :catch_0
    move-exception v0

    .line 2346
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2310
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 2311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2315
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2316
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/Class;)V

    .line 2321
    return-void

    .line 2315
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2318
    :catch_0
    move-exception v0

    .line 2320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 2327
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 2328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2329
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 2330
    return-void
.end method

.method public addServlet(Ljava/lang/String;Lc/c/q;)Lc/c/ab;
    .locals 3

    .prologue
    .line 2227
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2228
    const/4 v0, 0x0

    return-object v0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/Class;)Lc/c/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/q;",
            ">;)",
            "Lc/c/ab;"
        }
    .end annotation

    .prologue
    .line 2220
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2221
    const/4 v0, 0x0

    return-object v0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lc/c/ab;
    .locals 3

    .prologue
    .line 2234
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2235
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFilter(Ljava/lang/Class;)Lc/c/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/c/e;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2241
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2242
    const/4 v0, 0x0

    return-object v0
.end method

.method public createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2355
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 2357
    :catch_0
    move-exception v0

    .line 2359
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2361
    :catch_1
    move-exception v0

    .line 2363
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createServlet(Ljava/lang/Class;)Lc/c/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/c/q;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2248
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2249
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs declareRoles([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2412
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2413
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 2414
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2418
    :cond_1
    return-void
.end method

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2062
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2063
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2064
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2065
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2062
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttributeNames()Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 2076
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2077
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2079
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 2080
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2081
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2076
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2083
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 2084
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2085
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2087
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 2370
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V

    .line 2371
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContext(Ljava/lang/String;)Lc/c/s;
    .locals 17

    .prologue
    .line 1723
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1724
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    const-class v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v8

    .line 1725
    const/4 v2, 0x0

    .line 1727
    array-length v9, v8

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v9, :cond_a

    aget-object v1, v8, v4

    .line 1729
    if-eqz v1, :cond_9

    .line 1730
    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1732
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 1734
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_1

    :cond_0
    const-string v5, "/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1738
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_6

    .line 1740
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_9

    .line 1742
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v11, :cond_9

    aget-object v12, v10, v5

    .line 1743
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v14, :cond_5

    aget-object v15, v13, v6

    .line 1744
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1746
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 1748
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move-object v2, v3

    .line 1752
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1753
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1743
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1742
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1759
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_8

    .line 1761
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move-object v2, v3

    .line 1765
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1766
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1727
    :cond_9
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_0

    .line 1771
    :cond_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 1772
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 1799
    :goto_3
    return-object v1

    .line 1775
    :cond_b
    const/4 v2, 0x0

    .line 1776
    array-length v5, v8

    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v5, :cond_11

    aget-object v1, v8, v4

    .line 1778
    if-eqz v1, :cond_10

    .line 1779
    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1781
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 1783
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2f

    if-eq v6, v9, :cond_d

    :cond_c
    const-string v6, "/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1786
    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-le v6, v9, :cond_f

    .line 1788
    :cond_e
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move-object v2, v3

    .line 1792
    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1793
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1776
    :cond_10
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 1797
    :cond_11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 1798
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    goto :goto_3

    .line 1799
    :cond_12
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2170
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    const-string v0, ""

    .line 2173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSessionTrackingModes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2255
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2256
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEffectiveMajorVersion()I
    .locals 1

    .prologue
    .line 2377
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    return v0
.end method

.method public getEffectiveMinorVersion()I
    .locals 1

    .prologue
    .line 2383
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    return v0
.end method

.method public getEffectiveSessionTrackingModes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2262
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterRegistration(Ljava/lang/String;)Lc/c/h;
    .locals 3

    .prologue
    .line 2269
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2270
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterRegistrations()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lc/c/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2276
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2277
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getJspConfigDescriptor()Lc/c/b/a;
    .locals 3

    .prologue
    .line 2399
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2400
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 1809
    const/4 v0, 0x3

    return v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1820
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return-object v0

    .line 1822
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 1823
    if-eqz v1, :cond_0

    .line 1824
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 1835
    const/4 v0, 0x0

    return v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Lc/c/p;
    .locals 1

    .prologue
    .line 1845
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1892
    if-nez p1, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return-object v0

    .line 1894
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1895
    const-string p1, "/"

    .line 1901
    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 1902
    if-eqz v1, :cond_0

    .line 1904
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 1905
    if-eqz v1, :cond_0

    .line 1906
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1896
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    .line 1897
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1909
    :catch_0
    move-exception v1

    .line 1911
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Lc/c/p;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1855
    if-nez p1, :cond_1

    .line 1882
    :cond_0
    :goto_0
    return-object v0

    .line 1858
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1864
    const/16 v1, 0x3f

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 1867
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1868
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v2, v1

    .line 1873
    :goto_1
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1874
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1875
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1876
    new-instance v1, Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {v1, v5, v4, v3, v2}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1878
    :catch_0
    move-exception v1

    .line 1880
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .prologue
    .line 1921
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 1922
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1923
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 1924
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1936
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 1937
    if-nez v1, :cond_0

    .line 1945
    :goto_0
    return-object v0

    .line 1939
    :cond_0
    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 1940
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1942
    :catch_0
    move-exception v1

    .line 1944
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jetty/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jetty/server/Server;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServlet(Ljava/lang/String;)Lc/c/q;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1977
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServletContextName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 2161
    if-nez v0, :cond_0

    .line 2162
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 2163
    :cond_0
    return-object v0
.end method

.method public getServletNames()Ljava/util/Enumeration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1989
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletRegistration(Ljava/lang/String;)Lc/c/aa;
    .locals 3

    .prologue
    .line 2283
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServletRegistrations()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lc/c/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2290
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServlets()Ljava/util/Enumeration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2001
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCookieConfig()Lc/c/al;
    .locals 3

    .prologue
    .line 2297
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2298
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2427
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    return v0
.end method

.method public log(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2011
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2012
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2021
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2022
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2032
    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2132
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2135
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    :cond_0
    monitor-exit p0

    return-void

    .line 2139
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2140
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 2141
    if-eqz v0, :cond_0

    .line 2143
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2145
    new-instance v1, Lc/c/t;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v1, v2, p1, v0}, Lc/c/t;-><init>(Lc/c/s;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2147
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2148
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/u;

    invoke-interface {v0}, Lc/c/u;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2097
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2098
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2100
    if-nez p2, :cond_0

    .line 2101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 2105
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2107
    new-instance v1, Lc/c/t;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v3, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v2, :cond_1

    move-object v0, p2

    :goto_1
    invoke-direct {v1, v3, p1, v0}, Lc/c/t;-><init>(Lc/c/s;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2109
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2111
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/u;

    .line 2113
    if-nez v2, :cond_2

    .line 2114
    invoke-interface {v0}, Lc/c/u;->a()V

    .line 2109
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2103
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2097
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v2

    .line 2107
    goto :goto_1

    .line 2115
    :cond_2
    if-nez p2, :cond_3

    .line 2116
    :try_start_1
    invoke-interface {v0}, Lc/c/u;->b()V

    goto :goto_3

    .line 2118
    :cond_3
    invoke-interface {v0}, Lc/c/u;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2121
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public setEffectiveMajorVersion(I)V
    .locals 0

    .prologue
    .line 2388
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    .line 2389
    return-void
.end method

.method public setEffectiveMinorVersion(I)V
    .locals 0

    .prologue
    .line 2393
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    .line 2394
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 2422
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    .line 2423
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2187
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2188
    const/4 v0, 0x0

    .line 2190
    :goto_0
    return v0

    .line 2189
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setJspConfigDescriptor(Lc/c/b/a;)V
    .locals 0

    .prologue
    .line 2406
    return-void
.end method

.method public setSessionTrackingModes(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2304
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2305
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServletContext@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
