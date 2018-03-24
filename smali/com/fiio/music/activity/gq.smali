.class public final Lcom/fiio/music/activity/gq;
.super Ljava/lang/Thread;
.source "ScanningActivity.java"


# instance fields
.field a:Z

.field final synthetic b:Lcom/fiio/music/activity/ScanningActivity;


# direct methods
.method public constructor <init>(Lcom/fiio/music/activity/ScanningActivity;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fiio/music/activity/gq;->b:Lcom/fiio/music/activity/ScanningActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/activity/gq;->a:Z

    return-void
.end method


# virtual methods
.method public final interrupt()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 68
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "interrupt:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fiio/music/activity/gq;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 58
    const-string v0, "long"

    const-string v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/c/b;->a:Z

    .line 60
    iget-object v0, p0, Lcom/fiio/music/activity/gq;->b:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->a(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/util/bh;

    move-result-object v0

    const-string v1, "$"

    iget-object v2, p0, Lcom/fiio/music/activity/gq;->b:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanningActivity;->c(Lcom/fiio/music/activity/ScanningActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;Landroid/os/Handler;[Ljava/lang/String;)V

    .line 61
    const-string v0, "long"

    const-string v1, "run1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method
