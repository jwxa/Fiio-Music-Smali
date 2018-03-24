.class final Lcom/a/a/q;
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
        "Ljava/sql/Date;",
        ">;",
        "Lcom/a/a/bk",
        "<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/q;->a:Ljava/text/DateFormat;

    .line 395
    return-void
.end method

.method private a(Ljava/sql/Date;)Lcom/a/a/ba;
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/a/a/q;->a:Ljava/text/DateFormat;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/a/a/q;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v2, Lcom/a/a/bg;

    invoke-direct {v2, v0}, Lcom/a/a/bg;-><init>(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/a/a/ba;)Ljava/sql/Date;
    .locals 6

    .prologue
    .line 407
    instance-of v0, p1, Lcom/a/a/bg;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcom/a/a/bf;

    const-string v1, "The date should be a string value"

    invoke-direct {v0, v1}, Lcom/a/a/bf;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/a/a/q;->a:Ljava/text/DateFormat;

    monitor-enter v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :try_start_1
    iget-object v0, p0, Lcom/a/a/q;->a:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/a/a/ba;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 413
    new-instance v2, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 414
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    new-instance v1, Lcom/a/a/bl;

    invoke-direct {v1, v0}, Lcom/a/a/bl;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;
    .locals 1

    .prologue
    .line 390
    check-cast p1, Ljava/sql/Date;

    invoke-direct {p0, p1}, Lcom/a/a/q;->a(Ljava/sql/Date;)Lcom/a/a/ba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/av;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/a/a/q;->a(Lcom/a/a/ba;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method
