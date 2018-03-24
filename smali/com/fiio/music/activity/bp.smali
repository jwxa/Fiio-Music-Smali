.class final Lcom/fiio/music/activity/bp;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;

.field private final synthetic b:Lcom/fiio/music/network/bean/DownloadInfo;

.field private final synthetic c:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/network/bean/DownloadInfo;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bp;->a:Lcom/fiio/music/activity/ListMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/bp;->b:Lcom/fiio/music/network/bean/DownloadInfo;

    iput-object p3, p0, Lcom/fiio/music/activity/bp;->c:Lcom/fiio/music/custom/f;

    .line 3020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3025
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fiio/a/a/a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SplashActivity.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3028
    iget-object v1, p0, Lcom/fiio/music/activity/bp;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->access$56(Lcom/fiio/music/activity/ListMainActivity;Ljava/io/File;)V

    .line 3032
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/bp;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 3034
    return-void

    .line 3030
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/bp;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/network/c/a;->a(Landroid/content/Context;)Lcom/fiio/music/network/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/bp;->b:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/c/a;->a(Lcom/fiio/music/network/bean/DownloadInfo;)V

    goto :goto_0
.end method
