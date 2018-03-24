.class final Lcom/fiio/music/service/p;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/p;->a:Lcom/fiio/music/service/MediaPlayerService;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(I)V
    .locals 4

    .prologue
    .line 592
    iget-object v0, p0, Lcom/fiio/music/service/p;->a:Lcom/fiio/music/service/MediaPlayerService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    const-string v2, "flag"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 594
    const-string v2, "percent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 592
    invoke-virtual {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 595
    return-void
.end method
