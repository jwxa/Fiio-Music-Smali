.class Lg/a/a/ae;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lg/a/a/am;


# static fields
.field static final a:I

.field static final b:J

.field static final c:I

.field static final d:J

.field static final e:J

.field static final f:J

.field static final g:Z

.field static i:Z

.field static final synthetic j:Z


# instance fields
.field private volatile A:Z

.field private volatile B:Z

.field private C:Z

.field private D:Z

.field private volatile E:J

.field private volatile F:J

.field private volatile G:J

.field private H:Lcom/d/a/a/m;

.field private I:Ljava/util/Timer;

.field private J:Ljava/util/Timer;

.field private K:Ljava/util/logging/Logger;

.field private L:I

.field h:Lg/a/a/ag;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/util/concurrent/Executor;

.field private n:Lcom/d/a/a/n;

.field private o:Ljavax/net/ssl/SSLContext;

.field private p:Lg/a/a/e;

.field private q:Ljava/net/InetSocketAddress;

.field private r:Ljava/nio/channels/ServerSocketChannel;

.field private s:Ljava/nio/channels/Selector;

.field private t:Ljava/nio/channels/SelectionKey;

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lg/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lg/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lg/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lg/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lg/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    const-class v0, Lg/a/a/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lg/a/a/ae;->j:Z

    .line 57
    invoke-static {}, Lg/a/a/ad;->d()I

    move-result v0

    sput v0, Lg/a/a/ae;->a:I

    .line 58
    invoke-static {}, Lg/a/a/ad;->c()J

    move-result-wide v4

    sput-wide v4, Lg/a/a/ae;->b:J

    .line 59
    invoke-static {}, Lg/a/a/ad;->e()I

    move-result v0

    sput v0, Lg/a/a/ae;->c:I

    .line 60
    invoke-static {}, Lg/a/a/ad;->j()J

    move-result-wide v4

    sput-wide v4, Lg/a/a/ae;->d:J

    .line 61
    invoke-static {}, Lg/a/a/ad;->h()J

    move-result-wide v4

    mul-long/2addr v4, v6

    sput-wide v4, Lg/a/a/ae;->e:J

    .line 62
    invoke-static {}, Lg/a/a/ad;->i()J

    move-result-wide v4

    mul-long/2addr v4, v6

    sput-wide v4, Lg/a/a/ae;->f:J

    .line 63
    sget-wide v4, Lg/a/a/ae;->e:J

    sget-wide v6, Lg/a/a/ae;->f:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    :goto_1
    sput-boolean v1, Lg/a/a/ae;->g:Z

    .line 384
    invoke-static {}, Lg/a/a/ad;->b()Z

    move-result v0

    sput-boolean v0, Lg/a/a/ae;->i:Z

    return-void

    :cond_0
    move v0, v2

    .line 26
    goto :goto_0

    :cond_1
    move v1, v2

    .line 63
    goto :goto_1
.end method

