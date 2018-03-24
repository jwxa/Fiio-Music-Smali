.class public Lorg/eclipse/jetty/servlet/ServletHolder;
.super Lorg/eclipse/jetty/servlet/Holder;
.source "ServletHolder.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/eclipse/jetty/server/UserIdentity$Scope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Lc/c/q;",
        ">;",
        "Ljava/lang/Comparable;",
        "Lorg/eclipse/jetty/server/UserIdentity$Scope;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NO_MAPPED_ROLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient _config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

.field private transient _enabled:Z

.field private _forcedPath:Ljava/lang/String;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _initOnStartup:Z

.field private _initOrder:I

.field private _registration:Lc/c/ab;

.field private _roleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _runAsRole:Ljava/lang/String;

.field private _runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

.field private transient _servlet:Lc/c/q;

.field private transient _unavailable:J

.field private transient _unavailableEx:Lc/c/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->NO_MAPPED_ROLES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Lc/c/q;)V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 110
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Lc/c/q;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 139
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc/c/q;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 129
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Lc/c/q;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 119
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 102
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/servlet/ServletHolder;)Lorg/eclipse/jetty/servlet/ServletHolder$Config;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    return-object v0
.end method

.method private initServlet()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 497
    .line 500
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->newInstance()Lc/c/q;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 506
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2}, Lorg/eclipse/jetty/security/IdentityService;->getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v1

    .line 512
    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isJspServlet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initJspServlet()V

    .line 517
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initMultiPart()V

    .line 519
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-interface {v0, v2}, Lc/c/q;->init(Lc/c/r;)V
    :try_end_0
    .catch Lc/c/ao; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lc/c/x; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_4

    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 548
    :cond_4
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 523
    :try_start_1
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Lc/c/ao;)V

    .line 524
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    .line 525
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 526
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_5

    .line 546
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_5
    throw v0

    .line 528
    :catch_1
    move-exception v0

    .line 530
    :try_start_2
    invoke-virtual {v0}, Lc/c/x;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 531
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    .line 532
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 533
    throw v0

    .line 530
    :cond_6
    invoke-virtual {v0}, Lc/c/x;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 535
    :catch_2
    move-exception v0

    .line 537
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 538
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    .line 539
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 540
    new-instance v2, Lc/c/x;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lc/c/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private isJspServlet()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 695
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    if-nez v1, :cond_1

    .line 707
    :cond_0
    return v0

    .line 698
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 701
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 703
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isJspServlet(Ljava/lang/String;)Z

    move-result v0

    .line 704
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private isJspServlet(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 715
    const/4 v0, 0x0

    .line 716
    :goto_0
    return v0

    :cond_0
    const-string v0, "org.apache.jasper.servlet.JspServlet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private makeUnavailable(Lc/c/ao;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 452
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Lc/c/s;

    move-result-object v0

    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Lc/c/s;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    .line 458
    iput-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 459
    invoke-virtual {p1}, Lc/c/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iput-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    invoke-virtual {v0}, Lc/c/ao;->c()I

    move-result v0

    if-lez v0, :cond_2

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    invoke-virtual {v2}, Lc/c/ao;->c()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 466
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0
.end method

.method private makeUnavailable(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 474
    instance-of v0, p1, Lc/c/ao;

    if-eqz v0, :cond_0

    .line 475
    check-cast p1, Lc/c/ao;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Lc/c/ao;)V

    .line 491
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Lc/c/s;

    move-result-object v0

    .line 479
    if-nez v0, :cond_1

    .line 480
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    :goto_1
    new-instance v0, Lorg/eclipse/jetty/servlet/g;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jetty/servlet/g;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    .line 489
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 482
    :cond_1
    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Lc/c/s;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public checkServletType()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v0, Lc/c/q;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    new-instance v0, Lc/c/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Servlet "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a javax.servlet.Servlet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 192
    instance-of v0, p1, Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 194
    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 195
    if-ne v0, p0, :cond_1

    move v1, v3

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    iget v4, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    iget v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    if-lt v4, v5, :cond_0

    .line 199
    iget v4, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    iget v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    if-le v4, v5, :cond_2

    move v1, v2

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 203
    :cond_3
    if-nez v3, :cond_6

    .line 204
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 205
    :goto_1
    if-nez v0, :cond_4

    .line 206
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-le v0, v3, :cond_5

    move v0, v1

    :cond_4
    :goto_2
    move v1, v0

    .line 207
    goto :goto_0

    :cond_5
    move v0, v2

    .line 206
    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public destroyInstance(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_0
    check-cast p1, Lc/c/q;

    .line 381
    invoke-interface {p1}, Lc/c/q;->destroy()V

    .line 382
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->destroyServlet(Lc/c/q;)V

    goto :goto_0
.end method

.method public doStart()V
    .locals 2

    .prologue
    .line 292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 293
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    if-nez v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStart()V
    :try_end_0
    .catch Lc/c/ao; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->checkServletType()V
    :try_end_1
    .catch Lc/c/ao; {:try_start_1 .. :try_end_1} :catch_2

    .line 318
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->newRunAsToken(Ljava/lang/String;)Lorg/eclipse/jetty/security/RunAsToken;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    .line 322
    :cond_3
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 324
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_4

    const-class v0, Lc/c/an;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    new-instance v0, Lorg/eclipse/jetty/servlet/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/servlet/h;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;B)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    .line 327
    :cond_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-eqz v0, :cond_0

    .line 331
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initServlet()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 335
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 336
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
    :catch_1
    move-exception v0

    .line 302
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Lc/c/ao;)V

    .line 303
    throw v0

    .line 310
    :catch_2
    move-exception v0

    .line 312
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Lc/c/ao;)V

    .line 313
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    throw v0

    .line 338
    :cond_6
    throw v0
