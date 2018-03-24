.class final Lcom/fiio/music/service/ae;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method private constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/service/MediaPlayerService;B)V
    .locals 0

    .prologue
    .line 1413
    invoke-direct {p0, p1}, Lcom/fiio/music/service/ae;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1450
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/SongStyle;)V

    .line 1452
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->g()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->g()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1458
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v5

    .line 1460
    if-eqz v5, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->N(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/b/l;->a()Ljava/util/List;

    move-result-object v0

    .line 1464
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v3, "tabDFm"

    invoke-virtual {v1, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 1465
    iget-object v3, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v3

    const-string v6, "sortDFm"

    invoke-virtual {v3, v6}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 1466
    iget-object v6, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    new-instance v7, Lcom/fiio/music/util/cm;

    iget-object v8, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v8}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/util/cm;)V

    .line 1467
    iget-object v6, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v6}, Lcom/fiio/music/service/MediaPlayerService;->P(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cm;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v3}, Lcom/fiio/music/util/cm;->d(ILjava/util/List;I)Ljava/util/List;

    move-result-object v6

    move v1, v2

    move v3, v4

    .line 1472
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1492
    if-eq v3, v4, :cond_0

    .line 1493
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    .line 1495
    const-string v1, "zxy - - - "

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nextStyle  :   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1495
    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/SongStyle;)V

    .line 1505
    :cond_0
    return-void

    .line 1473
    :cond_1
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1474
    if-eqz v5, :cond_2

    .line 1475
    invoke-virtual {v5}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1476
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1477
    invoke-virtual {v5}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1478
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 1480
    add-int/lit8 v3, v1, 0x1

    .line 1472
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1482
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->Q(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    move v3, v2

    .line 1483
    goto :goto_1
.end method

.method private a(IILjava/lang/String;Ljava/io/File;)V
    .locals 6

    .prologue
    .line 1796
    :goto_0
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1856
    :goto_1
    return-void

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    .line 1800
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1799
    invoke-static {v0, p1, p2}, Lcom/fiio/music/util/an;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 1801
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 1802
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    const/4 v0, 0x0

    move v1, v0

    .line 1811
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 1814
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1816
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1817
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->X(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1818
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0, v2, p1, p2}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Ljava/util/List;II)V

    .line 1825
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1826
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1828
    :cond_2
    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    goto :goto_0

    .line 1808
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1809
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v4

    .line 1810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1809
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1810
    if-nez v0, :cond_1

    .line 1811
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1831
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1835
    :cond_5
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1836
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->Q(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1838
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    .line 1839
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/an;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1838
    if-eqz v0, :cond_6

    .line 1841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/an;->a(Ljava/util/List;)V

    .line 1844
    new-instance p4, Ljava/io/File;

    const-string v0, "/mnt"

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1847
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->X(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1848
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0, v3, p1, p2}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Ljava/util/List;II)V

    .line 1851
    :cond_7
    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    goto/16 :goto_0
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1512
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Artist;)V

    .line 1513
    const-string v0, "zxy - - - - "

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  getBooleanWhile : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/util/an;->c()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1513
    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->g()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1519
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->g()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v5

    .line 1523
    if-eqz v5, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->R(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/b/c;->a()Ljava/util/List;

    move-result-object v0

    .line 1527
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v3, "tabBFm"

    invoke-virtual {v1, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 1528
    iget-object v3, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v3

    const-string v6, "sortBFm"

    invoke-virtual {v3, v6}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 1529
    iget-object v6, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    new-instance v7, Lcom/fiio/music/util/cm;

    iget-object v8, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v8}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/util/cm;)V

    .line 1530
    iget-object v6, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v6}, Lcom/fiio/music/service/MediaPlayerService;->P(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cm;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v3}, Lcom/fiio/music/util/cm;->b(ILjava/util/List;I)Ljava/util/List;

    move-result-object v6

    move v1, v2

    move v3, v4

    .line 1535
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1555
    if-eq v3, v4, :cond_0

    .line 1556
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    .line 1558
    const-string v1, "zxy - - - "

    .line 1559
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nextAlbum  :   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1558
    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Artist;)V

    .line 1568
    :cond_0
    return-void

    .line 1536
    :cond_1
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1537
    if-eqz v5, :cond_2

    .line 1538
    invoke-virtual {v5}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1539
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1540
    invoke-virtual {v5}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1541
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 1543
    add-int/lit8 v3, v1, 0x1

    .line 1535
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1545
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->Q(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    move v3, v2

    .line 1546
    goto :goto_1
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1575
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0, v4}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Album;)V

    .line 1577
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->g()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v1}, Lcom/fiio/music/service/MediaPlayerService;->g()Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 1583
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v6

    .line 1585
    if-eqz v6, :cond_0

    .line 1587
    iget-object v2, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/util/an;->f()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move-object v1, v0

    :goto_0
    move v2, v3

    move v4, v5

    .line 1663
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 1684
    if-eq v4, v5, :cond_4

    .line 1685
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    .line 1687
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Album;)V

    .line 1749
    :cond_0
    :goto_2
    return-void

    .line 1592
    :sswitch_0
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    .line 1594
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v4}, Lcom/fiio/music/service/MediaPlayerService;->d(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V

    .line 1597
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->S(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->d(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V

    .line 1601
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->N(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/l;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1604
    const-string v1, "zxy - - - -"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  albumlists  11 :      "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 1606
    goto :goto_0

    .line 1610
    :sswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->T(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/b/b;->c()Ljava/util/List;

    move-result-object v0

    .line 1612
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabCFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 1613
    iget-object v2, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v2

    const-string v4, "sortCFm"

    invoke-virtual {v2, v4}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 1614
    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v4

    const-string v7, "tabCNandF"

    invoke-virtual {v4, v7}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1615
    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    new-instance v7, Lcom/fiio/music/util/cm;

    iget-object v8, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v8}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/util/cm;)V

    .line 1623
    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->P(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cm;

    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v4}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v0, v2, v4}, Lcom/fiio/music/util/cm;->a(ILjava/util/List;ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1626
    goto/16 :goto_0

    .line 1630
    :sswitch_2
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    .line 1632
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v4}, Lcom/fiio/music/service/MediaPlayerService;->e(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V

    .line 1635
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->S(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1637
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->e(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V

    .line 1638
    const-string v1, "zxy - - - -"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  artistID  11 :      "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->U(Lcom/fiio/music/service/MediaPlayerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "sortBFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1640
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabBfmFir"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1648
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->R(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1652
    const-string v1, "zxy - - - -"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  artist  albumlists size  :      "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    .line 1665
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1666
    if-eqz v6, :cond_2

    .line 1667
    invoke-virtual {v6}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1668
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1669
    invoke-virtual {v6}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1670
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 1672
    add-int/lit8 v4, v2, 0x1

    .line 1663
    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 1674
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->Q(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->f()I

    move-result v0

    const/16 v7, 0x21

    if-ne v0, v7, :cond_2

    move v4, v3

    .line 1675
    goto :goto_3

    .line 1694
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1695
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1698
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1730
    :cond_6
    :goto_4
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1738
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    .line 1739
    const-string v1, "zxy - - - - "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nextAlbumInOut 1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Album;)V

    goto/16 :goto_2

    .line 1700
    :sswitch_3
    invoke-direct {p0}, Lcom/fiio/music/service/ae;->a()V

    .line 1702
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->V(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1704
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->N(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->V(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/SongStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/l;->e(Ljava/lang/String;)I

    move-result v0

    .line 1706
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1708
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->d(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V

    .line 1710
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->N(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/l;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 1717
    :sswitch_4
    invoke-direct {p0}, Lcom/fiio/music/service/ae;->b()V

    .line 1718
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->W(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1720
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->R(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->W(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->c(Ljava/lang/String;)I

    move-result v0

    .line 1723
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1725
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->e(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V

    .line 1727
    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->R(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_4

    .line 1587
    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_2
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch

    .line 1698
    :sswitch_data_1
    .sparse-switch
        0x16 -> :sswitch_4
        0x2c -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 1416
    const-string v0, "zxy - - - -"

    const-string v1, "come run method "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->e(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1438
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1420
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fiio/music/service/MediaPlayerService;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabEFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "AZtabEFM"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v2}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    iget-object v2, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v2}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v4}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/fiio/music/util/an;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v5}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiio/music/util/an;->e()V

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fiio/music/service/ae;->a(IILjava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v5}, Lcom/fiio/music/service/MediaPlayerService;->X(Lcom/fiio/music/service/MediaPlayerService;)V

    iget-object v5, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v5, v4, v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Ljava/util/List;II)V

    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/util/an;->d()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/fiio/music/service/ae;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/util/an;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fiio/music/service/ae;->a(IILjava/lang/String;Ljava/io/File;)V

    goto/16 :goto_0

    .line 1426
    :pswitch_2
    invoke-direct {p0}, Lcom/fiio/music/service/ae;->c()V

    goto/16 :goto_0

    .line 1431
    :pswitch_3
    invoke-direct {p0}, Lcom/fiio/music/service/ae;->b()V

    goto/16 :goto_0

    .line 1436
    :pswitch_4
    invoke-direct {p0}, Lcom/fiio/music/service/ae;->a()V

    goto/16 :goto_0

    .line 1418
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
