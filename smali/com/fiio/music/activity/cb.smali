.class final Lcom/fiio/music/activity/cb;
.super Landroid/content/BroadcastReceiver;
.source "LocalMusicActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 226
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 231
    const-string v0, "xyz-LocalMusicActivity"

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

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 233
    :sswitch_0
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    iget-object v1, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->c()Lcom/b/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/c/a;->a(Ljava/lang/String;Lcom/b/a/a/a/a;)Z

    .line 237
    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    iget-object v1, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->b()Lcom/b/a/a/b/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/c/f;->a(Ljava/lang/String;Lcom/b/a/a/b/c;)V

    .line 238
    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$1(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    .line 239
    new-instance v0, Lcom/b/a/b/a/f;

    invoke-direct {v0, v3, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 240
    iget-object v1, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$2(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/b/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 241
    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/fiio/music/service/h;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/fiio/music/service/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :sswitch_1
    const-string v1, "com.fiio.music.delectcover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "xyz-LocalMusicActivity"

    const-string v1, "\u56fe\u7247\u4e0b\u8f7d\u6210\u529f\uff0c\u66f4\u65b0\u5c0f\u56fe\u7247"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cb;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$1(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 241
    :cond_1
    const-string v0, "FiiO"

    goto :goto_1

    .line 242
    :cond_2
    const-string v0, "FiiO"

    goto :goto_2

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x233d7d25 -> :sswitch_0
        0x51d1de2b -> :sswitch_1
    .end sparse-switch
.end method