.method constructor <init>(Lcom/d/a/a/m;Ljava/lang/String;Ljava/net/InetSocketAddress;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/a/a/ae;->z:Ljava/lang/Object;

    .line 48
    iput-boolean v2, p0, Lg/a/a/ae;->A:Z

    .line 49
    iput-boolean v2, p0, Lg/a/a/ae;->B:Z

    .line 50
    iput-boolean v2, p0, Lg/a/a/ae;->C:Z

    .line 51
    iput-boolean v2, p0, Lg/a/a/ae;->D:Z

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/a/a/ae;->F:J

    .line 653
    iput v2, p0, Lg/a/a/ae;->L:I

    .line 72
    iput-object p2, p0, Lg/a/a/ae;->k:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lg/a/a/ae;->H:Lcom/d/a/a/m;

    .line 74
    const-string v0, "com.sun.net.httpserver"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ae;->K:Ljava/util/logging/Logger;

    .line 75
    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lg/a/a/ae;->l:Z

    .line 76
    iput-object p3, p0, Lg/a/a/ae;->q:Ljava/net/InetSocketAddress;

    .line 77
    new-instance v0, Lg/a/a/e;

    invoke-direct {v0}, Lg/a/a/e;-><init>()V

    iput-object v0, p0, Lg/a/a/ae;->p:Lg/a/a/e;

    .line 78
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ae;->r:Ljava/nio/channels/ServerSocketChannel;

    .line 79
    if-eqz p3, :cond_0

    .line 80
    iget-object v0, p0, Lg/a/a/ae;->r:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p3, p4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 82
    iput-boolean v6, p0, Lg/a/a/ae;->C:Z

    .line 84
    :cond_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ae;->s:Ljava/nio/channels/Selector;

    .line 85
    iget-object v0, p0, Lg/a/a/ae;->r:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 86
    iget-object v0, p0, Lg/a/a/ae;->r:Ljava/nio/channels/ServerSocketChannel;

    iget-object v1, p0, Lg/a/a/ae;->s:Ljava/nio/channels/Selector;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ae;->t:Ljava/nio/channels/SelectionKey;

    .line 87
    new-instance v0, Lg/a/a/ag;

    invoke-direct {v0, p0}, Lg/a/a/ag;-><init>(Lg/a/a/ae;)V

    iput-object v0, p0, Lg/a/a/ae;->h:Lg/a/a/ag;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ae;->u:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ae;->v:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ae;->w:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ae;->x:Ljava/util/Set;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lg/a/a/ae;->E:J

    .line 93
    new-instance v0, Ljava/util/Timer;

    const-string v1, "server-timer"

    invoke-direct {v0, v1, v6}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lg/a/a/ae;->I:Ljava/util/Timer;

    .line 94
    iget-object v0, p0, Lg/a/a/ae;->I:Ljava/util/Timer;

    new-instance v1, Lg/a/a/aj;

    invoke-direct {v1, p0}, Lg/a/a/aj;-><init>(Lg/a/a/ae;)V

    sget v2, Lg/a/a/ae;->a:I

    int-to-long v2, v2

    sget v4, Lg/a/a/ae;->a:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 95
    sget-boolean v0, Lg/a/a/ae;->g:Z

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/util/Timer;

    const-string v1, "server-timer1"

    invoke-direct {v0, v1, v6}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lg/a/a/ae;->J:Ljava/util/Timer;

    .line 97
    iget-object v0, p0, Lg/a/a/ae;->J:Ljava/util/Timer;

    new-instance v1, Lg/a/a/ak;

    invoke-direct {v1, p0}, Lg/a/a/ak;-><init>(Lg/a/a/ae;)V

    sget-wide v2, Lg/a/a/ae;->d:J

    sget-wide v4, Lg/a/a/ae;->d:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 99
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lg/a/a/ae;->y:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lg/a/a/ae;->K:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HttpServer created "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static synthetic a(Lg/a/a/ae;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lg/a/a/ae;->E:J

    return-wide p1
.end method

.method static declared-synchronized a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 393
    const-class v1, Lg/a/a/ae;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lg/a/a/ae;->i:Z

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 395
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_0
    monitor-exit v1

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 387
    const-class v1, Lg/a/a/ae;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lg/a/a/ae;->i:Z

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_0
    monitor-exit v1

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lg/a/a/ae;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lg/a/a/ae;->B:Z

    return v0
.end method

.method static synthetic b(Lg/a/a/ae;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/ae;->A:Z

    return v0
.end method

.method static synthetic c(Lg/a/a/ae;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->u:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lg/a/a/ae;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->v:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lg/a/a/ae;)Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->s:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method static synthetic f(Lg/a/a/ae;)Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->K:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic g(Lg/a/a/ae;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lg/a/a/ae;->A:Z

    return v0
.end method

.method static synthetic h(Lg/a/a/ae;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->z:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lg/a/a/ae;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lg/a/a/ae;)Ljava/nio/channels/SelectionKey;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->t:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method static synthetic k(Lg/a/a/ae;)Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->r:Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method static synthetic l(Lg/a/a/ae;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lg/a/a/ae;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->m:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic n(Lg/a/a/ae;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lg/a/a/ae;->l:Z

    return v0
.end method

.method static synthetic o(Lg/a/a/ae;)Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->o:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method static synthetic p(Lg/a/a/ae;)Lg/a/a/e;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->p:Lg/a/a/e;

    return-object v0
.end method

.method static synthetic q(Lg/a/a/ae;)J
    .locals 4

    .prologue
    .line 26
    iget-wide v0, p0, Lg/a/a/ae;->G:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/a/a/ae;->G:J

    return-wide v0
.end method

.method static synthetic r(Lg/a/a/ae;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lg/a/a/ae;->E:J

    return-wide v0
.end method

.method static synthetic s(Lg/a/a/ae;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->w:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic t(Lg/a/a/ae;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lg/a/a/ae;->x:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lcom/d/a/a/k;)Lg/a/a/l;
    .locals 4

    .prologue
    .line 191
    monitor-enter p0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 192
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null handler, or path parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 194
    :cond_1
    :try_start_1
    new-instance v0, Lg/a/a/l;

    iget-object v1, p0, Lg/a/a/ae;->k:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, p0}, Lg/a/a/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/d/a/a/k;Lg/a/a/ae;)V

    .line 195
    iget-object v1, p0, Lg/a/a/ae;->p:Lg/a/a/e;

    invoke-virtual {v1, v0}, Lg/a/a/e;->a(Lg/a/a/l;)V

    .line 196
    iget-object v1, p0, Lg/a/a/ae;->K:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "context created: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lg/a/a/ae;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg/a/a/ae;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/a/a/ae;->A:Z

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "server in wrong state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iget-object v0, p0, Lg/a/a/ae;->m:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Lg/a/a/af;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/a/a/af;-><init>(B)V

    iput-object v0, p0, Lg/a/a/ae;->m:Ljava/util/concurrent/Executor;

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lg/a/a/ae;->h:Lg/a/a/ag;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/a/a/ae;->D:Z

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method

.method final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x50

    .line 624
    if-nez p3, :cond_0

    .line 625
    const-string p3, ""

    .line 628
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<TRUNCATED>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 630
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lg/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lg/a/a/ae;->K:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method final a(Lg/a/a/g;)V
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lg/a/a/ae;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lg/a/a/ae;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lg/a/a/ae;->s:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Lg/a/a/k;)V
    .locals 4

    .prologue
    .line 670
    sget-wide v0, Lg/a/a/ae;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 671
    iget-wide v0, p0, Lg/a/a/ae;->E:J

    iput-wide v0, p1, Lg/a/a/k;->l:J

    .line 673
    :cond_0
    return-void
.end method

.method public final b()Lcom/d/a/a/n;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lg/a/a/ae;->n:Lcom/d/a/a/n;

    return-object v0
.end method

.method final b(Lg/a/a/k;)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lg/a/a/ae;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 684
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 762
    iget-object v0, p0, Lg/a/a/ae;->K:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 763
    const-string v1, ""

    .line 764
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 765
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lg/a/a/ae;->K:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 160
    iput-boolean v4, p0, Lg/a/a/ae;->B:Z

    .line 164
    :try_start_0
    iget-object v0, p0, Lg/a/a/ae;->r:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :goto_0
    iget-object v0, p0, Lg/a/a/ae;->s:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 167
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 168
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    :goto_1
    iget-boolean v2, p0, Lg/a/a/ae;->A:Z

    if-eqz v2, :cond_0

    .line 170
    :cond_1
    iput-boolean v4, p0, Lg/a/a/ae;->A:Z

    .line 174
    iget-object v0, p0, Lg/a/a/ae;->s:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 175
    iget-object v1, p0, Lg/a/a/ae;->v:Ljava/util/Set;

    monitor-enter v1

    .line 176
    :try_start_2
    iget-object v0, p0, Lg/a/a/ae;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a/k;

    .line 177
    invoke-virtual {v0}, Lg/a/a/k;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    iget-object v0, p0, Lg/a/a/ae;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 181
    iget-object v0, p0, Lg/a/a/ae;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 182
    iget-object v0, p0, Lg/a/a/ae;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 183
    sget-boolean v0, Lg/a/a/ae;->g:Z

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lg/a/a/ae;->J:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 186
    :cond_3
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method final c(Lg/a/a/k;)V
    .locals 4

    .prologue
    .line 687
    sget-wide v0, Lg/a/a/ae;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 688
    iget-wide v0, p0, Lg/a/a/ae;->E:J

    iput-wide v0, p1, Lg/a/a/k;->m:J

    .line 689
    iget-object v0, p0, Lg/a/a/ae;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_0
    return-void
.end method

.method public final d()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lg/a/a/ae;->r:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method final d(Lg/a/a/k;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 695
    sget-wide v0, Lg/a/a/ae;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lg/a/a/k;->m:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lg/a/a/ae;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 698
    :cond_0
    return-void
.end method

.method final e()I
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lg/a/a/ae;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lg/a/a/ae;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final f()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lg/a/a/ae;->K:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 643
    iget-wide v0, p0, Lg/a/a/ae;->E:J

    return-wide v0
.end method

.method final declared-synchronized h()V
    .locals 1

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lg/a/a/ae;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/a/a/ae;->L:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized i()I
    .locals 1

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lg/a/a/ae;->L:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/a/a/ae;->L:I

    .line 661
    sget-boolean v0, Lg/a/a/ae;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Lg/a/a/ae;->L:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 662
    :cond_0
    :try_start_1
    iget v0, p0, Lg/a/a/ae;->L:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method
