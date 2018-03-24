.class final Lcom/a/a/r;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/a/a/ay;
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/ay",
        "<",
        "Ljava/sql/Time;",
        ">;",
        "Lcom/a/a/bk",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/r;->a:Ljava/text/DateFormat;

    .line 433
    return-void
.end method

.method private a(Ljava/sql/Time;)Lcom/a/a/ba;
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lcom/a/a/r;->a:Ljava/text/DateFormat;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/a/a/r;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v2, Lcom/a/a/bg;

    invoke-direct {v2, v0}, Lcom/a/a/bg;-><init>(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/a/a/ba;)Ljava/sql/Time;
    .locals 6

    .prologue
    .line 442
    instance-of v0, p1, Lcom/a/a/bg;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lcom/a/a/bf;

    const-string v1, "The date should be a string value"

    invoke-direct {v0, v1}, Lcom/a/a/bf;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/a/a/r;->a:Ljava/text/DateFormat;

    monitor-enter v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :try_start_1
    iget-object v0, p0, Lcom/a/a/r;->a:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/a/a/ba;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 448
    new-instance v2, Ljava/sql/Time;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Time;-><init>(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 449
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    new-instance v1, Lcom/a/a/bl;

    invoke-direct {v1, v0}, Lcom/a/a/bl;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;
    .locals 1

    .prologue
    .line 429
    check-cast p1, Ljava/sql/Time;

    invoke-direct {p0, p1}, Lcom/a/a/r;->a(Ljava/sql/Time;)Lcom/a/a/ba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/av;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/a/a/r;->a(Lcom/a/a/ba;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method
