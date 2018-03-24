.class final Lcom/fiio/music/activity/cy;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/service/l;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 746
    return-void
.end method

.method public final a(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 750
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->a()V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$13(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/FragmentTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->updataDeSelectionView()V

    .line 772
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$18(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 773
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-static {v0, v1}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 775
    const-string v1, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playPos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 777
    iget-object v1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabAFm;->tabAFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    .line 780
    :cond_2
    return-void

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$13(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/FragmentTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 762
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->updataDeSelectionView()V

    goto :goto_0

    .line 763
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$13(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/FragmentTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    const-string v0, "xyz-LocalMusicActivity"

    const-string v1, "binderSever"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$1(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 766
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$13(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/FragmentTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/fiio/music/activity/cy;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->updataDeSelectionView()V

    goto/16 :goto_0
.end method
