.class final Lcom/fiio/music/activity/ci;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/g;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 2714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/fiio/music/swipemenulistview/a;I)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const v8, 0x7f0c0219

    const v5, 0x7f0c00db

    const v7, 0x7f0c00dc

    const/4 v4, 0x1

    .line 2717
    packed-switch p3, :pswitch_data_0

    .line 3028
    :cond_0
    :goto_0
    return v4

    .line 2719
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2721
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getSongId(I)I

    move-result v1

    .line 2722
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getcurFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 2723
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getName(I)Ljava/lang/String;

    move-result-object v5

    .line 2724
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getSongList()Ljava/util/List;

    move-result-object v6

    .line 2725
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2726
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2727
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto :goto_0

    .line 2730
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    move v3, p1

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$53(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/lang/String;IZLjava/lang/String;Ljava/util/List;I)V

    .line 2733
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2734
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongId(I)I

    move-result v1

    .line 2735
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getInnerCurFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 2736
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getInnerName(I)Ljava/lang/String;

    move-result-object v5

    .line 2737
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongList()Ljava/util/List;

    move-result-object v6

    .line 2738
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2739
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2740
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2743
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const/16 v7, 0xb

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$53(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/lang/String;IZLjava/lang/String;Ljava/util/List;I)V

    .line 2761
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2762
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getSongId(I)I

    move-result v1

    .line 2763
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getcurFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 2764
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getName(I)Ljava/lang/String;

    move-result-object v5

    .line 2765
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getSongList()Ljava/util/List;

    move-result-object v6

    .line 2766
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2767
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2768
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2771
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v7, 0x3

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$53(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/lang/String;IZLjava/lang/String;Ljava/util/List;I)V

    .line 2774
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongId(I)I

    move-result v1

    .line 2776
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getInnerCurFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 2777
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getInnerName(I)Ljava/lang/String;

    move-result-object v5

    .line 2778
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongList()Ljava/util/List;

    move-result-object v6

    .line 2779
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2780
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2781
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2784
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const/16 v7, 0x21

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$53(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/lang/String;IZLjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 2790
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2791
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getSong(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2792
    if-nez v0, :cond_8

    .line 2793
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    .line 2794
    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2793
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2797
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2799
    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v3, Lcom/fiio/music/util/bw;

    invoke-direct {v3, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V

    .line 2801
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2802
    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2804
    :cond_9
    if-eqz v1, :cond_a

    .line 2805
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v5, 0x7f0c00ba

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2808
    :cond_a
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2810
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2811
    if-eqz v1, :cond_b

    .line 2812
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2814
    :cond_b
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2815
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2814
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2817
    :cond_c
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2818
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2819
    if-eqz v1, :cond_d

    .line 2820
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2822
    :cond_d
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2823
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2822
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2828
    :cond_e
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2829
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2830
    if-eqz v1, :cond_f

    .line 2831
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2833
    :cond_f
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2834
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2833
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2839
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_18

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2840
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2841
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2843
    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v3, Lcom/fiio/music/util/bw;

    invoke-direct {v3, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V

    .line 2844
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2845
    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2847
    :cond_11
    if-eqz v1, :cond_12

    .line 2848
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v5, 0x7f0c00ba

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2851
    :cond_12
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2852
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2853
    if-eqz v1, :cond_13

    .line 2854
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2856
    :cond_13
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2857
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2856
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2859
    :cond_14
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2860
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2861
    if-eqz v1, :cond_15

    .line 2862
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2864
    :cond_15
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2865
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2864
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2869
    :cond_16
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2870
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2871
    if-eqz v1, :cond_17

    .line 2872
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2874
    :cond_17
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2875
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2874
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2926
    :cond_18
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_21

    .line 2927
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getSong(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2928
    if-nez v0, :cond_19

    .line 2929
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    .line 2930
    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2929
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2933
    :cond_19
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2935
    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v3, Lcom/fiio/music/util/bw;

    invoke-direct {v3, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V

    .line 2936
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2938
    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2940
    :cond_1a
    if-eqz v1, :cond_1b

    .line 2941
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v5, 0x7f0c00ba

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2944
    :cond_1b
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2945
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2946
    if-eqz v1, :cond_1c

    .line 2947
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2949
    :cond_1c
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2950
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2949
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2952
    :cond_1d
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2953
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2954
    if-eqz v1, :cond_1e

    .line 2955
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2957
    :cond_1e
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2958
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2957
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2962
    :cond_1f
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2963
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v1

    .line 2964
    if-eqz v1, :cond_20

    .line 2965
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2967
    :cond_20
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 2968
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "songId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2967
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2973
    :cond_21
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    goto/16 :goto_0

    .line 2977
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_22

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2978
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getSong(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2980
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2981
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$57(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 2984
    :cond_22
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_23

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2985
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSong(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2986
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2987
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$57(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 2993
    :cond_23
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_24

    .line 2994
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getSong(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2995
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2996
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$57(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 2997
    :cond_24
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    goto/16 :goto_0

    .line 3005
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3010
    :pswitch_4
    const/4 v0, 0x0

    .line 3011
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v4, :cond_26

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3013
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getSong(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3024
    :cond_25
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->createSongDetailDialog(Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 3014
    :cond_26
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v4, :cond_27

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v1

    if-nez v1, :cond_27

    .line 3015
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSong(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_1

    .line 3020
    :cond_27
    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v4, :cond_25

    .line 3022
    iget-object v0, p0, Lcom/fiio/music/activity/ci;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getSong(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_1

    .line 2717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
