.class final Lcom/fiio/music/fragment/ce;
.super Ljava/lang/Object;
.source "TabDFm.java"

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
.field final synthetic a:Lcom/fiio/music/fragment/TabDFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabDFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    .line 448
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
    const/4 v4, 0x2

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 453
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$2(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/util/an;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$3(Lcom/fiio/music/fragment/TabDFm;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(Z)V

    .line 454
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$2(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/util/an;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(I)V

    .line 456
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$0(Lcom/fiio/music/fragment/TabDFm;)I

    move-result v0

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$4(Lcom/fiio/music/fragment/TabDFm;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 457
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$5(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$5(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$5(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/SongItemAdapter;->toggleCheckBox(I)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 468
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 470
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 475
    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "kuishe"

    invoke-virtual {v2, v3, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 477
    const-string v3, "enable_viper"

    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 479
    if-eqz v2, :cond_2

    .line 480
    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 484
    :cond_2
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/util/cj;->g()Z

    .line 485
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 486
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabDFm;->access$8(Lcom/fiio/music/fragment/TabDFm;Lcom/fiio/music/util/j;)V

    .line 490
    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$9(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/util/j;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v7}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    .line 491
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$10(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$11(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 493
    :cond_3
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2, v0, v7, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    .line 498
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$10(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabDFm;->access$10(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v7, v3, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$12(Lcom/fiio/music/fragment/TabDFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v2

    .line 504
    iget-object v3, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabDFm;->access$13(Lcom/fiio/music/fragment/TabDFm;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 507
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$0(Lcom/fiio/music/fragment/TabDFm;)I

    move-result v0

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$4(Lcom/fiio/music/fragment/TabDFm;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 508
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$11(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 509
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$14(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$14(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 510
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$14(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/ListItemAdapter;->toggleCheckBox(I)V

    goto/16 :goto_0

    .line 512
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0, v8}, Lcom/fiio/music/fragment/TabDFm;->access$15(Lcom/fiio/music/fragment/TabDFm;Z)V

    .line 513
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$11(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 514
    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$16(Lcom/fiio/music/fragment/TabDFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v1, v0}, Lcom/fiio/music/fragment/TabDFm;->access$17(Lcom/fiio/music/fragment/TabDFm;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$18(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$19(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabDFm;->access$18(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/b/k;

    move-result-object v3

    iget-object v5, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v5, v5, Lcom/fiio/music/fragment/TabDFm;->titleText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/fiio/music/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabDFm;->access$20(Lcom/fiio/music/fragment/TabDFm;Ljava/util/List;)V

    .line 521
    iget-object v7, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$21(Lcom/fiio/music/fragment/TabDFm;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v3

    iget-object v5, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabDFm;->access$11(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v6}, Lcom/fiio/music/fragment/TabDFm;->access$22(Lcom/fiio/music/fragment/TabDFm;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    invoke-static {v7, v0}, Lcom/fiio/music/fragment/TabDFm;->access$23(Lcom/fiio/music/fragment/TabDFm;Lcom/fiio/music/adapter/SongItemAdapter;)V

    .line 522
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$11(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$24(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$16(Lcom/fiio/music/fragment/TabDFm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$21(Lcom/fiio/music/fragment/TabDFm;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2, v9}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 527
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$24(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$24(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 528
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$24(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/SongItemAdapter;->toggleCheckBox(I)V

    goto/16 :goto_0

    .line 530
    :cond_9
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$21(Lcom/fiio/music/fragment/TabDFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 535
    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$21(Lcom/fiio/music/fragment/TabDFm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 536
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 537
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 538
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    invoke-static {v1, v3}, Lcom/fiio/music/fragment/TabDFm;->access$8(Lcom/fiio/music/fragment/TabDFm;Lcom/fiio/music/util/j;)V

    .line 542
    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$9(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/util/j;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v6}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    .line 543
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$11(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 544
    :cond_a
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 545
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    .line 549
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$10(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :cond_b
    const-string v1, "zxy - - - - "

    const-string v3, " playerMusicByItem  "

    invoke-static {v1, v3}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabDFm;->access$19(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v6, v3, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 556
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabDFm;->access$12(Lcom/fiio/music/fragment/TabDFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v2

    .line 557
    iget-object v3, p0, Lcom/fiio/music/fragment/ce;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabDFm;->access$13(Lcom/fiio/music/fragment/TabDFm;Landroid/widget/Toast;)V

    goto/16 :goto_0
.end method
