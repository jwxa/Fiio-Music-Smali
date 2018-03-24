.class final Lcom/fiio/music/activity/dc;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/widget/l;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabAFm;->getPositionByFirstChar(Ljava/lang/String;)I

    move-result v0

    .line 801
    iget-object v1, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabAFm;->tabAFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelection(I)V

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getListPositionByFirstChar(Ljava/lang/String;)I

    move-result v0

    .line 805
    iget-object v1, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelection(I)V

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabBFm;->getSongPositionByFirstChar(Ljava/lang/String;)I

    move-result v0

    .line 808
    iget-object v1, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 810
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 811
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabCFr;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 821
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getListPositionByFirstChar(Ljava/lang/String;)I

    move-result v0

    .line 823
    iget-object v1, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelection(I)V

    goto/16 :goto_0

    .line 825
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabDFm;->getSongPositionByFirstChar(Ljava/lang/String;)I

    move-result v0

    .line 826
    iget-object v1, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->tabDFGetListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 828
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabEFm;->getPositionByFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    if-eqz v0, :cond_0

    .line 831
    iget-object v1, p0, Lcom/fiio/music/activity/dc;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelection(I)V

    goto/16 :goto_0
.end method
