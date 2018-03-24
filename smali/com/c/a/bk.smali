.class final Lcom/c/a/bk;
.super Landroid/os/Handler;
.source "Utils.java"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/c/a/bk;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/c/a/bk;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 385
    return-void
.end method
