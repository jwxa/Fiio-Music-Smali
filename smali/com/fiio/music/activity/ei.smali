.class final Lcom/fiio/music/activity/ei;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ei;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 916
    check-cast p2, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {p2}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContentView()Landroid/view/View;

    .line 917
    iget-object v0, p0, Lcom/fiio/music/activity/ei;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$8(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 921
    const-string v0, "xyz"

    const-string v1, "onItemLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
