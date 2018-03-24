.class public final Le/ab;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    const-string v0, ""

    iput-object v0, p0, Le/ab;->b:Ljava/lang/String;

    .line 951
    const-string v0, ""

    iput-object v0, p0, Le/ab;->c:Ljava/lang/String;

    .line 953
    const/4 v0, -0x1

    iput v0, p0, Le/ab;->e:I

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/ab;->f:Ljava/util/List;

    .line 959
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1414
    if-ne p2, p3, :cond_1

    .line 1437
    :cond_0
    return-void

    .line 1418
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1419
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_7

    .line 1421
    :cond_2
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1422
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    add-int/lit8 v1, p2, 0x1

    .line 1430
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1431
    const-string v0, "/\\"

    invoke-static {p1, v1, p3, v0}, Le/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1432
    if-ge v2, p3, :cond_8

    move v8, v4

    .line 1433
    :goto_1
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p1

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Le/aa;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "%2e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    move v0, v4

    :goto_2
    if-nez v0, :cond_5

    const-string v0, ".."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "%2e."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".%2e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "%2e%2e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    move v0, v4

    :goto_3
    if-eqz v0, :cond_c

    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    iget-object v1, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    iget-object v1, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1435
    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    move v1, v2

    .line 1436
    goto :goto_0

    .line 1426
    :cond_7
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    iget-object v1, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, p2

    goto/16 :goto_0

    :cond_8
    move v8, v5

    .line 1432
    goto/16 :goto_1

    :cond_9
    move v0, v5

    .line 1433
    goto :goto_2

    :cond_a
    move v0, v5

    goto :goto_3

    :cond_b
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    iget-object v3, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    iget-object v3, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v8, :cond_5

    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method private static b(Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 1540
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1541
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1540
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1544
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1551
    :sswitch_1
    return v0

    .line 1541
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x10

    const/4 v1, 0x0

    .line 1557
    invoke-static {p0, p1, p2, v1}, Le/aa;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1560
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1562
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1563
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Le/ab;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    .line 1565
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1571
    :goto_1
    return-object v0

    .line 1564
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Le/ab;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 1566
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 1567
    array-length v0, v6

    if-ne v0, v7, :cond_9

    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_2
    array-length v4, v6

    if-ge v0, v4, :cond_4

    move v5, v0

    :goto_3
    if-ge v5, v7, :cond_2

    aget-byte v4, v6, v5

    if-nez v4, :cond_2

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, v6, v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_3

    :cond_2
    sub-int v4, v5, v0

    if-le v4, v2, :cond_3

    move v2, v4

    move v3, v0

    :cond_3
    add-int/lit8 v0, v5, 0x2

    goto :goto_2

    :cond_4
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    :cond_5
    :goto_4
    array-length v4, v6

    if-ge v1, v4, :cond_8

    if-ne v1, v3, :cond_6

    invoke-virtual {v0, v8}, Lf/f;->b(I)Lf/f;

    add-int/2addr v1, v2

    if-ne v1, v7, :cond_5

    invoke-virtual {v0, v8}, Lf/f;->b(I)Lf/f;

    goto :goto_4

    :cond_6
    if-lez v1, :cond_7

    invoke-virtual {v0, v8}, Lf/f;->b(I)Lf/f;

    :cond_7
    aget-byte v4, v6, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lf/f;->h(J)Lf/f;

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lf/f;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1568
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1571
    :cond_a
    invoke-static {v0}, Le/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 11

    .prologue
    .line 1576
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 1577
    const/4 v2, 0x0

    .line 1578
    const/4 v1, -0x1

    .line 1579
    const/4 v4, -0x1

    move v0, p1

    .line 1581
    :goto_0
    if-ge v0, p2, :cond_16

    .line 1582
    array-length v3, v7

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    .line 1639
    :goto_1
    return-object v0

    .line 1585
    :cond_0
    add-int/lit8 v3, v0, 0x2

    if-gt v3, p2, :cond_2

    const-string v3, "::"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0, v0, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1587
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1588
    :cond_1
    add-int/lit8 v1, v0, 0x2

    .line 1589
    add-int/lit8 v0, v2, 0x2

    .line 1591
    if-ne v1, p2, :cond_15

    move v1, v0

    .line 1632
    :goto_2
    array-length v2, v7

    if-eq v0, v2, :cond_13

    .line 1633
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    const/4 v0, 0x0

    goto :goto_1

    .line 1592
    :cond_2
    if-eqz v2, :cond_14

    .line 1594
    const-string v3, ":"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1595
    add-int/lit8 v0, v0, 0x1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1607
    :goto_3
    const/4 v3, 0x0

    move v4, v2

    .line 1609
    :goto_4
    if-ge v4, p2, :cond_f

    .line 1610
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1611
    invoke-static {v5}, Le/aa;->a(C)I

    move-result v5

    .line 1612
    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    .line 1613
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v5

    .line 1609
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1596
    :cond_3
    const-string v3, "."

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1598
    add-int/lit8 v6, v2, -0x2

    move v5, v6

    move v0, v4

    :goto_5
    if-ge v0, p2, :cond_b

    array-length v3, v7

    if-ne v5, v3, :cond_4

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-eq v5, v6, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :cond_6
    const/4 v3, 0x0

    move v4, v0

    :goto_7
    if-ge v4, p2, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_9

    const/16 v9, 0x39

    if-gt v8, v9, :cond_9

    if-nez v3, :cond_7

    if-eq v0, v4, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x30

    const/16 v8, 0xff

    if-le v3, v8, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    sub-int v0, v4, v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v5, 0x1

    int-to-byte v3, v3

    aput-byte v3, v7, v5

    move v5, v0

    move v0, v4

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v6, 0x4

    if-eq v5, v0, :cond_c

    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    const/4 v0, 0x1

    goto :goto_6

    .line 1599
    :cond_d
    add-int/lit8 v0, v2, 0x2

    .line 1600
    goto/16 :goto_2

    .line 1602
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1615
    :cond_f
    sub-int v5, v4, v2

    .line 1616
    if-eqz v5, :cond_10

    const/4 v6, 0x4

    if-le v5, v6, :cond_11

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1619
    :cond_11
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v1

    .line 1620
    add-int/lit8 v1, v5, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v7, v5

    move v10, v2

    move v2, v1

    move v1, v0

    move v0, v4

    move v4, v10

    .line 1621
    goto/16 :goto_0

    .line 1634
    :cond_12
    array-length v2, v7

    sub-int v3, v0, v1

    sub-int/2addr v2, v3

    sub-int v3, v0, v1

    invoke-static {v7, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1635
    array-length v2, v7

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v7, v1, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1639
    :cond_13
    :try_start_0
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 1641
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    goto/16 :goto_3

    :cond_15
    move v2, v1

    move v1, v0

    goto/16 :goto_3

    :cond_16
    move v0, v2

    goto/16 :goto_2
.end method

.method private static e(Ljava/lang/String;II)I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 1716
    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Le/aa;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1717
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1718
    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 1721
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 1719
    goto :goto_0

    .line 1721
    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 1020
    iget v0, p0, Le/ab;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Le/ab;->e:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Le/ab;->a:Ljava/lang/String;

    invoke-static {v0}, Le/aa;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Le/ab;
    .locals 3

    .prologue
    .line 1006
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Le/ab;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1008
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_1
    iput-object v0, p0, Le/ab;->d:Ljava/lang/String;

    .line 1010
    return-object p0
.end method

.method final a(Le/aa;Ljava/lang/String;)Le/ac;
    .locals 13

    .prologue
    .line 1291
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Le/a/c;->a(Ljava/lang/String;II)I

    move-result v2

    .line 1292
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v2, v0}, Le/a/c;->b(Ljava/lang/String;II)I

    move-result v11

    .line 1295
    sub-int v0, v11, v2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_4

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4

    :cond_1
    const/4 v0, -0x1

    .line 1296
    :cond_2
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 1297
    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1298
    const-string v0, "https"

    iput-object v0, p0, Le/ab;->a:Ljava/lang/String;

    .line 1299
    add-int/lit8 v2, v2, 0x6

    .line 1313
    :goto_1
    const/4 v9, 0x0

    .line 1314
    const/4 v8, 0x0

    .line 1315
    const/4 v0, 0x0

    move v1, v2

    :goto_2
    if-ge v1, v11, :cond_e

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_e

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1295
    :cond_4
    add-int/lit8 v0, v2, 0x1

    :goto_3
    if-ge v0, v11, :cond_9

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-lt v1, v3, :cond_5

    const/16 v3, 0x7a

    if-le v1, v3, :cond_8

    :cond_5
    const/16 v3, 0x41

    if-lt v1, v3, :cond_6

    const/16 v3, 0x5a

    if-le v1, v3, :cond_8

    :cond_6
    const/16 v3, 0x30

    if-lt v1, v3, :cond_7

    const/16 v3, 0x39

    if-le v1, v3, :cond_8

    :cond_7
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_8

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_8

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_8

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, -0x1

    goto :goto_0

    .line 1300
    :cond_a
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1301
    const-string v0, "http"

    iput-object v0, p0, Le/ab;->a:Ljava/lang/String;

    .line 1302
    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    .line 1304
    :cond_b
    sget-object v0, Le/ac;->c:Le/ac;

    .line 1409
    :goto_4
    return-object v0

    .line 1306
    :cond_c
    if-eqz p1, :cond_d

    .line 1307
    iget-object v0, p1, Le/aa;->a:Ljava/lang/String;

    iput-object v0, p0, Le/ab;->a:Ljava/lang/String;

    goto :goto_1

    .line 1309
    :cond_d
    sget-object v0, Le/ac;->b:Le/ac;

    goto :goto_4

    .line 1316
    :cond_e
    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    if-eqz p1, :cond_f

    iget-object v1, p1, Le/aa;->a:Ljava/lang/String;

    iget-object v3, p0, Le/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1326
    :cond_f
    add-int v1, v2, v0

    .line 1329
    :goto_5
    const-string v0, "@/\\?#"

    invoke-static {p2, v1, v11, v0}, Le/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    .line 1330
    if-eq v10, v11, :cond_10

    .line 1331
    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1333
    :goto_6
    sparse-switch v0, :sswitch_data_0

    goto :goto_5

    .line 1363
    :sswitch_0
    invoke-static {p2, v1, v10}, Le/ab;->b(Ljava/lang/String;II)I

    move-result v0

    .line 1364
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v10, :cond_14

    .line 1365
    invoke-static {p2, v1, v0}, Le/ab;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/ab;->d:Ljava/lang/String;

    .line 1366
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v10}, Le/ab;->e(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Le/ab;->e:I

    .line 1367
    iget v0, p0, Le/ab;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    sget-object v0, Le/ac;->d:Le/ac;

    goto :goto_4

    .line 1331
    :cond_10
    const/4 v0, -0x1

    goto :goto_6

    .line 1336
    :sswitch_1
    if-nez v8, :cond_13

    .line 1337
    const/16 v0, 0x3a

    invoke-static {p2, v1, v10, v0}, Le/a/c;->a(Ljava/lang/String;IIC)I

    move-result v2

    .line 1339
    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Le/aa;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1341
    if-eqz v9, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/ab;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    iput-object v0, p0, Le/ab;->b:Ljava/lang/String;

    .line 1344
    if-eq v2, v10, :cond_12

    .line 1345
    const/4 v8, 0x1

    .line 1346
    add-int/lit8 v1, v2, 0x1

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Le/aa;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/ab;->c:Ljava/lang/String;

    :cond_12
    move v0, v8

    .line 1349
    const/4 v1, 0x1

    .line 1354
    :goto_7
    add-int/lit8 v2, v10, 0x1

    move v8, v0

    move v9, v1

    move v1, v2

    .line 1355
    goto :goto_5

    .line 1351
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Le/aa;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/ab;->c:Ljava/lang/String;

    move v0, v8

    move v1, v9

    goto :goto_7

    .line 1369
    :cond_14
    invoke-static {p2, v1, v0}, Le/ab;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/ab;->d:Ljava/lang/String;

    .line 1370
    iget-object v0, p0, Le/ab;->a:Ljava/lang/String;

    invoke-static {v0}, Le/aa;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/ab;->e:I

    .line 1372
    :cond_15
    iget-object v0, p0, Le/ab;->d:Ljava/lang/String;

    if-nez v0, :cond_16

    sget-object v0, Le/ac;->e:Le/ac;

    goto/16 :goto_4

    :cond_16
    move v2, v10

    .line 1391
    :cond_17
    :goto_8
    const-string v0, "?#"

    invoke-static {p2, v2, v11, v0}, Le/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1392
    invoke-direct {p0, p2, v2, v0}, Le/ab;->a(Ljava/lang/String;II)V

    .line 1396
    if-ge v0, v11, :cond_1b

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1b

    .line 1397
    const/16 v1, 0x23

    invoke-static {p2, v0, v11, v1}, Le/a/c;->a(Ljava/lang/String;IIC)I

    move-result v2

    .line 1398
    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Le/aa;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/aa;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/ab;->g:Ljava/util/List;

    .line 1404
    :goto_9
    if-ge v2, v11, :cond_18

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_18

    .line 1405
    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move v2, v11

    invoke-static/range {v0 .. v7}, Le/aa;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/ab;->h:Ljava/lang/String;

    .line 1409
    :cond_18
    sget-object v0, Le/ac;->a:Le/ac;

    goto/16 :goto_4

    .line 1379
    :cond_19
    invoke-virtual {p1}, Le/aa;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/ab;->b:Ljava/lang/String;

    .line 1380
    invoke-virtual {p1}, Le/aa;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/ab;->c:Ljava/lang/String;

    .line 1381
    iget-object v0, p1, Le/aa;->b:Ljava/lang/String;

    iput-object v0, p0, Le/ab;->d:Ljava/lang/String;

    .line 1382
    iget v0, p1, Le/aa;->c:I

    iput v0, p0, Le/ab;->e:I

    .line 1383
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1384
    iget-object v0, p0, Le/ab;->f:Ljava/util/List;

    invoke-virtual {p1}, Le/aa;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1385
    if-eq v2, v11, :cond_1a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_17

    .line 1386
    :cond_1a
    invoke-virtual {p1}, Le/aa;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/ab;->b(Ljava/lang/String;)Le/ab;

    goto :goto_8

    :cond_1b
    move v2, v0

    goto :goto_9

    .line 1333
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Le/aa;
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Le/ab;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_0
    iget-object v0, p0, Le/ab;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    :cond_1
    new-instance v0, Le/aa;

    invoke-direct {v0, p0}, Le/aa;-><init>(Le/ab;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Le/ab;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1119
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1121
    invoke-static/range {v0 .. v5}, Le/aa;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-static {v0}, Le/aa;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Le/ab;->g:Ljava/util/List;

    .line 1123
    return-object p0

    .line 1120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1240
    iget-object v1, p0, Le/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    iget-object v1, p0, Le/ab;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/ab;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1244
    :cond_0
    iget-object v1, p0, Le/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    iget-object v1, p0, Le/ab;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1247
    iget-object v1, p0, Le/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1252
    :cond_2
    iget-object v1, p0, Le/ab;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 1254
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1255
    iget-object v1, p0, Le/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1261
    :goto_0
    invoke-virtual {p0}, Le/ab;->a()I

    move-result v1

    .line 1262
    iget-object v2, p0, Le/ab;->a:Ljava/lang/String;

    invoke-static {v2}, Le/aa;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1263
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    :cond_3
    iget-object v1, p0, Le/ab;->f:Ljava/util/List;

    invoke-static {v0, v1}, Le/aa;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1269
    iget-object v1, p0, Le/ab;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1270
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1271
    iget-object v1, p0, Le/ab;->g:Ljava/util/List;

    invoke-static {v0, v1}, Le/aa;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1274
    :cond_4
    iget-object v1, p0, Le/ab;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1275
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1276
    iget-object v1, p0, Le/ab;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1258
    :cond_6
    iget-object v1, p0, Le/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
