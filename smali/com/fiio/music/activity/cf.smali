.class final Lcom/fiio/music/activity/cf;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/test/h;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cf;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/fiio/music/activity/cf;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1453
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1454
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1455
    iget-object v2, p0, Lcom/fiio/music/activity/cf;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/activity/cf;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/test/simpleCursorSongAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1456
    iget-object v2, p0, Lcom/fiio/music/activity/cf;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$51(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    :goto_0
    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/cf;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$51(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cf;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
