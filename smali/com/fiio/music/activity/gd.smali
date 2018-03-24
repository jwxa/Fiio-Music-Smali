.class final Lcom/fiio/music/activity/gd;
.super Landroid/content/BroadcastReceiver;
.source "RecentListActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/RecentListActivity;


# direct methods
.method private constructor <init>(Lcom/fiio/music/activity/RecentListActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/fiio/music/activity/gd;->a:Lcom/fiio/music/activity/RecentListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/activity/RecentListActivity;B)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/gd;-><init>(Lcom/fiio/music/activity/RecentListActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 240
    const-string v0, "flag"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 243
    if-eqz v0, :cond_0

    .line 245
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/fiio/music/activity/gd;->a:Lcom/fiio/music/activity/RecentListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/RecentListActivity;->updateList()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/fiio/music/activity/gd;->a:Lcom/fiio/music/activity/RecentListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/RecentListActivity;->updateList()V

    goto :goto_0
.end method
