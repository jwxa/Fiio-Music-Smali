.class final Lcom/fiio/music/fragment/ch;
.super Landroid/os/Handler;
.source "TabEFm.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabEFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabEFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    .line 264
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 385
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 391
    return-void

    .line 268
    :pswitch_1
    const-string v0, "COUNT_GET_SUC"

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->getPageFlag()I

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string v0, "listAdapter.upDateSongCount"

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabEFm;->listMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->upDateSongCount(Ljava/util/HashMap;)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$1(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabEFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$2(Lcom/fiio/music/fragment/TabEFm;I)V

    .line 281
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$1(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "AZtabEFM"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$3(Lcom/fiio/music/fragment/TabEFm;I)V

    .line 283
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$4(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    sget v1, Lcom/fiio/music/util/cn;->d:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$4(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    if-nez v0, :cond_b

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 292
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 317
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$4(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    sget v8, Lcom/fiio/music/util/cn;->e:I

    if-ne v0, v8, :cond_f

    .line 318
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 319
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$7(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 321
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 322
    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$7(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    .line 340
    :cond_3
    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 341
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 349
    :cond_5
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 350
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$8(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/FileListAdapter;->setData(Ljava/util/List;I)V

    .line 366
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->folderPlaySong()I

    move-result v0

    .line 369
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 370
    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelection(I)V

    .line 372
    :cond_9
    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    iget v1, v1, Lcom/fiio/music/fragment/TabEFm;->listenerOrBack:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    .line 373
    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    iget v2, v2, Lcom/fiio/music/fragment/TabEFm;->firstFolderPosition:I

    iget-object v3, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    iget v3, v3, Lcom/fiio/music/fragment/TabEFm;->topForFolderPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    .line 375
    :cond_a
    iget-object v1, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1, v0}, Lcom/fiio/music/fragment/TabEFm;->access$10(Lcom/fiio/music/fragment/TabEFm;I)V

    .line 376
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0, v11}, Lcom/fiio/music/fragment/TabEFm;->access$11(Lcom/fiio/music/fragment/TabEFm;I)V

    .line 377
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showOrHideHeadBar()V

    .line 378
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 287
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v11}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto/16 :goto_1

    .line 304
    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 305
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 306
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 308
    :cond_d
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 309
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 310
    :cond_e
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 311
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 324
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$4(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    sget v8, Lcom/fiio/music/util/cn;->d:I

    if-ne v0, v8, :cond_11

    .line 325
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 326
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$7(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 328
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$7(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 331
    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$4(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    if-nez v0, :cond_3

    .line 332
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 333
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$7(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 335
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$7(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_4

    .line 341
    :cond_13
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/FileItem;

    .line 343
    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 344
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 350
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/FileItem;

    .line 352
    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 353
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 381
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 384
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/fragment/ch;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_17
    move-object v1, v0

    goto/16 :goto_4

    :cond_18
    move-object v0, v1

    goto/16 :goto_3

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
