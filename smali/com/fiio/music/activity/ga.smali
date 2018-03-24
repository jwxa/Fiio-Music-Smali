.class final Lcom/fiio/music/activity/ga;
.super Ljava/lang/Object;
.source "RecentListActivity.java"

# interfaces
.implements Lcom/fiio/music/service/l;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/RecentListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/RecentListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ga;->a:Lcom/fiio/music/activity/RecentListActivity;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public final a(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fiio/music/activity/ga;->a:Lcom/fiio/music/activity/RecentListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/RecentListActivity;->updateList()V

    .line 233
    return-void
.end method
