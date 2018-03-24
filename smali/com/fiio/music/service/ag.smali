.class final Lcom/fiio/music/service/ag;
.super Ljava/lang/Object;
.source "PlayList.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/fiio/music/service/af;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fiio/music/service/af;)V
    .locals 1

    .prologue
    .line 530
    iput-object p1, p0, Lcom/fiio/music/service/ag;->b:Lcom/fiio/music/service/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    .line 532
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    .line 533
    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/fiio/music/entity/Song;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)",
            "Lcom/fiio/music/entity/Song;"
        }
    .end annotation

    .prologue
    .line 696
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 697
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 698
    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 691
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/service/ag;->b:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/fiio/music/service/ag;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/service/ag;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/fiio/music/service/ag;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v1, p0, Lcom/fiio/music/service/ag;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 692
    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/ag;->b:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/util/List;Lcom/fiio/music/entity/Song;)I

    move-result v0

    .line 556
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 558
    iget-object v1, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    invoke-direct {p0}, Lcom/fiio/music/service/ag;->d()V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/ag;->a(Ljava/util/List;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 574
    invoke-static {p1, v0}, Lcom/fiio/music/service/af;->a(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Song;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    iget-object v1, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/ag;->a(Ljava/util/List;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 578
    :cond_3
    return-object v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 540
    iget-object v1, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/fiio/music/service/ag;->d()V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 587
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 588
    invoke-static {p1, v0}, Lcom/fiio/music/service/af;->a(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Song;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 589
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 591
    :cond_1
    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 649
    invoke-direct {p0}, Lcom/fiio/music/service/ag;->d()V

    .line 650
    return-void
.end method

.method public final c(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/ag;->a(Ljava/util/List;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 618
    :cond_0
    :goto_0
    return-object v0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    invoke-direct {p0}, Lcom/fiio/music/service/ag;->d()V

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/ag;->a(Ljava/util/List;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 606
    invoke-static {p1, v0}, Lcom/fiio/music/service/af;->a(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Song;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/service/ag;->a(Ljava/util/List;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 668
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 669
    return-void
.end method

.method public final d(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/fiio/music/service/ag;->d()V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 631
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 632
    invoke-static {p1, v0}, Lcom/fiio/music/service/af;->a(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Song;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 633
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 643
    :cond_1
    :goto_0
    return-object v0

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    goto :goto_0
.end method

.method public final e(Lcom/fiio/music/entity/Song;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 654
    iget-object v0, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/util/List;Lcom/fiio/music/entity/Song;)I

    move-result v0

    .line 655
    if-eq v0, v2, :cond_0

    .line 656
    iget-object v1, p0, Lcom/fiio/music/service/ag;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/util/List;Lcom/fiio/music/entity/Song;)I

    move-result v0

    .line 660
    if-eq v0, v2, :cond_1

    .line 661
    iget-object v1, p0, Lcom/fiio/music/service/ag;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 663
    :cond_1
    return-void
.end method
