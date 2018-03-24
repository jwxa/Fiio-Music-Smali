.class final Lcom/fiio/music/activity/gn;
.super Ljava/lang/Object;
.source "ScanningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ScanningActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ScanningActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gn;->a:Lcom/fiio/music/activity/ScanningActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/c/b;->a:Z

    .line 164
    iget-object v0, p0, Lcom/fiio/music/activity/gn;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->a(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/util/bh;

    move-result-object v0

    const-string v1, "$"

    iget-object v2, p0, Lcom/fiio/music/activity/gn;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanningActivity;->c(Lcom/fiio/music/activity/ScanningActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/gn;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ScanningActivity;->d(Lcom/fiio/music/activity/ScanningActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;Landroid/os/Handler;[Ljava/lang/String;)V

    .line 165
    return-void
.end method
