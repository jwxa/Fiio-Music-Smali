.class final Lcom/example/root/checkappmusic/f;
.super Ljava/lang/Thread;
.source "FiioMediaPlayer.java"


# instance fields
.field final synthetic a:Lcom/example/root/checkappmusic/FiioMediaPlayer;


# direct methods
.method constructor <init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/example/root/checkappmusic/f;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/example/root/checkappmusic/f;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 758
    const-string v0, "GetBufferThread"

    invoke-virtual {p0, v0}, Lcom/example/root/checkappmusic/f;->setName(Ljava/lang/String;)V

    .line 761
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 762
    iget-object v0, p0, Lcom/example/root/checkappmusic/f;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    new-instance v1, Lcom/example/root/checkappmusic/g;

    invoke-direct {v1, p0}, Lcom/example/root/checkappmusic/g;-><init>(Lcom/example/root/checkappmusic/f;)V

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$33(Lcom/example/root/checkappmusic/FiioMediaPlayer;Landroid/os/Handler;)V

    .line 847
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 848
    return-void
.end method
