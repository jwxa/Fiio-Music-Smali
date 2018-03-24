.class final Lcom/fiio/music/activity/cd;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final upDataTitle(I)V
    .locals 6

    .prologue
    const/16 v5, 0x21

    const/16 v4, 0xb

    .line 1412
    iget-object v0, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1413
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1414
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1415
    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1417
    :cond_0
    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/QueryAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1418
    :cond_1
    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1419
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1420
    :cond_3
    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1421
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$51(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    :goto_0
    return-void

    .line 1423
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$51(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
