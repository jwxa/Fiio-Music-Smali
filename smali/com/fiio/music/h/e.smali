.class public Lcom/fiio/music/h/e;
.super Ljava/lang/Object;
.source "LyricLoadHelper.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/fiio/music/h/g;

.field private f:Z

.field private g:I

.field private final h:Ljava/util/regex/Pattern;

.field private final i:Ljava/util/regex/Pattern;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xyz"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/fiio/music/h/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/h/e;->d:Ljava/util/ArrayList;

    .line 94
    iput-object v2, p0, Lcom/fiio/music/h/e;->e:Lcom/fiio/music/h/g;

    .line 96
    iput-boolean v1, p0, Lcom/fiio/music/h/e;->f:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/h/e;->g:I

    .line 103
    const-string v0, "(?<=\\[).*?(?=\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/h/e;->h:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "(?<=\\[)(\\d{2}:\\d{2}\\.?\\d{0,3})(?=\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/h/e;->i:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/fiio/music/h/e;->j:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/fiio/music/h/e;->k:Z

    .line 111
    iput-object v2, p0, Lcom/fiio/music/h/e;->l:Ljava/lang/String;

    .line 113
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/h/e;->a:Ljava/util/concurrent/ExecutorService;

    .line 117
    iput-boolean v1, p0, Lcom/fiio/music/h/e;->m:Z

    .line 459
    iput v1, p0, Lcom/fiio/music/h/e;->n:I

    .line 56
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 647
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->d:Landroid/content/Context;

    const-string v1, "LyricAdjustment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/fiio/music/h/e;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 650
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 652
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 315
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/h/e;->g()I

    move-result v3

    .line 322
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    const-string v0, "10:00.00"

    invoke-static {v0}, Lcom/fiio/music/h/e;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 325
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 326
    iget-object v2, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/fiio/music/i/a;

    invoke-direct {v3, v0, v1, p1}, Lcom/fiio/music/i/a;-><init>(JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/h/e;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 333
    const/4 v1, -0x1

    .line 334
    const/4 v0, -0x1

    .line 338
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_5

    .line 368
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_b

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fiio/music/h/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 378
    :goto_2
    iget-boolean v0, p0, Lcom/fiio/music/h/e;->k:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "line content match-->"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    invoke-static {v0}, Lcom/fiio/music/h/e;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 383
    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 384
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    new-instance v6, Lcom/fiio/music/i/a;

    invoke-direct {v6, v4, v5, v1}, Lcom/fiio/music/i/a;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 344
    :cond_5
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 346
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    sub-int v7, v2, v1

    add-int/lit8 v8, v0, 0x2

    if-le v7, v8, :cond_7

    .line 350
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 349
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fiio/music/h/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 359
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 361
    :cond_7
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 365
    iget-boolean v1, p0, Lcom/fiio/music/h/e;->k:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "time match--->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v1, v2

    goto/16 :goto_1

    .line 351
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-static {v0}, Lcom/fiio/music/h/e;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 354
    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_6

    .line 355
    iget-boolean v0, p0, Lcom/fiio/music/h/e;->k:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "line content match-->"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    new-instance v10, Lcom/fiio/music/i/a;

    invoke-direct {v10, v8, v9, v1}, Lcom/fiio/music/i/a;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 376
    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fiio/music/h/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 392
    .line 394
    iget-object v0, p0, Lcom/fiio/music/h/e;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 395
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    return-object p1

    .line 396
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)J
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v10, 0x1

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 405
    new-instance v1, Ljava/lang/String;

    const-string v0, "00:00:00"

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/String;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 409
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 410
    if-gez v2, :cond_1

    .line 419
    :goto_0
    const-wide/16 v2, 0x0

    move v1, v4

    .line 421
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 446
    const-string v1, "%d.%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v4

    aput-object v0, v5, v10

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    :goto_1
    return-wide v0

    .line 412
    :cond_1
    if-nez v2, :cond_2

    .line 413
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p0, v1

    .line 414
    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 416
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p0, v1

    goto :goto_0

    .line 422
    :cond_3
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 424
    if-lez v5, :cond_4

    .line 425
    mul-long/2addr v2, v12

    .line 426
    const/4 v8, 0x0

    .line 427
    :try_start_0
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v2, v8

    .line 428
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 439
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 440
    const/4 v5, 0x3

    if-le v1, v5, :cond_0

    move-wide v0, v6

    .line 441
    goto :goto_1

    .line 429
    :cond_4
    if-gez v5, :cond_5

    .line 430
    mul-long/2addr v2, v12

    .line 431
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v2, v8

    .line 432
    const-string p0, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    move-wide v0, v6

    .line 434
    goto :goto_1

    .line 437
    :catch_0
    move-exception v0

    move-wide v0, v6

    goto :goto_1
.end method

.method private g()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 659
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->d:Landroid/content/Context;

    const-string v1, "LyricAdjustment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 660
    iget-object v1, p0, Lcom/fiio/music/h/e;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 661
    return v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/fiio/music/h/e;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/h/e;->b(J)I

    move-result v0

    .line 256
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/fiio/music/h/e;->g:I

    if-eq v0, v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/fiio/music/h/e;->e:Lcom/fiio/music/h/g;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/fiio/music/h/e;->e:Lcom/fiio/music/h/g;

    invoke-interface {v1, v0}, Lcom/fiio/music/h/g;->a(I)V

    .line 261
    :cond_0
    iput v0, p0, Lcom/fiio/music/h/e;->g:I

    .line 264
    :cond_1
    return-void
.end method

.method public final a(Lcom/fiio/music/h/g;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fiio/music/h/e;->e:Lcom/fiio/music/h/g;

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 156
    iput-boolean v1, p0, Lcom/fiio/music/h/e;->f:Z

    .line 157
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    if-eqz p1, :cond_2

    .line 160
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    iput-object p1, p0, Lcom/fiio/music/h/e;->l:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fiio/music/util/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    .line 167
    const-string v3, "Big5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    const-string v0, "GBK"

    .line 172
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/fiio/music/h/e;->j:Ljava/lang/String;

    .line 174
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/h/e;->f:Z

    .line 179
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 180
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/fiio/music/h/e;->j:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 184
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    .line 190
    new-instance v2, Lcom/fiio/music/h/f;

    invoke-direct {v2, p0}, Lcom/fiio/music/h/f;-><init>(Lcom/fiio/music/h/e;)V

    .line 189
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v1

    .line 206
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_7

    .line 210
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    .line 211
    const-wide/32 v4, 0x7fffffff

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/i/a;->b(J)V

    .line 212
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/h/e;->e:Lcom/fiio/music/h/g;

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/fiio/music/h/e;->e:Lcom/fiio/music/h/g;

    iget-object v1, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    .line 225
    iget v2, p0, Lcom/fiio/music/h/e;->g:I

    .line 224
    invoke-interface {v0, v1, v2}, Lcom/fiio/music/h/g;->a(Ljava/util/List;I)V

    .line 228
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/fiio/music/h/e;->d:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 236
    :goto_4
    iget-boolean v0, p0, Lcom/fiio/music/h/e;->f:Z

    if-eqz v0, :cond_9

    .line 237
    sget-object v0, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lyric file existed.Lyric has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    const-string v2, " Sentences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_5
    iget-boolean v0, p0, Lcom/fiio/music/h/e;->f:Z

    return v0

    .line 169
    :cond_4
    const-string v3, "windows-1252"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const-string v0, "Unicode"

    goto/16 :goto_0

    .line 185
    :cond_5
    :try_start_2
    iget-boolean v2, p0, Lcom/fiio/music/h/e;->k:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lyric line:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_6
    invoke-direct {p0, v0}, Lcom/fiio/music/h/e;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 214
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 207
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    .line 208
    iget-object v1, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/i/a;

    invoke-virtual {v1}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v4

    .line 207
    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/i/a;->b(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 206
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 219
    :cond_8
    sget-object v0, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    const-string v1, "\u6b4c\u8bcd\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 231
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 232
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 240
    :cond_9
    sget-object v0, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    const-string v1, "Lyric file does not existed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public final b(J)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 267
    .line 268
    iget v0, p0, Lcom/fiio/music/h/e;->g:I

    if-ltz v0, :cond_8

    .line 270
    iget v1, p0, Lcom/fiio/music/h/e;->g:I

    .line 274
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v4

    .line 276
    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    move v0, v1

    .line 309
    :goto_1
    return v0

    .line 281
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 283
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v4

    .line 283
    cmp-long v0, v4, p1

    if-lez v0, :cond_2

    .line 288
    :cond_1
    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 285
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 289
    :cond_3
    cmp-long v0, p1, v4

    if-gez v0, :cond_7

    .line 291
    if-nez v1, :cond_4

    move v0, v2

    .line 292
    goto :goto_1

    .line 294
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 296
    :goto_3
    if-lez v1, :cond_5

    .line 297
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 296
    cmp-long v0, v4, p1

    if-gtz v0, :cond_6

    :cond_5
    move v0, v1

    .line 301
    goto :goto_1

    .line 298
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 304
    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 308
    sget-object v0, Lcom/fiio/music/h/e;->b:Ljava/lang/String;

    const-string v1, "\u65b0\u7684\u6b4c\u8bcd\u8f7d\u5165\u4e86\uff0c\u6240\u4ee5\u4ea7\u751f\u4e86\u8d8a\u754c\u9519\u8bef\uff0c\u4e0d\u7528\u7406\u4f1a\uff0c\u8fd4\u56de0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 309
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/fiio/music/h/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    .line 462
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/h/e;->n:I

    .line 472
    invoke-direct {p0}, Lcom/fiio/music/h/e;->g()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/fiio/music/h/e;->a(I)V

    .line 479
    return-void

    .line 462
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    .line 463
    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/i/a;->a(J)V

    .line 465
    invoke-virtual {v0}, Lcom/fiio/music/i/a;->c()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/i/a;->b(J)V

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 482
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/h/e;->n:I

    .line 489
    invoke-direct {p0}, Lcom/fiio/music/h/e;->g()I

    move-result v0

    add-int/lit16 v0, v0, -0x1f4

    invoke-direct {p0, v0}, Lcom/fiio/music/h/e;->a(I)V

    .line 495
    return-void

    .line 482
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    .line 483
    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/i/a;->a(J)V

    .line 484
    invoke-virtual {v0}, Lcom/fiio/music/i/a;->c()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/i/a;->b(J)V

    goto :goto_0
.end method

.method public final e()V
    .locals 8

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/fiio/music/h/e;->g()I

    move-result v1

    .line 667
    iget-object v0, p0, Lcom/fiio/music/h/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fiio/music/h/e;->a(I)V

    .line 676
    return-void

    .line 667
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    .line 668
    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v4

    int-to-long v6, v1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/i/a;->a(J)V

    .line 669
    invoke-virtual {v0}, Lcom/fiio/music/i/a;->c()J

    move-result-wide v4

    int-to-long v6, v1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/i/a;->b(J)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 679
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->d:Landroid/content/Context;

    const-string v1, "LyricAdjustment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 680
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 681
    iget-object v2, p0, Lcom/fiio/music/h/e;->l:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/fiio/music/h/e;->l:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 684
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 685
    return-void
.end method
