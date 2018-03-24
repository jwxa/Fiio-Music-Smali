.class public final Lcom/fiio/music/util/cm;
.super Ljava/lang/Object;
.source "SortDataList.java"


# instance fields
.field private a:Lcom/fiio/music/util/f;

.field private b:Lcom/fiio/music/util/bu;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/fiio/music/util/bu;

    invoke-direct {v0}, Lcom/fiio/music/util/bu;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/cm;->b:Lcom/fiio/music/util/bu;

    .line 38
    invoke-static {}, Lcom/fiio/music/util/f;->a()Lcom/fiio/music/util/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/cm;->a:Lcom/fiio/music/util/f;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/fiio/music/util/bu;

    invoke-direct {v0}, Lcom/fiio/music/util/bu;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/cm;->b:Lcom/fiio/music/util/bu;

    .line 43
    invoke-static {}, Lcom/fiio/music/util/f;->a()Lcom/fiio/music/util/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/cm;->a:Lcom/fiio/music/util/f;

    .line 44
    iput-object p1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static a(ILjava/util/List;ILandroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    packed-switch p0, :pswitch_data_0

    move-object v0, v2

    .line 386
    :goto_0
    return-object v0

    .line 353
    :pswitch_0
    invoke-static {p1, p2}, Lcom/fiio/music/util/cm;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 354
    const-string v1, "zxy - - - - "

    const-string v2, " albumlists    : 1 "

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    const-string v0, "zxy - - - - "

    const-string v4, " albumlists    : 2 "

    invoke-static {v0, v4}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 361
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    invoke-static {v1, p2}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 376
    goto :goto_0

    .line 363
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    .line 364
    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    .line 370
    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 371
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 378
    :pswitch_2
    const-string v0, "zxy - - - - "

    const-string v1, " albumlists    : 3 "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lcom/fiio/music/b/b;

    invoke-direct {v0, p3}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    .line 380
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 383
    :pswitch_3
    const-string v0, "zxy - - - - "

    const-string v1, " albumlists    : 4 "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/fiio/music/b/b;

    invoke-direct {v0, p3}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    .line 385
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 730
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 732
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 733
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 746
    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne p1, v0, :cond_4

    .line 747
    new-instance v0, Lcom/fiio/music/util/bt;

    invoke-direct {v0}, Lcom/fiio/music/util/bt;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 752
    :goto_1
    return-object v2

    .line 735
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 738
    const-string v0, "[A-Z]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Artist;->setSortLetters(Ljava/lang/String;)V

    .line 733
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 740
    :cond_2
    const-string v0, "[0-9]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 741
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Artist;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2

    .line 743
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Artist;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2

    .line 749
    :cond_4
    new-instance v0, Lcom/fiio/music/util/bt;

    invoke-direct {v0}, Lcom/fiio/music/util/bt;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 750
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 645
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 664
    :goto_0
    return-object p1

    .line 648
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/fiio/music/util/cm;->b:Lcom/fiio/music/util/bu;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sortAllListA_Z\uff0c\u8017\u65f6="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 653
    const-string v0, "[A-Z]"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v4}, Lcom/fiio/music/entity/Song;->setSortLetters(Ljava/lang/String;)V

    .line 648
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 655
    :cond_2
    const-string v0, "[0-9]"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fiio/music/entity/Song;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2

    .line 658
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    const-string v4, "#"

    invoke-virtual {v0, v4}, Lcom/fiio/music/entity/Song;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static b(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 780
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 781
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 783
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 784
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 797
    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne p1, v0, :cond_4

    .line 798
    new-instance v0, Lcom/fiio/music/util/bs;

    invoke-direct {v0}, Lcom/fiio/music/util/bs;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 804
    :goto_1
    return-object v2

    .line 786
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 789
    const-string v0, "[A-Z]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 790
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Album;->setSortLetters(Ljava/lang/String;)V

    .line 784
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 791
    :cond_2
    const-string v0, "[0-9]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Album;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2

    .line 794
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Album;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2

    .line 800
    :cond_4
    new-instance v0, Lcom/fiio/music/util/bs;

    invoke-direct {v0}, Lcom/fiio/music/util/bs;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 801
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_1
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 706
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 707
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 709
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 710
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 723
    new-instance v0, Lcom/fiio/music/util/bt;

    invoke-direct {v0}, Lcom/fiio/music/util/bt;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 724
    return-object v2

    .line 712
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 715
    const-string v0, "[A-Z]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Artist;->setSortLetters(Ljava/lang/String;)V

    .line 710
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 717
    :cond_2
    const-string v0, "[0-9]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 718
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Artist;->setSortLetters(Ljava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Artist;->setSortLetters(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static c(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 836
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 837
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 839
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 840
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 853
    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne p1, v0, :cond_4

    .line 854
    new-instance v0, Lcom/fiio/music/util/bv;

    invoke-direct {v0}, Lcom/fiio/music/util/bv;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 859
    :goto_1
    return-object v2

    .line 842
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 845
    const-string v0, "[A-Z]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/SongStyle;->setSortLetters(Ljava/lang/String;)V

    .line 840
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 847
    :cond_2
    const-string v0, "[0-9]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 848
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/SongStyle;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2

    .line 850
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/SongStyle;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2

    .line 856
    :cond_4
    new-instance v0, Lcom/fiio/music/util/bv;

    invoke-direct {v0}, Lcom/fiio/music/util/bv;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 857
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_1
.end method

.method private static d(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 757
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 758
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 760
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 761
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 774
    new-instance v0, Lcom/fiio/music/util/bs;

    invoke-direct {v0}, Lcom/fiio/music/util/bs;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 775
    return-object v2

    .line 763
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 766
    const-string v0, "[A-Z]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Album;->setSortLetters(Ljava/lang/String;)V

    .line 761
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 768
    :cond_2
    const-string v0, "[0-9]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Album;->setSortLetters(Ljava/lang/String;)V

    goto :goto_1

    .line 771
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Album;->setSortLetters(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static e(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 812
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 813
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 815
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 816
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 829
    new-instance v0, Lcom/fiio/music/util/bv;

    invoke-direct {v0}, Lcom/fiio/music/util/bv;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 830
    return-object v2

    .line 818
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 821
    const-string v0, "[A-Z]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/SongStyle;->setSortLetters(Ljava/lang/String;)V

    .line 816
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 823
    :cond_2
    const-string v0, "[0-9]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 824
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/SongStyle;->setSortLetters(Ljava/lang/String;)V

    goto :goto_1

    .line 826
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/SongStyle;->setSortLetters(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 865
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 866
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 888
    new-instance v0, Lcom/fiio/music/util/br;

    invoke-direct {v0}, Lcom/fiio/music/util/br;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 889
    return-object v3

    .line 867
    :cond_0
    new-instance v4, Lcom/fiio/music/i/d;

    invoke-direct {v4}, Lcom/fiio/music/i/d;-><init>()V

    .line 868
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->a(Ljava/lang/String;)V

    .line 869
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->d(Ljava/lang/String;)V

    .line 870
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->c(Ljava/lang/String;)V

    .line 871
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->b(Ljava/lang/String;)V

    .line 873
    iget-object v5, p0, Lcom/fiio/music/util/cm;->a:Lcom/fiio/music/util/f;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v5, v0}, Lcom/fiio/music/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 874
    const-string v0, "0"

    .line 875
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 876
    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 879
    :cond_1
    const-string v6, "[A-Z]"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 880
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->f(Ljava/lang/String;)V

    .line 886
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 881
    :cond_2
    const-string v6, "[0-9]"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 884
    :cond_3
    const-string v0, "#"

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->f(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(ILjava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 117
    :cond_0
    return-object v3

    .line 81
    :pswitch_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 83
    invoke-direct {p0, p2}, Lcom/fiio/music/util/cm;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 85
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 86
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 87
    new-array v5, v9, [Ljava/lang/String;

    .line 88
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 89
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 90
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 91
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 92
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 98
    invoke-direct {p0, p2}, Lcom/fiio/music/util/cm;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 100
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 109
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 110
    new-array v5, v9, [Ljava/lang/String;

    .line 111
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 112
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 113
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 114
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 115
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILjava/util/List;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;I)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6392\u5e8f type=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 230
    :goto_0
    return-object v0

    .line 187
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-static {p2, p3}, Lcom/fiio/music/util/cm;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 189
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move-object v0, v2

    .line 198
    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    .line 191
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 192
    const/4 v5, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 193
    const/4 v5, 0x2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getPicPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 194
    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 195
    const/4 v5, 0x4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 196
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 200
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 203
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    invoke-static {v1, p3}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 222
    goto/16 :goto_0

    .line 204
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    .line 205
    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 208
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 209
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    .line 210
    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    const-string v6, "zxy - - - "

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "style  :    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    .line 213
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 214
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 215
    const/4 v7, 0x2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getPicPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 216
    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 217
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 224
    :pswitch_2
    new-instance v0, Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    .line 225
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 228
    :pswitch_3
    new-instance v0, Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    .line 229
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lcom/fiio/music/util/cm;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public final b(ILjava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6392\u5e8f type=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 168
    :goto_0
    return-object v0

    .line 136
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static {p2}, Lcom/fiio/music/util/cm;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 138
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move-object v0, v3

    .line 147
    goto :goto_0

    .line 139
    :cond_0
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 141
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 142
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getPicPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    .line 144
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 145
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 149
    :pswitch_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 151
    invoke-interface {v4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v1, v2

    .line 152
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v3

    .line 160
    goto/16 :goto_0

    .line 153
    :cond_1
    new-array v5, v10, [Ljava/lang/String;

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 155
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 156
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getPicPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    .line 158
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 162
    :pswitch_2
    new-instance v0, Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    .line 163
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    :pswitch_3
    new-instance v0, Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    .line 167
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b(ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6392\u5e8f type=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 280
    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    invoke-static {p2, p3}, Lcom/fiio/music/util/cm;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 258
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-static {v1, p3}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 272
    goto :goto_0

    .line 260
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    .line 261
    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 265
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    .line 266
    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 267
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 274
    :pswitch_2
    new-instance v0, Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    .line 275
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 278
    :pswitch_3
    new-instance v0, Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    .line 279
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6392\u5e8f type=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    packed-switch p1, :pswitch_data_0

    .line 335
    :goto_0
    return-object v0

    .line 301
    :pswitch_0
    invoke-static {p2}, Lcom/fiio/music/util/cm;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 313
    :pswitch_1
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 327
    :pswitch_2
    const-string v0, "zxy - - - - "

    const-string v1, " albumlists    : 3 "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/fiio/music/b/b;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    .line 329
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 332
    :pswitch_3
    const-string v0, "zxy - - - - "

    const-string v1, " albumlists    : 4 "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/fiio/music/b/b;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    .line 334
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c(ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6392\u5e8f type=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 408
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 471
    :goto_0
    return-object v0

    .line 410
    :pswitch_0
    invoke-static {p2, p3}, Lcom/fiio/music/util/cm;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 422
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    const-string v0, "zxy - - - - "

    const-string v4, " albumlists    : 2 "

    invoke-static {v0, v4}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 426
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 428
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    invoke-static {v1, p3}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 461
    goto :goto_0

    .line 428
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    .line 429
    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 434
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    .line 435
    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 436
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 463
    :pswitch_2
    new-instance v0, Lcom/fiio/music/b/b;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    .line 465
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 468
    :pswitch_3
    new-instance v0, Lcom/fiio/music/b/b;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    .line 470
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final d(ILjava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6392\u5e8f type=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 483
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 484
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 518
    :goto_0
    return-object v0

    .line 486
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-static {p2}, Lcom/fiio/music/util/cm;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 488
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move-object v0, v3

    .line 497
    goto :goto_0

    .line 489
    :cond_0
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 491
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 492
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getPicPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    .line 494
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 495
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 499
    :pswitch_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 501
    invoke-interface {v4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v1, v2

    .line 502
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v3

    .line 510
    goto/16 :goto_0

    .line 503
    :cond_1
    new-array v5, v10, [Ljava/lang/String;

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 505
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 506
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getPicPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 507
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    .line 508
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 512
    :pswitch_2
    new-instance v0, Lcom/fiio/music/b/l;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    .line 513
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 516
    :pswitch_3
    new-instance v0, Lcom/fiio/music/b/l;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    .line 517
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final d(ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 536
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 569
    :goto_0
    return-object v0

    .line 539
    :pswitch_0
    invoke-static {p2, p3}, Lcom/fiio/music/util/cm;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 543
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 544
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 547
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 548
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    invoke-static {v1, p3}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 561
    goto :goto_0

    .line 548
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    .line 549
    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 552
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 553
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    .line 554
    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 555
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 563
    :pswitch_2
    new-instance v0, Lcom/fiio/music/b/l;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    .line 564
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 567
    :pswitch_3
    new-instance v0, Lcom/fiio/music/b/l;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    .line 568
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final e(ILjava/util/List;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;I)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6392\u5e8f type=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 587
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 634
    :goto_0
    return-object v0

    .line 589
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 590
    invoke-static {p2, p3}, Lcom/fiio/music/util/cm;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 591
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move-object v0, v2

    .line 600
    goto :goto_0

    .line 592
    :cond_0
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    .line 593
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 594
    const/4 v5, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 595
    const/4 v5, 0x2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getPicPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 596
    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 597
    const/4 v5, 0x4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 598
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 602
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 605
    const-string v0, "zxy - - - "

    const-string v4, "name   :  come here  "

    invoke-static {v0, v4}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 607
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 608
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 611
    invoke-static {v1, p3}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 612
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 626
    goto/16 :goto_0

    .line 608
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    .line 609
    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 612
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 613
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    .line 614
    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 615
    const-string v6, "zxy - - - "

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "style  :    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    .line 617
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 618
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 619
    const/4 v7, 0x2

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getPicPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 620
    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 621
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 628
    :pswitch_2
    new-instance v0, Lcom/fiio/music/b/l;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    .line 629
    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 632
    :pswitch_3
    new-instance v0, Lcom/fiio/music/b/l;

    iget-object v1, p0, Lcom/fiio/music/util/cm;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    .line 633
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
