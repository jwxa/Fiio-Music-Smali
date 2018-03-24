.class final Lcom/fiio/music/activity/ek;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ek;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/fiio/music/activity/ek;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$16(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/fiio/music/activity/ek;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ek;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$16(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$46(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 222
    iget-object v0, p0, Lcom/fiio/music/activity/ek;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ek;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$16(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$47(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 225
    :cond_0
    return-void
.end method
