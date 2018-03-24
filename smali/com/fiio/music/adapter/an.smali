.class final Lcom/fiio/music/adapter/an;
.super Landroid/os/Handler;
.source "SongItemAdapter.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/SongItemAdapter;

.field private b:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/SongItemAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 720
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 723
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 780
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    .line 787
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 788
    return-void

    .line 725
    :pswitch_0
    new-instance v3, Lcom/fiio/music/b/k;

    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    .line 726
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v2

    .line 727
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 730
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class com.fiio.music.activity.LocalMusicActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 732
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0109

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/an;->b:Landroid/widget/Toast;

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInSongItemApdapter()V

    .line 747
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(I)V

    .line 748
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class com.fiio.music.activity.MyMusicListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 753
    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 754
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0055

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 755
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 757
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 761
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-gez v3, :cond_8

    .line 774
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$8(Lcom/fiio/music/adapter/SongItemAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0, v2}, Lcom/fiio/music/adapter/SongItemAdapter;->access$7(Lcom/fiio/music/adapter/SongItemAdapter;Z)V

    .line 776
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->f()V

    goto/16 :goto_0

    .line 728
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    aput v0, v4, v1

    .line 727
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 734
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 735
    iget-object v5, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0107

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 736
    iget-object v7, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v7}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/fiio/music/b/k;->a([I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 735
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 734
    invoke-static {v0, v1, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/an;->b:Landroid/widget/Toast;

    .line 737
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_4
    if-ltz v3, :cond_1

    .line 738
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 739
    const-string v0, "zxy - - -"

    const-string v1, "songItemAdapter    :  "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    iget-object v4, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/SongItemAdapter;->access$6(Lcom/fiio/music/adapter/SongItemAdapter;)I

    move-result v4

    invoke-virtual {v0, v1, v8, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V

    .line 742
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 737
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    .line 759
    :cond_7
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0, v4}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_2

    .line 762
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 763
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 764
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 766
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0, v8}, Lcom/fiio/music/adapter/SongItemAdapter;->access$7(Lcom/fiio/music/adapter/SongItemAdapter;Z)V

    .line 767
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v4, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    .line 771
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 761
    :cond_9
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_3

    .line 769
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v4, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v0, p0, Lcom/fiio/music/adapter/an;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/service/h;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
