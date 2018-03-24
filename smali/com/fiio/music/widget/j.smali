.class final Lcom/fiio/music/widget/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockScreenView.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/LockScreenView;


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/LockScreenView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/j;->a:Lcom/fiio/music/widget/LockScreenView;

    .line 106
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fiio/music/widget/j;->a:Lcom/fiio/music/widget/LockScreenView;

    invoke-static {v0}, Lcom/fiio/music/widget/LockScreenView;->c(Lcom/fiio/music/widget/LockScreenView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 111
    return-void
.end method
