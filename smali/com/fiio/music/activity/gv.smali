.class final Lcom/fiio/music/activity/gv;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gv;->a:Lcom/fiio/music/activity/SplashActivity;

    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/gv;->a:Lcom/fiio/music/activity/SplashActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SplashActivity;->a(Lcom/fiio/music/activity/SplashActivity;)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/gv;->a:Lcom/fiio/music/activity/SplashActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SplashActivity;->b(Lcom/fiio/music/activity/SplashActivity;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
