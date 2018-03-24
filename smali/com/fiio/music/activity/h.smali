.class final Lcom/fiio/music/activity/h;
.super Ljava/util/TimerTask;
.source "AdActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AdActivity;


# direct methods
.method public constructor <init>(Lcom/fiio/music/activity/AdActivity;)V
    .locals 1

    .prologue
    .line 169
    iput-object p1, p0, Lcom/fiio/music/activity/h;->a:Lcom/fiio/music/activity/AdActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 171
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/fiio/music/activity/AdActivity;->a(Lcom/fiio/music/activity/AdActivity;I)V

    .line 172
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 177
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/fiio/music/activity/h;->a:Lcom/fiio/music/activity/AdActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AdActivity;->b(Lcom/fiio/music/activity/AdActivity;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-static {v1, v3}, Lcom/fiio/music/activity/AdActivity;->a(Lcom/fiio/music/activity/AdActivity;I)V

    iput v2, v0, Landroid/os/Message;->what:I

    .line 179
    iget-object v1, p0, Lcom/fiio/music/activity/h;->a:Lcom/fiio/music/activity/AdActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AdActivity;->c(Lcom/fiio/music/activity/AdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method
