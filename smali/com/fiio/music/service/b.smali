.class final Lcom/fiio/music/service/b;
.super Ljava/lang/Object;
.source "CrPlayList.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/fiio/music/service/a;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fiio/music/service/a;)V
    .locals 1

    .prologue
    .line 595
    iput-object p1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    .line 597
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    .line 598
    return-void
.end method

.method private static a(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 746
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 747
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 748
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 749
    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 721
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 735
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v1}, Lcom/fiio/music/service/a;->a(Lcom/fiio/music/service/a;)V

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 725
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v1}, Lcom/fiio/music/service/a;->d(Lcom/fiio/music/service/a;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 726
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-virtual {v1}, Lcom/fiio/music/service/a;->b()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/service/b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/service/b;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/fiio/music/service/b;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v1, p0, Lcom/fiio/music/service/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 727
    :cond_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v0

    .line 730
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->e(Lcom/fiio/music/service/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->e(Lcom/fiio/music/service/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final a()Lcom/fiio/music/entity/Song;
    .locals 4

    .prologue
    .line 606
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->a(Lcom/fiio/music/service/a;)V

    .line 608
    invoke-static {}, Lcom/fiio/music/service/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomPlayerManager - getNextSong"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v2}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    invoke-direct {p0}, Lcom/fiio/music/service/b;->f()V

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/b;->a(Ljava/util/List;)I

    move-result v0

    .line 617
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v1}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/fiio/music/service/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 620
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/b;->a(Ljava/util/List;)I

    move-result v0

    .line 622
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 623
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v1}, Lcom/fiio/music/service/a;->c(Lcom/fiio/music/service/a;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 624
    iget-object v2, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v2, v0}, Lcom/fiio/music/service/a;->a(Lcom/fiio/music/service/a;I)V

    .line 626
    invoke-static {}, Lcom/fiio/music/service/a;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNextSong songName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-object v1
.end method

.method public final b()Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->a(Lcom/fiio/music/service/a;)V

    .line 635
    invoke-static {}, Lcom/fiio/music/service/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomPlayerManager - previousSong"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/b;->a(Ljava/util/List;)I

    move-result v0

    .line 650
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 651
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v1}, Lcom/fiio/music/service/a;->c(Lcom/fiio/music/service/a;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 652
    iget-object v2, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v2, v0}, Lcom/fiio/music/service/a;->a(Lcom/fiio/music/service/a;I)V

    .line 653
    return-object v1

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    invoke-direct {p0}, Lcom/fiio/music/service/b;->f()V

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/b;->a(Ljava/util/List;)I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v1}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/fiio/music/service/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/b;->a(Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public final c()Lcom/fiio/music/entity/Song;
    .locals 4

    .prologue
    .line 658
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->a(Lcom/fiio/music/service/a;)V

    .line 660
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/fiio/music/service/b;->f()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 665
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 666
    iget-object v2, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v2}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v2

    invoke-static {v2, v0}, Lcom/fiio/music/service/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 667
    add-int/lit8 v0, v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 669
    const/4 v0, 0x0

    .line 680
    :goto_0
    return-object v0

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 673
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 674
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->c(Lcom/fiio/music/service/a;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v2}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 678
    invoke-static {}, Lcom/fiio/music/service/a;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "peekNextSong - songName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()Lcom/fiio/music/entity/Song;
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->a(Lcom/fiio/music/service/a;)V

    .line 687
    iget-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/fiio/music/service/b;->f()V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 694
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 695
    iget-object v2, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v2}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v2

    invoke-static {v2, v0}, Lcom/fiio/music/service/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    iget-object v0, p0, Lcom/fiio/music/service/b;->d:Ljava/util/List;

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 702
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 703
    invoke-static {}, Lcom/fiio/music/service/a;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "random cr cann\'t move to new Position - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " remove"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 705
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 706
    invoke-static {}, Lcom/fiio/music/service/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "random cr cann\'t move again , return null"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v0, 0x0

    .line 717
    :goto_2
    return-object v0

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-virtual {v0}, Lcom/fiio/music/service/a;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v0}, Lcom/fiio/music/service/a;->c(Lcom/fiio/music/service/a;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    iget-object v1, v1, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/fiio/music/service/b;->b:Lcom/fiio/music/service/a;

    invoke-static {v2}, Lcom/fiio/music/service/a;->b(Lcom/fiio/music/service/a;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/fiio/music/service/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 754
    invoke-direct {p0}, Lcom/fiio/music/service/b;->f()V

    .line 755
    return-void
.end method
