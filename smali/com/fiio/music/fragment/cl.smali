.class final Lcom/fiio/music/fragment/cl;
.super Ljava/lang/Object;
.source "TabEFm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabEFm;


# direct methods
.method private constructor <init>(Lcom/fiio/music/fragment/TabEFm;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/fragment/TabEFm;B)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/cl;-><init>(Lcom/fiio/music/fragment/TabEFm;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 414
    iget-object v0, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->mEnterDir:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 426
    :goto_1
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabEFm;->mEnterDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->getFileDir(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 424
    iget-object v0, p0, Lcom/fiio/music/fragment/cl;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
