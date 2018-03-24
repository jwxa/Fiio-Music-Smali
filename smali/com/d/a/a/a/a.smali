.class public abstract Lcom/d/a/a/a/a;
.super Ljava/lang/Object;
.source "HttpServerProvider.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/d/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/d/a/a/a/a;->a:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "httpServerProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static a()Lcom/d/a/a/a/a;
    .locals 2

    .prologue
    .line 136
    sget-object v1, Lcom/d/a/a/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/a;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/a;

    monitor-exit v1

    .line 139
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/d/a/a/a/b;

    invoke-direct {v0}, Lcom/d/a/a/a/b;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/a/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/d/a/a/a/a;)Lcom/d/a/a/a/a;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/a;

    return-object p0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/d/a/a/a/a;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Lcom/d/a/a/a/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/a;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/d/a/a/a/a;->f()Z

    move-result v0

    return v0
.end method

.method private static e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 62
    const-string v0, "com.sun.net.httpserver.HttpServerProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/a/a;

    sput-object v0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move v0, v1

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lsun/misc/ServiceConfigurationError;

    invoke-direct {v1, v0}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v1, Lsun/misc/ServiceConfigurationError;

    invoke-direct {v1, v0}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 74
    :catch_2
    move-exception v0

    .line 75
    new-instance v1, Lsun/misc/ServiceConfigurationError;

    invoke-direct {v1, v0}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_3
    move-exception v0

    .line 77
    new-instance v1, Lsun/misc/ServiceConfigurationError;

    invoke-direct {v1, v0}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static f()Z
    .locals 3

    .prologue
    .line 82
    const-class v0, Lcom/d/a/a/a/a;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/misc/Service;->providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    move-result-object v1

    .line 86
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/a/a;

    sput-object v0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/a;
    :try_end_0
    .catch Lsun/misc/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Lsun/misc/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/SecurityException;

    if-nez v2, :cond_0

    .line 93
    throw v0
.end method


# virtual methods
.method public abstract a(Ljava/net/InetSocketAddress;I)Lcom/d/a/a/m;
.end method
