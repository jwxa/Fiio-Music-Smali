.class final Lcom/fiio/music/fragment/bk;
.super Ljava/lang/Object;
.source "TabBFm.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabBFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabBFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0xfa

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 531
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$2(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/an;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$3(Lcom/fiio/music/fragment/TabBFm;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(Z)V

    .line 532
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$2(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/an;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(I)V

    .line 534
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$0(Lcom/fiio/music/fragment/TabBFm;)I

    move-result v0

    if-ne v0, v9, :cond_6

    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$4(Lcom/fiio/music/fragment/TabBFm;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 535
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$5(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$5(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$5(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/SongItemAdapter;->toggleCheckBox(I)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-static {v2}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 547
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 553
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "kuishe"

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 555
    const-string v3, "enable_viper"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 557
    if-eqz v2, :cond_2

    .line 558
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 562
    :cond_2
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/util/cj;->g()Z

    .line 564
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 566
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v5, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v6}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabBFm;->access$8(Lcom/fiio/music/fragment/TabBFm;Lcom/fiio/music/util/j;)V

    .line 571
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$9(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/j;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    .line 572
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$10(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 574
    :cond_3
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 575
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    .line 579
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$10(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabBFm;->access$10(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v4, v3, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 584
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$12(Lcom/fiio/music/fragment/TabBFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v2

    .line 585
    iget-object v3, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$13(Lcom/fiio/music/fragment/TabBFm;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 589
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$0(Lcom/fiio/music/fragment/TabBFm;)I

    move-result v0

    if-ne v0, v9, :cond_9

    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$4(Lcom/fiio/music/fragment/TabBFm;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 590
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 591
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$14(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$14(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 592
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$14(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/ListItemAdapter;->toggleCheckBox(I)V

    goto/16 :goto_0

    .line 594
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0, v9}, Lcom/fiio/music/fragment/TabBFm;->access$15(Lcom/fiio/music/fragment/TabBFm;Z)V

    .line 595
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 596
    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$16(Lcom/fiio/music/fragment/TabBFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v1, v0}, Lcom/fiio/music/fragment/TabBFm;->access$17(Lcom/fiio/music/fragment/TabBFm;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$18(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$19(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabBFm;->access$18(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/b/k;

    move-result-object v3

    iget-object v5, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v5, v5, Lcom/fiio/music/fragment/TabBFm;->titleText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/fiio/music/b/k;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$20(Lcom/fiio/music/fragment/TabBFm;Ljava/util/List;)V

    .line 604
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 605
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$21(Lcom/fiio/music/fragment/TabBFm;I)V

    .line 606
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$22(Lcom/fiio/music/fragment/TabBFm;I)V

    .line 608
    :cond_8
    iget-object v7, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$23(Lcom/fiio/music/fragment/TabBFm;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v3

    iget-object v5, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v6}, Lcom/fiio/music/fragment/TabBFm;->access$24(Lcom/fiio/music/fragment/TabBFm;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    invoke-static {v7, v0}, Lcom/fiio/music/fragment/TabBFm;->access$25(Lcom/fiio/music/fragment/TabBFm;Lcom/fiio/music/adapter/SongItemAdapter;)V

    .line 609
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$26(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 610
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$16(Lcom/fiio/music/fragment/TabBFm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v9

    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$23(Lcom/fiio/music/fragment/TabBFm;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 614
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$26(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$26(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 615
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$26(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/SongItemAdapter;->toggleCheckBox(I)V

    goto/16 :goto_0

    .line 617
    :cond_a
    invoke-static {v2}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$23(Lcom/fiio/music/fragment/TabBFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$23(Lcom/fiio/music/fragment/TabBFm;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 623
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 624
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 625
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabBFm;->access$8(Lcom/fiio/music/fragment/TabBFm;Lcom/fiio/music/util/j;)V

    .line 629
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$9(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/j;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    .line 630
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 631
    :cond_b
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 632
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2, v0, v6, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    .line 636
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$10(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    :cond_c
    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabBFm;->access$19(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v6, v3, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 643
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$12(Lcom/fiio/music/fragment/TabBFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v2

    .line 644
    iget-object v3, p0, Lcom/fiio/music/fragment/bk;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$13(Lcom/fiio/music/fragment/TabBFm;Landroid/widget/Toast;)V

    goto/16 :goto_0
.end method
