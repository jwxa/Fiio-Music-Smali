.class public Lcom/fiio/music/network/b/a;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# static fields
.field public static volatile a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/fiio/music/network/b/a;

.field private static g:Lcom/fiio/music/network/b/i;


# instance fields
.field private d:Le/ag;

.field private e:Landroid/os/Handler;

.field private f:Lcom/a/a/aq;

.field private h:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Le/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/fiio/music/network/bean/Lrc;",
            "Lcom/fiio/music/network/bean/Lrc;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Z

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dendy-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-class v1, Lcom/fiio/music/network/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/b/a;->b:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/network/b/a;->a:Z

    .line 86
    new-instance v0, Lcom/fiio/music/network/b/i;

    invoke-direct {v0}, Lcom/fiio/music/network/b/i;-><init>()V

    sput-object v0, Lcom/fiio/music/network/b/a;->g:Lcom/fiio/music/network/b/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/b/a;->h:Landroid/util/ArrayMap;

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/b/a;->i:Landroid/util/ArrayMap;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/network/b/a;->j:Z

    .line 98
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/fiio/music/network/b/a;->k:Ljava/lang/String;

    .line 101
    new-instance v0, Le/ai;

    invoke-direct {v0}, Le/ai;-><init>()V

    .line 102
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Le/ai;->a(Ljava/util/concurrent/TimeUnit;)Le/ai;

    .line 103
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Le/ai;->b(Ljava/util/concurrent/TimeUnit;)Le/ai;

    .line 104
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Le/ai;->c(Ljava/util/concurrent/TimeUnit;)Le/ai;

    .line 105
    invoke-virtual {v0}, Le/ai;->a()Le/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/network/b/a;->d:Le/ag;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fiio/music/network/b/a;->e:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/b/a;->f:Lcom/a/a/aq;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/network/b/a;)Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/network/b/a;->h:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static a()Lcom/fiio/music/network/b/a;
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/fiio/music/network/b/a;->c:Lcom/fiio/music/network/b/a;

    if-nez v0, :cond_1

    .line 116
    const-class v1, Lcom/fiio/music/network/b/a;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcom/fiio/music/network/b/a;->c:Lcom/fiio/music/network/b/a;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/fiio/music/network/b/a;

    invoke-direct {v0}, Lcom/fiio/music/network/b/a;-><init>()V

    sput-object v0, Lcom/fiio/music/network/b/a;->c:Lcom/fiio/music/network/b/a;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    sget-object v0, Lcom/fiio/music/network/b/a;->c:Lcom/fiio/music/network/b/a;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final a(Le/aq;)Lcom/fiio/music/network/b/j;
    .locals 4

    .prologue
    .line 420
    new-instance v1, Lcom/fiio/music/network/b/j;

    invoke-direct {v1}, Lcom/fiio/music/network/b/j;-><init>()V

    .line 421
    if-eqz p0, :cond_0

    .line 423
    :try_start_0
    invoke-virtual {p0}, Le/aq;->b()I

    move-result v0

    .line 424
    iput v0, v1, Lcom/fiio/music/network/b/j;->a:I

    .line 425
    invoke-virtual {p0}, Le/aq;->f()Le/as;

    move-result-object v0

    invoke-virtual {v0}, Le/as;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fiio/music/network/b/j;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    return-object v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 428
    const/4 v2, -0x1

    iput v2, v1, Lcom/fiio/music/network/b/j;->a:I

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fiio/music/network/b/j;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/fiio/music/network/b/g;Le/am;)Le/g;
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/fiio/music/network/b/a;->d:Le/ag;

    invoke-virtual {v0, p2}, Le/ag;->a(Le/am;)Le/g;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/fiio/music/network/b/a;->h:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Le/am;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    new-instance v1, Lcom/fiio/music/network/b/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/fiio/music/network/b/e;-><init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/network/b/g;Le/am;)V

    invoke-interface {v0, v1}, Le/g;->a(Le/h;)V

    .line 599
    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/fiio/music/network/b/g",
            "<*>;)",
            "Le/g;"
        }
    .end annotation

    .prologue
    .line 139
    const-class v1, Lcom/fiio/music/network/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/Object;)V

    .line 140
    new-instance v0, Lcom/fiio/music/network/b/h;

    invoke-direct {v0}, Lcom/fiio/music/network/b/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/fiio/music/network/b/h;->a(Ljava/lang/String;)Le/an;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/an;->a(Ljava/lang/Object;)Le/an;

    move-result-object v0

    invoke-virtual {v0}, Le/an;->a()Le/am;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v2

    invoke-direct {v2, p2, v0}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/g;Le/am;)Le/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "TT;",
            "Lcom/fiio/music/network/b/g",
            "<*>;)",
            "Le/g;"
        }
    .end annotation

    .prologue
    .line 160
    const-class v2, Lcom/fiio/music/network/b/a;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/Object;)V

    .line 161
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    .line 163
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Le/af;->a(Ljava/lang/String;)Le/af;

    move-result-object v1

    .line 165
    sget-object v3, Lcom/fiio/music/network/b/a;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postJsonRequst cls = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0, p2}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 168
    sget-object v0, Lcom/fiio/music/network/b/a;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestJson = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Le/a/c;->e:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/af;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Le/a/c;->e:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; charset=utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/af;->a(Ljava/lang/String;)Le/af;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v1, v0}, Le/ao;->a(Le/af;[B)Le/ao;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/fiio/music/network/b/h;

    invoke-direct {v1}, Lcom/fiio/music/network/b/h;-><init>()V

    invoke-virtual {v1, p0}, Lcom/fiio/music/network/b/h;->a(Ljava/lang/String;)Le/an;

    move-result-object v1

    const-string v3, "POST"

    invoke-virtual {v1, v3, v0}, Le/an;->a(Ljava/lang/String;Le/ao;)Le/an;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Le/an;->a()Le/am;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v1

    invoke-direct {v1, p3, v0}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/g;Le/am;)Le/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 654
    const-string p1, "utf-8"

    .line 656
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 657
    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 656
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 659
    const/16 v1, 0x1000

    new-array v1, v1, [C

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    if-gez v3, :cond_1

    .line 667
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 665
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/network/b/a;Le/g;Ljava/lang/Exception;Lcom/fiio/music/network/b/g;I)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fiio/music/network/b/a;->a(Le/g;Ljava/lang/Exception;Lcom/fiio/music/network/b/g;I)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/network/b/a;Le/g;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1, p2, p3}, Lcom/fiio/music/network/b/a;->a(Le/g;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/network/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/fiio/music/network/b/a;->k:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a(Le/g;Ljava/lang/Exception;Lcom/fiio/music/network/b/g;I)V
    .locals 7

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/fiio/music/network/b/a;->e:Landroid/os/Handler;

    new-instance v0, Lcom/fiio/music/network/b/c;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/network/b/c;-><init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/network/b/g;Le/g;Ljava/lang/Exception;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Le/g;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)V
    .locals 2

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/network/b/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/network/b/d;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/fiio/music/network/b/d;-><init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/network/b/g;Le/g;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 204
    const-class v1, Lcom/fiio/music/network/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v0

    iget-object v2, v0, Lcom/fiio/music/network/b/a;->h:Landroid/util/ArrayMap;

    .line 205
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/g;

    .line 206
    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/g;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {v0}, Le/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit v1

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/fiio/music/network/b/g",
            "<*>;)",
            "Le/g;"
        }
    .end annotation

    .prologue
    .line 177
    const-class v1, Lcom/fiio/music/network/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/Object;)V

    .line 178
    const-string v0, "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.7 Safari/537.36"

    .line 179
    new-instance v2, Lcom/fiio/music/network/b/h;

    invoke-direct {v2}, Lcom/fiio/music/network/b/h;-><init>()V

    invoke-virtual {v2, p0}, Lcom/fiio/music/network/b/h;->a(Ljava/lang/String;)Le/an;

    move-result-object v2

    invoke-virtual {v2, p1}, Le/an;->a(Ljava/lang/Object;)Le/an;

    move-result-object v2

    .line 180
    const-string v3, "user-agent"

    invoke-virtual {v2, v3, v0}, Le/an;->b(Ljava/lang/String;Ljava/lang/String;)Le/an;

    move-result-object v0

    invoke-virtual {v0}, Le/an;->a()Le/am;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v2

    invoke-direct {v2, p2, v0}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/g;Le/am;)Le/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Le/aq;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 629
    if-nez p0, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-object v0

    .line 632
    :cond_1
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Le/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    sget-object v2, Lcom/fiio/music/network/b/a;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contentType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-eqz v1, :cond_0

    .line 637
    const-string v2, "(?i)\\bcharset=([^\\s;]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 638
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 639
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fiio/music/network/b/a;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/fiio/music/network/b/a;->j:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fiio/music/network/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/network/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fiio/music/network/b/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/network/b/a;)Lcom/a/a/aq;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fiio/music/network/b/a;->f:Lcom/a/a/aq;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/fiio/music/entity/Activity;)V
    .locals 3

    .prologue
    .line 785
    invoke-static {p2}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/Object;)V

    .line 787
    if-nez p3, :cond_0

    .line 788
    sget-object v0, Lcom/fiio/music/network/b/a;->b:Ljava/lang/String;

    const-string v1, "\u6d3b\u52a8\u4e3a\u7a7a\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_0
    return-void

    .line 792
    :cond_0
    sget-object v0, Lcom/fiio/music/network/b/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadActivityCover url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v0, Le/an;

    invoke-direct {v0}, Le/an;-><init>()V

    invoke-virtual {v0, p1}, Le/an;->a(Ljava/lang/String;)Le/an;

    move-result-object v0

    invoke-virtual {v0, p2}, Le/an;->a(Ljava/lang/Object;)Le/an;

    move-result-object v0

    invoke-virtual {v0}, Le/an;->a()Le/am;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/fiio/music/network/b/a;->d:Le/ag;

    invoke-virtual {v1, v0}, Le/ag;->a(Le/am;)Le/g;

    move-result-object v0

    new-instance v1, Lcom/fiio/music/network/b/b;

    invoke-direct {v1, p0, p3}, Lcom/fiio/music/network/b/b;-><init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/entity/Activity;)V

    invoke-interface {v0, v1}, Le/g;->a(Le/h;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/fiio/music/entity/Song;)V
    .locals 2

    .prologue
    .line 679
    invoke-static {p2}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/Object;)V

    .line 680
    new-instance v0, Le/an;

    invoke-direct {v0}, Le/an;-><init>()V

    invoke-virtual {v0, p1}, Le/an;->a(Ljava/lang/String;)Le/an;

    move-result-object v0

    invoke-virtual {v0, p2}, Le/an;->a(Ljava/lang/Object;)Le/an;

    move-result-object v0

    invoke-virtual {v0}, Le/an;->a()Le/am;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/fiio/music/network/b/a;->d:Le/ag;

    invoke-virtual {v1, v0}, Le/ag;->a(Le/am;)Le/g;

    move-result-object v0

    new-instance v1, Lcom/fiio/music/network/b/f;

    invoke-direct {v1, p0, p3}, Lcom/fiio/music/network/b/f;-><init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/entity/Song;)V

    invoke-interface {v0, v1}, Le/g;->a(Le/h;)V

    .line 774
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 906
    iput-boolean p1, p0, Lcom/fiio/music/network/b/a;->j:Z

    .line 907
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/fiio/music/network/b/a;->k:Ljava/lang/String;

    return-object v0
.end method
