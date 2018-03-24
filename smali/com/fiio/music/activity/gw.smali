.class final Lcom/fiio/music/activity/gw;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/fiio/music/service/l;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/SplashActivity;

.field private b:Landroid/widget/Toast;

.field private c:Lcom/fiio/music/entity/Song;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public final a(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 213
    const-string v0, "SplashActivity\u754c\u9762\uff0conServiceConnected "

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/fiio/music/activity/gw;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    const v3, 0x7f0c00f8

    invoke-virtual {v2, v3}, Lcom/fiio/music/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/gw;->b:Landroid/widget/Toast;

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SplashActivity;->e(Lcom/fiio/music/activity/SplashActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SplashActivity;->d(Lcom/fiio/music/activity/SplashActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(I)V

    .line 234
    const-string v0, "long"

    const-string v1, "getIntent for flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    return-void

    .line 221
    :cond_2
    new-instance v0, Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/SplashActivity;->c(Lcom/fiio/music/activity/SplashActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/gw;->c:Lcom/fiio/music/entity/Song;

    .line 222
    iget-object v0, p0, Lcom/fiio/music/activity/gw;->c:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SplashActivity;->d(Lcom/fiio/music/activity/SplashActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/fiio/music/activity/gw;->c:Lcom/fiio/music/entity/Song;

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;Lcom/fiio/music/entity/Song;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplashActivity\u754c\u9762\uff0conServiceConnected \u9700\u8981\u64ad\u653e\u6b4c\u66f2="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/gw;->c:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/gw;->a:Lcom/fiio/music/activity/SplashActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    goto :goto_0
.end method
