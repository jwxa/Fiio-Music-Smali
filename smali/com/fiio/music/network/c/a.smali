.class public Lcom/fiio/music/network/c/a;
.super Ljava/lang/Object;
.source "DownloadApkManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static e:Lcom/fiio/music/network/c/a;


# instance fields
.field private c:Lcom/fiio/music/b/f;

.field private d:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lcom/fiio/music/network/bean/DownloadInfo;",
            "Lcom/fiio/music/network/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/fiio/music/network/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/c/a;->a:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FiiOMusic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/c/a;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/fiio/music/b/f;

    invoke-direct {v0, p1}, Lcom/fiio/music/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/network/c/a;->c:Lcom/fiio/music/b/f;

    .line 46
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/c/a;->d:Landroid/support/v4/util/ArrayMap;

    .line 47
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/fiio/music/network/c/a;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/fiio/music/network/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fiio/music/network/c/a;->e:Lcom/fiio/music/network/c/a;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/fiio/music/network/c/a;

    invoke-direct {v0, p0}, Lcom/fiio/music/network/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fiio/music/network/c/a;->e:Lcom/fiio/music/network/c/a;

    .line 59
    :cond_0
    sget-object v0, Lcom/fiio/music/network/c/a;->e:Lcom/fiio/music/network/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fiio/music/network/c/a;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/fiio/music/network/c/a;->a:Ljava/lang/String;

    const-string v1, "Task Exist !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/fiio/music/network/c/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid http url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid http url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    const-string v0, "INITIALIZE"

    invoke-virtual {p1, v0}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/fiio/music/network/c/a;->c:Lcom/fiio/music/b/f;

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/f;->a(Ljava/lang/String;)Lcom/fiio/music/network/bean/DownloadInfo;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v0}, Lcom/fiio/music/network/bean/DownloadInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    invoke-virtual {p0, p1}, Lcom/fiio/music/network/c/a;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V

    .line 87
    :cond_2
    new-instance v0, Lcom/fiio/music/network/c/b;

    sget-object v1, Lcom/fiio/music/network/c/a;->e:Lcom/fiio/music/network/c/a;

    invoke-direct {v0, v1, p1}, Lcom/fiio/music/network/c/b;-><init>(Lcom/fiio/music/network/c/a;Lcom/fiio/music/network/bean/DownloadInfo;)V

    .line 88
    iget-object v1, p0, Lcom/fiio/music/network/c/a;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Lcom/fiio/music/network/c/b;->a()V

    goto :goto_0
.end method

.method public final b(Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fiio/music/network/c/a;->c:Lcom/fiio/music/b/f;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/f;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V

    .line 96
    return-void
.end method

.method public final c(Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fiio/music/network/c/a;->c:Lcom/fiio/music/b/f;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/f;->a(Lcom/fiio/music/network/bean/DownloadInfo;)V

    .line 101
    return-void
.end method
