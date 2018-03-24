.class final Lcom/example/root/checkappmusic/h;
.super Ljava/lang/Object;
.source "FiioMediaPlayer.java"

# interfaces
.implements Lcom/fiio/music/counttimer/a;


# instance fields
.field final synthetic a:Lcom/example/root/checkappmusic/FiioMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/example/root/checkappmusic/h;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;B)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/example/root/checkappmusic/h;-><init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/example/root/checkappmusic/h;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$11(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    return-void
.end method
