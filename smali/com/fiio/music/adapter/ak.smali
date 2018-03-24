.class final Lcom/fiio/music/adapter/ak;
.super Ljava/lang/Object;
.source "SongItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/SongItemAdapter;

.field private b:Landroid/widget/Toast;

.field private c:Ljava/util/List;
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
.method constructor <init>(Lcom/fiio/music/adapter/SongItemAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const v6, 0x7f0c0108

    const v5, 0x7f0c00f6

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->c:Ljava/util/List;

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 712
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    .line 715
    :cond_0
    :goto_1
    return-void

    .line 477
    :pswitch_0
    const-string v0, "long"

    const-string v1, "\u6279\u91cf\u64ad\u653e\u6309\u952ein SongItemAdapter.java \u6d4b\u8bd5\u5168\u90e8\u6700\u7231\u548c\u64ad\u653e\u5217\u8868\u64ad\u653e\u4e0b\u7684\u6279\u91cf"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 558
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v6

    .line 559
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 560
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 562
    if-eqz v0, :cond_1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1
    move v0, v8

    .line 564
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 566
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    .line 567
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    goto :goto_1

    .line 482
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v2

    .line 483
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 484
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 485
    if-eqz v0, :cond_3

    .line 486
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 487
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    .line 488
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 505
    :cond_2
    if-lez v3, :cond_0

    .line 508
    new-instance v4, Lcom/fiio/music/util/j;

    iget-object v5, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v0, v3, v5}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 509
    invoke-virtual {v4}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    .line 611
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 612
    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00dd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 496
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".cue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 499
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 512
    :cond_5
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 513
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    if-ltz v1, :cond_0

    .line 515
    new-instance v1, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v5, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 516
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v1

    invoke-virtual {v3, v0, v1, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_3

    .line 518
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v3

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_3

    .line 527
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v2

    .line 528
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 529
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 531
    if-eqz v0, :cond_7

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    move v0, v8

    .line 533
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 535
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    .line 536
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    goto/16 :goto_1

    .line 539
    :cond_8
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 540
    if-eqz v0, :cond_20

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 542
    :cond_9
    if-eqz v0, :cond_3

    .line 543
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 544
    new-instance v1, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 545
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto/16 :goto_3

    .line 546
    :cond_a
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 547
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    if-ltz v1, :cond_0

    .line 549
    new-instance v1, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v5, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 550
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v1

    invoke-virtual {v3, v0, v1, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_3

    .line 552
    :cond_b
    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v3

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_3

    .line 570
    :cond_c
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 571
    if-eqz v0, :cond_1f

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_d
    move-object v1, v0

    .line 573
    if-eqz v1, :cond_3

    .line 574
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 575
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    .line 576
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 579
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    invoke-static {v2}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 581
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    :cond_e
    if-ltz v0, :cond_0

    .line 590
    if-nez v0, :cond_f

    move v0, v8

    .line 591
    :cond_f
    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 592
    invoke-virtual {v3}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v0

    .line 594
    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 595
    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 596
    const/4 v4, 0x2

    aget-object v4, v0, v4

    .line 597
    const/4 v5, 0x3

    aget-object v5, v0, v5

    .line 598
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v7, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v7}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_3

    .line 583
    :cond_10
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 584
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_1

    .line 599
    :cond_11
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 600
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    if-ltz v0, :cond_0

    .line 602
    new-instance v0, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 603
    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v1

    invoke-virtual {v2, v0, v1, v6}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_3

    .line 605
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_3

    .line 618
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    new-instance v1, Lcom/fiio/music/util/bw;

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$3(Lcom/fiio/music/adapter/SongItemAdapter;Lcom/fiio/music/util/bw;)V

    .line 619
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v9

    :cond_13
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    .line 639
    if-nez v1, :cond_18

    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 640
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    .line 647
    :goto_6
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->c:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 648
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$4(Lcom/fiio/music/adapter/SongItemAdapter;)Lcom/fiio/music/util/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    .line 649
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    goto/16 :goto_1

    .line 619
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 620
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-nez v3, :cond_16

    .line 621
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SongItemAdapter;->access$4(Lcom/fiio/music/adapter/SongItemAdapter;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 622
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 625
    goto :goto_5

    :cond_16
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 626
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SongItemAdapter;->access$4(Lcom/fiio/music/adapter/SongItemAdapter;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fiio/music/util/bw;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 627
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 630
    goto/16 :goto_5

    :cond_17
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 631
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SongItemAdapter;->access$4(Lcom/fiio/music/adapter/SongItemAdapter;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fiio/music/util/bw;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 632
    iget-object v3, p0, Lcom/fiio/music/adapter/ak;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    .line 641
    :cond_18
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 642
    :cond_19
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    goto/16 :goto_6

    .line 644
    :cond_1a
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0104

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0c0055

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-static {v0, v2, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    goto/16 :goto_6

    .line 653
    :pswitch_5
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 654
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 655
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 660
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "batch"

    invoke-static {v0, v2, v1}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 667
    :goto_8
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    goto/16 :goto_1

    .line 655
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 656
    new-instance v3, Lcom/fiio/music/entity/Song;

    invoke-direct {v3}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 658
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 663
    :cond_1c
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    goto :goto_8

    .line 670
    :pswitch_6
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ak;->b:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 674
    :pswitch_7
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 675
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 676
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 677
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 678
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$5(Lcom/fiio/music/adapter/SongItemAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 679
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 683
    :goto_9
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 684
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 685
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 688
    iget-object v4, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    new-instance v0, Lcom/fiio/music/adapter/al;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/adapter/al;-><init>(Lcom/fiio/music/adapter/ak;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    new-instance v0, Lcom/fiio/music/adapter/am;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/adapter/am;-><init>(Lcom/fiio/music/adapter/ak;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 681
    :cond_1d
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_9

    .line 707
    :cond_1e
    iget-object v0, p0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    goto/16 :goto_1

    :cond_1f
    move v0, v1

    goto/16 :goto_2

    :cond_20
    move v0, v1

    goto/16 :goto_4

    .line 475
    :pswitch_data_0
    .packed-switch 0x7f0b0062
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
