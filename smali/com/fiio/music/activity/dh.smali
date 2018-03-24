.class final Lcom/fiio/music/activity/dh;
.super Landroid/os/Handler;
.source "LockScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LockScreenActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dh;->a:Lcom/fiio/music/activity/LockScreenActivity;

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/dh;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LockScreenActivity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
