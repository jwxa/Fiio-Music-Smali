.class final Lcom/fiio/music/activity/bm;
.super Lcom/fiio/music/network/b/g;
.source "ListMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fiio/music/network/b/g",
        "<",
        "Lcom/fiio/music/network/bean/CheckForUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 2878
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 2884
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckForUpdate code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : messag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1
    check-cast p1, Lcom/fiio/music/network/bean/CheckForUpdate;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckForUpdate response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkForUpdate response = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getCode()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u66f4\u65b0\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/fiio/music/b/f;

    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/b/f;-><init>(Landroid/content/Context;)V

    const-string v1, "http://apppack.fiio.net/FiiOMusic.apk"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/f;->a(Ljava/lang/String;)Lcom/fiio/music/network/bean/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v0, :cond_5

    new-instance v0, Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-direct {v0}, Lcom/fiio/music/network/bean/DownloadInfo;-><init>()V

    const-string v1, "http://apppack.fiio.net/FiiOMusic.apk"

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadUrl(Ljava/lang/String;)V

    const-string v1, "INITIALIZE"

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    sget-object v1, Lcom/fiio/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setSavePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setVersionCode(I)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setVersionName(Ljava/lang/String;)V

    const-string v1, "SplashActivity.apk"

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setFileName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getUpdateLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setUpdateLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/network/c/a;->a(Landroid/content/Context;)Lcom/fiio/music/network/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/network/c/a;->c(Lcom/fiio/music/network/bean/DownloadInfo;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/network/c/a;->a(Landroid/content/Context;)Lcom/fiio/music/network/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/network/c/a;->a(Lcom/fiio/music/network/bean/DownloadInfo;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getVersionCode()I

    move-result v2

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/fiio/a/a/a;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SplashActivity.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apk \u6587\u4ef6\u4e0d\u5b58\u5728,\u91cd\u65b0\u4e0b\u8f7d flag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/fiio/music/network/bean/DownloadInfo;->setFinishedSize(I)V

    const-string v1, "FAILED"

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/network/c/a;->a(Landroid/content/Context;)Lcom/fiio/music/network/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/network/c/a;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apk \u5df2\u4e0b\u8f7d\u5b8c\u6210\uff0c\u53ef\u4ee5\u66f4\u65b0\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v2, "FiioMusic"

    invoke-virtual {v1, v2, v5}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "updateignore"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "flag = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    const-string v3, "versionname"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "flag = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : versionNameString = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getUpdateLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setUpdateLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateLog = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->access$3(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/network/bean/DownloadInfo;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u7248\u672c\u4e0d\u518d\u63d0\u793a\u66f4\u65b0!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getUpdateLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setUpdateLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "abc updateLog = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->access$3(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/network/bean/DownloadInfo;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getVersionCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionCode()I

    move-result v2

    if-le v1, v2, :cond_b

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setVersionCode(I)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setVersionName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getUpdateLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setUpdateLog(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apk \u7248\u672c\u4e0d\u540c,\u5220\u9664\u91cd\u65b0\u4e0b\u8f7d flag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/fiio/music/network/bean/DownloadInfo;->setFinishedSize(I)V

    :cond_a
    const-string v1, "FAILED"

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/network/c/a;->a(Landroid/content/Context;)Lcom/fiio/music/network/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/network/c/a;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/CheckForUpdate;->getVersionCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7dapk"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Lcom/fiio/music/network/bean/DownloadInfo;->setFinishedSize(I)V

    const-string v1, "FAILED"

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/bm;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/network/c/a;->a(Landroid/content/Context;)Lcom/fiio/music/network/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/network/c/a;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V

    goto/16 :goto_1
.end method
