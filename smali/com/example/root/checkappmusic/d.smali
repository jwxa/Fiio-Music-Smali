.class final Lcom/example/root/checkappmusic/d;
.super Ljava/lang/Thread;
.source "FiioMediaPlayer.java"


# instance fields
.field final synthetic a:Lcom/example/root/checkappmusic/FiioMediaPlayer;


# direct methods
.method constructor <init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/example/root/checkappmusic/d;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/example/root/checkappmusic/d;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 414
    const-string v0, "ChildThread"

    invoke-virtual {p0, v0}, Lcom/example/root/checkappmusic/d;->setName(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 417
    iget-object v0, p0, Lcom/example/root/checkappmusic/d;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    new-instance v1, Lcom/example/root/checkappmusic/e;

    invoke-direct {v1, p0}, Lcom/example/root/checkappmusic/e;-><init>(Lcom/example/root/checkappmusic/d;)V

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$23(Lcom/example/root/checkappmusic/FiioMediaPlayer;Landroid/os/Handler;)V

    .line 745
    const-string v0, "xyz-ChildThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child handler is bound to - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/example/root/checkappmusic/d;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$24(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 749
    return-void
.end method
