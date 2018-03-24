.class final Lcom/fiio/music/activity/di;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LockScreenActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    .line 167
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 172
    :sswitch_0
    const-string v1, "com.fiio.muisc.lockscreenlrc.writelrcsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->e(Lcom/fiio/music/activity/LockScreenActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->d(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LockScreenActivity;->d(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/LockScreenActivity;->b(Lcom/fiio/music/entity/Song;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/activity/LockScreenActivity;Z)V

    .line 202
    :cond_1
    invoke-static {}, Lcom/fiio/music/activity/LockScreenActivity;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6b4c\u8bcd\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u663e\u793a\u6b4c\u8bcd\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :sswitch_1
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->d(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LockScreenActivity;->d(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/activity/LockScreenActivity;Lcom/fiio/music/entity/Song;)V

    .line 190
    :cond_2
    invoke-static {}, Lcom/fiio/music/activity/LockScreenActivity;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5c01\u9762\u4e0b\u8f7d\u5b8c\u6210\uff0c\u66f4\u65b0\u5c01\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :sswitch_2
    const-string v1, "com.fiio.music.player.brocast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "currentPosition"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 176
    iget-object v2, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/activity/LockScreenActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LockScreenActivity;->b(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/h/e;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/fiio/music/h/e;->a(J)V

    .line 182
    iget-object v0, p0, Lcom/fiio/music/activity/di;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->c(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 172
    :sswitch_data_0
    .sparse-switch
        -0x1a35d7f8 -> :sswitch_0
        0x233d7d25 -> :sswitch_1
        0x67325432 -> :sswitch_2
    .end sparse-switch
.end method
