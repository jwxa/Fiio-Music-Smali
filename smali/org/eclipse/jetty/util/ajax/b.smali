.class final Lorg/eclipse/jetty/util/ajax/b;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Output;


# instance fields
.field a:C

.field final synthetic b:Lorg/eclipse/jetty/util/ajax/JSON;

.field private final c:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 1330
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/b;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    const/16 v0, 0x7b

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    .line 1331
    iput-object p2, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    .line 1332
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;B)V
    .locals 0

    .prologue
    .line 1324
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/b;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1338
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 1339
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    const-string v1, "{}"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1346
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    const-string v1, "}"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1343
    :catch_0
    move-exception v0

    .line 1345
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1351
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1353
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1354
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    .line 1355
    return-void
.end method

.method public final add(Ljava/lang/String;D)V
    .locals 4

    .prologue
    .line 1396
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    if-nez v0, :cond_0

    .line 1397
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :catch_0
    move-exception v0

    .line 1406
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1398
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1399
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1401
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    .line 1402
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1407
    return-void
.end method

.method public final add(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 1414
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    if-nez v0, :cond_0

    .line 1415
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    :catch_0
    move-exception v0

    .line 1424
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1416
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1417
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1419
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    .line 1420
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1425
    return-void
.end method

.method public final add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1378
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    if-nez v0, :cond_0

    .line 1379
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :catch_0
    move-exception v0

    .line 1388
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1380
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1381
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1383
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1384
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1389
    return-void
.end method

.method public final add(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 1432
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    if-nez v0, :cond_0

    .line 1433
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :catch_0
    move-exception v0

    .line 1442
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1434
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1435
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1437
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/b;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    if-eqz p2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    .line 1438
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    .line 1443
    return-void

    .line 1437
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final addClass(Ljava/lang/Class;)V
    .locals 3

    .prologue
    .line 1361
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    :catch_0
    move-exception v0

    .line 1370
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1363
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1364
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    const-string v1, "\"class\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1365
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/b;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/b;->c:Ljava/lang/Appendable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1366
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/b;->a:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1371
    return-void
.end method
