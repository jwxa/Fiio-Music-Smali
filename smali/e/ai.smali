.class public final Le/ai;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# instance fields
.field a:Le/u;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/aj;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/p;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/ad;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/ad;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Le/s;

.field i:Le/d;

.field j:Le/a/a/i;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Le/a/h/b;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Le/i;

.field p:Le/b;

.field q:Le/b;

.field r:Le/n;

.field s:Le/v;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/ai;->e:Ljava/util/List;

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/ai;->f:Ljava/util/List;

    .line 442
    new-instance v0, Le/u;

    invoke-direct {v0}, Le/u;-><init>()V

    iput-object v0, p0, Le/ai;->a:Le/u;

    .line 443
    sget-object v0, Le/ag;->a:Ljava/util/List;

    iput-object v0, p0, Le/ai;->c:Ljava/util/List;

    .line 444
    sget-object v0, Le/ag;->b:Ljava/util/List;

    iput-object v0, p0, Le/ai;->d:Ljava/util/List;

    .line 445
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Le/ai;->g:Ljava/net/ProxySelector;

    .line 446
    sget-object v0, Le/s;->a:Le/s;

    iput-object v0, p0, Le/ai;->h:Le/s;

    .line 447
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Le/ai;->k:Ljavax/net/SocketFactory;

    .line 448
    sget-object v0, Le/a/h/d;->a:Le/a/h/d;

    iput-object v0, p0, Le/ai;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 449
    sget-object v0, Le/i;->a:Le/i;

    iput-object v0, p0, Le/ai;->o:Le/i;

    .line 450
    sget-object v0, Le/b;->a:Le/b;

    iput-object v0, p0, Le/ai;->p:Le/b;

    .line 451
    sget-object v0, Le/b;->a:Le/b;

    iput-object v0, p0, Le/ai;->q:Le/b;

    .line 452
    new-instance v0, Le/n;

    invoke-direct {v0}, Le/n;-><init>()V

    iput-object v0, p0, Le/ai;->r:Le/n;

    .line 453
    sget-object v0, Le/v;->a:Le/v;

    iput-object v0, p0, Le/ai;->s:Le/v;

    .line 454
    iput-boolean v1, p0, Le/ai;->t:Z

    .line 455
    iput-boolean v1, p0, Le/ai;->u:Z

    .line 456
    iput-boolean v1, p0, Le/ai;->v:Z

    .line 457
    iput v2, p0, Le/ai;->w:I

    .line 458
    iput v2, p0, Le/ai;->x:I

    .line 459
    iput v2, p0, Le/ai;->y:I

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Le/ai;->z:I

    .line 461
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0xa

    const-wide/16 v4, 0x0

    .line 534
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_1
    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 537
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too large."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, v6, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_3
    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()Le/ag;
    .locals 1

    .prologue
    .line 868
    new-instance v0, Le/ag;

    invoke-direct {v0, p0}, Le/ag;-><init>(Le/ai;)V

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/TimeUnit;)Le/ai;
    .locals 1

    .prologue
    .line 498
    const-string v0, "timeout"

    invoke-static {v0, p1}, Le/ai;->a(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Le/ai;->w:I

    .line 499
    return-object p0
.end method

.method public final b(Ljava/util/concurrent/TimeUnit;)Le/ai;
    .locals 1

    .prologue
    .line 507
    const-string v0, "timeout"

    invoke-static {v0, p1}, Le/ai;->a(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Le/ai;->x:I

    .line 508
    return-object p0
.end method

.method public final c(Ljava/util/concurrent/TimeUnit;)Le/ai;
    .locals 1

    .prologue
    .line 516
    const-string v0, "timeout"

    invoke-static {v0, p1}, Le/ai;->a(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Le/ai;->y:I

    .line 517
    return-object p0
.end method
