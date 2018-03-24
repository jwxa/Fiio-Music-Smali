.class final Lcom/fiio/music/swipemenulistview/f;
.super Lcom/fiio/music/swipemenulistview/b;
.source "SwipeMenuListView.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;


# direct methods
.method constructor <init>(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/fiio/music/swipemenulistview/b;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/SwipeMenuView;Lcom/fiio/music/swipemenulistview/a;I)V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->c(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->c(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/fiio/music/swipemenulistview/g;->a(ILcom/fiio/music/swipemenulistview/a;I)Z

    move-result v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->d(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->d(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b()V

    .line 96
    :cond_1
    return-void
.end method

.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fiio/music/swipemenulistview/c;->a(Lcom/fiio/music/swipemenulistview/a;)V

    .line 79
    :cond_0
    return-void
.end method

.method public final b(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->b(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/f;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->b(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fiio/music/swipemenulistview/c;->a(Lcom/fiio/music/swipemenulistview/a;)V

    .line 86
    :cond_0
    return-void
.end method
