.class final Lcom/fiio/music/activity/et;
.super Landroid/content/BroadcastReceiver;
.source "PlayerMainActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 285
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 290
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mReceiver : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 292
    :sswitch_0
    const-string v1, "com.fiio.music.dlna.networkunreachable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->finish()V

    goto :goto_0

    .line 292
    :sswitch_1
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u63a5\u6536\u4e0b\u8f7d\u5c01\u9762\u5b8c\u6210\u5e7f\u64ad\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$1(Lcom/fiio/music/activity/PlayerMainActivity;)V

    .line 302
    new-instance v0, Lcom/b/a/b/a/f;

    invoke-direct {v0, v3, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 303
    iget-object v1, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$2(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/b/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 304
    iget-object v0, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v0, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/fiio/music/service/h;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v0, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lcom/fiio/music/activity/et;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/fiio/music/service/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_1
    const-string v0, "FiiO"

    goto :goto_1

    .line 305
    :cond_2
    const-string v0, "FiiO"

    goto :goto_2

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9fda2c8 -> :sswitch_0
        0x233d7d25 -> :sswitch_1
    .end sparse-switch
.end method