.end method

.method public doStop()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 347
    .line 348
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v1}, Lorg/eclipse/jetty/security/IdentityService;->getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 355
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 368
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v0, :cond_1

    .line 369
    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    .line 371
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 372
    return-void

    .line 357
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 359
    :goto_2
    :try_start_2
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    goto :goto_1

    .line 363
    :catchall_0
    move-exception v0

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_2
    throw v0

    .line 363
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 357
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;->getServletContext()Lc/c/s;

    move-result-object v0

    invoke-interface {v0}, Lc/c/s;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForcedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    return v0
.end method

.method public getRegistration()Lc/c/ab;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Lc/c/ab;

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Lc/c/ab;

    .line 836
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Lc/c/ab;

    return-object v0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->NO_MAPPED_ROLES:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public getRoleRefMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRunAsRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getServlet()Lc/c/q;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 393
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 395
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_1
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    .line 401
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    if-nez v0, :cond_3

    .line 402
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initServlet()V

    .line 403
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getServletInstance()Lc/c/q;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    return-object v0
.end method

.method public getUnavailableException()Lc/c/ao;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    return-object v0
.end method

.method public getUserRoleLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object p1

    .line 248
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0
.end method

.method public handle(Lorg/eclipse/jetty/server/Request;Lc/c/ac;Lc/c/ai;)V
    .locals 6

    .prologue
    .line 635
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Lc/c/ao;

    const-string v1, "Servlet Not Initialized"

    invoke-direct {v0, v1}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    .line 639
    monitor-enter p0

    .line 641
    :try_start_0
    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-nez v1, :cond_9

    .line 642
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Lc/c/q;

    move-result-object v0

    move-object v2, v0

    .line 643
    :goto_0
    if-nez v2, :cond_2

    .line 644
    new-instance v0, Lc/c/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not instantiate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    const/4 v1, 0x0

    .line 650
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v3

    .line 654
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 656
    const-string v0, "org.apache.catalina.jsp_file"

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    invoke-interface {p2, v0, v4}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_4

    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getResolvedUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v1

    .line 662
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAsyncSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 665
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lc/c/ab;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getMultipartConfig()Lc/c/m;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_6

    .line 667
    const-string v4, "org.eclipse.multipartConfig"

    invoke-interface {p2, v4, v0}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    :cond_6
    invoke-interface {v2, p2, p3}, Lc/c/q;->service(Lc/c/ac;Lc/c/ai;)V
    :try_end_2
    .catch Lc/c/ao; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 670
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 682
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_7

    .line 683
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 686
    :cond_7
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 674
    :try_start_3
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Lc/c/ao;)V

    .line 675
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Lc/c/ao;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 679
    :catchall_1
    move-exception v0

    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 682
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_8

    .line 683
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 686
    :cond_8
    const-string v1, "javax.servlet.error.servlet_name"

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_9
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected initJspServlet()V
    .locals 4

    .prologue
    .line 557
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Lc/c/s;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 560
    const-string v1, "org.apache.catalina.jsp_classpath"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    const-string v1, "com.sun.appserv.jsp.classpath"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/Loader;->getClassPath(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "?"

    const-string v2, "classpath"

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassPath()Ljava/lang/String;

    move-result-object v0

    .line 569
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "classpath="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    if-eqz v0, :cond_0

    .line 571
    const-string v1, "classpath"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    return-void
.end method

.method protected initMultiPart()V
    .locals 2

    .prologue
    .line 586
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lc/c/ab;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getMultipartConfig()Lc/c/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Lc/c/s;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 591
    new-instance v1, Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;

    invoke-direct {v1}, Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 593
    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 435
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Lc/c/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 443
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    return v0
.end method

.method public isSetInitOrder()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    return v0
.end method

.method protected newInstance()Lc/c/q;
    .locals 3

    .prologue
    .line 939
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Lc/c/s;

    move-result-object v0

    .line 940
    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/q;

    .line 942
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createServlet(Ljava/lang/Class;)Lc/c/q;
    :try_end_0
    .catch Lc/c/x; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 946
    invoke-virtual {v1}, Lc/c/x;->a()Ljava/lang/Throwable;

    move-result-object v0

    .line 947
    instance-of v2, v0, Ljava/lang/InstantiationException;

    if-eqz v2, :cond_1

    .line 948
    check-cast v0, Ljava/lang/InstantiationException;

    throw v0

    .line 949
    :cond_1
    instance-of v2, v0, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_2

    .line 950
    check-cast v0, Ljava/lang/IllegalAccessException;

    throw v0

    .line 951
    :cond_2
    throw v1
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 284
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 285
    return-void
.end method

.method public setForcedPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setInitOrder(I)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 179
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    .line 180
    return-void
.end method

.method public setRunAsRole(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public declared-synchronized setServlet(Lc/c/q;)V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v0, p1, Lc/c/an;

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    .line 158
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Lc/c/q;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
