.class final Lcom/fiio/music/activity/c;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/c;->a:Lcom/fiio/music/activity/AboutActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fiio/music/activity/c;->a:Lcom/fiio/music/activity/AboutActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AboutActivity;->b(Lcom/fiio/music/activity/AboutActivity;)Lcom/fiio/music/network/bean/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fiio/music/activity/c;->a:Lcom/fiio/music/activity/AboutActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AboutActivity;->b(Lcom/fiio/music/activity/AboutActivity;)Lcom/fiio/music/network/bean/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionCode()I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/fiio/music/activity/c;->a:Lcom/fiio/music/activity/AboutActivity;

    invoke-static {v1}, Lcom/fiio/music/util/h;->d(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/fiio/music/activity/c;->a:Lcom/fiio/music/activity/AboutActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AboutActivity;->b(Lcom/fiio/music/activity/AboutActivity;)Lcom/fiio/music/network/bean/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fiio/a/a/a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v2, "SplashActivity.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/fiio/music/activity/c;->a:Lcom/fiio/music/activity/AboutActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/c;->a:Lcom/fiio/music/activity/AboutActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AboutActivity;->b(Lcom/fiio/music/activity/AboutActivity;)Lcom/fiio/music/network/bean/DownloadInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/AboutActivity;->a(Lcom/fiio/music/activity/AboutActivity;Lcom/fiio/music/network/bean/DownloadInfo;)V

    .line 114
    :cond_0
    return-void
.end method
