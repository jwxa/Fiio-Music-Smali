.class final Lcom/fiio/music/adapter/p;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/ListItemAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/ListItemAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/p;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 101
    packed-switch p2, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/p;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$17(Lcom/fiio/music/adapter/ListItemAdapter;I)V

    .line 104
    iget-object v0, p0, Lcom/fiio/music/adapter/p;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$16(Lcom/fiio/music/adapter/ListItemAdapter;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/p;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$17(Lcom/fiio/music/adapter/ListItemAdapter;I)V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/p;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$17(Lcom/fiio/music/adapter/ListItemAdapter;I)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
