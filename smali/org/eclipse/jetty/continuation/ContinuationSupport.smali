.class public Lorg/eclipse/jetty/continuation/ContinuationSupport;
.super Ljava/lang/Object;
.source "ContinuationSupport.java"


# static fields
.field static final __jetty6:Z

.field static final __newJetty6Continuation:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/eclipse/jetty/continuation/Continuation;",
            ">;"
        }
    .end annotation
.end field

.field static final __newServlet3Continuation:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/eclipse/jetty/continuation/Continuation;",
            ">;"
        }
    .end annotation
.end field

.field static final __servlet3:Z

.field static final __waitingContinuation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    :try_start_0
    const-class v0, Lc/c/ac;

    const-string v2, "startAsync"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 47
    :goto_0
    if-eqz v0, :cond_3

    .line 49
    const-class v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "org.eclipse.jetty.continuation.Servlet3Continuation"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/eclipse/jetty/continuation/Continuation;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lc/c/ac;

    aput-object v6, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move v2, v3

    .line 58
    :goto_1
    sput-boolean v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    .line 66
    :goto_2
    :try_start_1
    const-class v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "org.mortbay.util.ajax.Continuation"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_1

    move v0, v3

    .line 68
    :goto_3
    if-eqz v0, :cond_2

    .line 70
    const-class v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v5, "org.eclipse.jetty.continuation.Jetty6Continuation"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v5, Lorg/eclipse/jetty/continuation/Continuation;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lc/c/ac;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 79
    :goto_4
    sput-boolean v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    .line 83
    :goto_5
    :try_start_2
    const-class v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "org.mortbay.util.ajax.WaitingContinuation"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 93
    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    .line 94
    :goto_6
    return-void

    :cond_0
    move v0, v4

    .line 46
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    sput-boolean v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    sput-boolean v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    throw v0

    :cond_1
    move v0, v4

    .line 67
    goto :goto_3

    .line 75
    :catch_1
    move-exception v0

    .line 79
    sput-boolean v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    goto :goto_5

    .line 79
    :catchall_1
    move-exception v0

    sput-boolean v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    throw v0

    .line 93
    :catch_2
    move-exception v0

    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    goto :goto_6

    :catchall_2
    move-exception v0

    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    throw v0

    :cond_2
    move v3, v4

    move-object v0, v1

    goto :goto_4

    :cond_3
    move-object v0, v1

    move v2, v4

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContinuation(Lc/c/ac;)Lorg/eclipse/jetty/continuation/Continuation;
    .locals 5

    .prologue
    .line 110
    const-string v0, "org.eclipse.jetty.continuation"

    invoke-interface {p0, v0}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    .line 111
    if-eqz v0, :cond_5

    .line 141
    :goto_0
    return-object v0

    .line 114
    :goto_1
    instance-of v1, v0, Lc/c/ah;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Lc/c/ah;

    invoke-virtual {v0}, Lc/c/ah;->getRequest()Lc/c/ac;

    move-result-object v0

    goto :goto_1

    .line 117
    :cond_0
    sget-boolean v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    if-eqz v1, :cond_1

    .line 121
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/Continuation;

    .line 122
    const-string v2, "org.eclipse.jetty.continuation"

    invoke-interface {v0, v2, v1}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 123
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :cond_1
    sget-boolean v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    if-eqz v1, :cond_4

    .line 133
    const-string v1, "org.mortbay.jetty.ajax.Continuation"

    invoke-interface {v0, v1}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_2

    :try_start_1
    sget-object v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    if-eqz v2, :cond_2

    sget-object v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    :cond_2
    new-instance v1, Lorg/eclipse/jetty/continuation/a;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/continuation/a;-><init>(Lc/c/ac;)V

    .line 140
    :goto_2
    const-string v2, "org.eclipse.jetty.continuation"

    invoke-interface {v0, v2, v1}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 141
    goto :goto_0

    .line 139
    :cond_3
    sget-object v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/Continuation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 143
    :catch_1
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!(Jetty || Servlet 3.0 || ContinuationFilter)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, p0

    goto :goto_1
.end method

.method public static getContinuation(Lc/c/ac;Lc/c/ai;)Lorg/eclipse/jetty/continuation/Continuation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    invoke-static {p0}, Lorg/eclipse/jetty/continuation/ContinuationSupport;->getContinuation(Lc/c/ac;)Lorg/eclipse/jetty/continuation/Continuation;

    move-result-object v0

    return-object v0
.end method
