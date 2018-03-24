.class final Lcom/fiio/music/adapter/ai;
.super Landroid/os/Handler;
.source "SimpleSongAdapter.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/SimpleSongAdapter;

.field private b:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/SimpleSongAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    .line 669
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 672
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 727
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->cancelSelect()V

    .line 734
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 735
    return-void

    .line 674
    :pswitch_0
    new-instance v3, Lcom/fiio/music/b/k;

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    .line 675
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$1(Lcom/fiio/music/adapter/SimpleSongAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v2

    .line 676
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$1(Lcom/fiio/music/adapter/SimpleSongAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 679
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class com.fiio.music.activity.LocalMusicActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$2(Lcom/fiio/music/adapter/SimpleSongAdapter;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 681
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0109

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ai;->b:Landroid/widget/Toast;

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInSongItemApdapter()V

    .line 694
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(I)V

    .line 695
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class com.fiio.music.activity.MyMusicListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 700
    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 701
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0055

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 702
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    .line 703
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 704
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 708
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-gez v3, :cond_8

    .line 721
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$4(Lcom/fiio/music/adapter/SimpleSongAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0, v2}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$3(Lcom/fiio/music/adapter/SimpleSongAdapter;Z)V

    .line 723
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->f()V

    goto/16 :goto_0

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$1(Lcom/fiio/music/adapter/SimpleSongAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getId()I

    move-result v0

    aput v0, v4, v1

    .line 676
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 683
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 684
    iget-object v5, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0107

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 685
    iget-object v7, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v7}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/fiio/music/b/k;->a([I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 684
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-static {v0, v1, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ai;->b:Landroid/widget/Toast;

    .line 686
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_1

    .line 687
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$1(Lcom/fiio/music/adapter/SimpleSongAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 688
    iget-object v3, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getId()I

    move-result v0

    const-string v4, ""

    invoke-virtual {v3, v0, v8, v4}, Lcom/fiio/music/adapter/SimpleSongAdapter;->deleteForResetPlayerList(IILjava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 686
    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 706
    :cond_7
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0, v4}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_2

    .line 709
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$1(Lcom/fiio/music/adapter/SimpleSongAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 710
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 711
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 713
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0, v8}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$3(Lcom/fiio/music/adapter/SimpleSongAdapter;Z)V

    .line 714
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v4, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    .line 718
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 708
    :cond_9
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_3

    .line 716
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v4, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v0, p0, Lcom/fiio/music/adapter/ai;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/service/h;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
