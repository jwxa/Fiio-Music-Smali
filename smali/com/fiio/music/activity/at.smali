.class final Lcom/fiio/music/activity/at;
.super Landroid/content/BroadcastReceiver;
.source "ListMainActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 286
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

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

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 293
    :sswitch_0
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u56fe\u7247\u4e0b\u8f7d\u6210\u529f\uff0c\u66f4\u65b0\u5c0f\u56fe\u7247"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-virtual {v2}, Lcom/b/a/b/f;->c()Lcom/b/a/a/a/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/c/a;->a(Ljava/lang/String;Lcom/b/a/a/a/a;)Z

    .line 300
    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-virtual {v2}, Lcom/b/a/b/f;->b()Lcom/b/a/a/b/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/c/f;->a(Ljava/lang/String;Lcom/b/a/a/b/c;)V

    .line 301
    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->updateAlbumShow(Lcom/fiio/music/entity/Song;)V

    goto :goto_0

    .line 293
    :sswitch_1
    const-string v1, "com.fiio.music.downloadapk.success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk \u4e0b\u8f7d\u5b8c\u6210\uff01\u66f4\u65b0\u7a97\u53e3\u5f39\u51fa\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Lcom/fiio/music/b/f;

    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/b/f;-><init>(Landroid/content/Context;)V

    .line 329
    const-string v1, "http://apppack.fiio.net/FiiOMusic.apk"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/f;->a(Ljava/lang/String;)Lcom/fiio/music/network/bean/DownloadInfo;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->access$3(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/network/bean/DownloadInfo;)V

    goto :goto_0

    .line 293
    :sswitch_2
    const-string v1, "com.fiio.music.activity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fiio.music.activity.downloadcoversuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fiio/music/activity/AdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    const-string v1, "filePath"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_0

    .line 311
    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$2(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    const-string v1, "url"

    iget-object v2, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$2(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Activity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v1, "no"

    const-string v2, "no"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 293
    :sswitch_3
    const-string v1, "com.fiio.music.delectcover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u56fe\u7247\u4e0b\u8f7d\u6210\u529f\uff0c\u66f4\u65b0\u5c0f\u56fe\u7247"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/fiio/music/activity/at;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->updateAlbumShow(Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 293
    nop

    :sswitch_data_0
    .sparse-switch
        0x233d7d25 -> :sswitch_0
        0x471dcce8 -> :sswitch_1
        0x4c179ff2 -> :sswitch_2
        0x51d1de2b -> :sswitch_3
    .end sparse-switch
.end method
