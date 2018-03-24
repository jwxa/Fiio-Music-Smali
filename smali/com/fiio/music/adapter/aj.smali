.class final Lcom/fiio/music/adapter/aj;
.super Ljava/lang/Object;
.source "SimpleSongAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/SimpleSongAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/SimpleSongAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/aj;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 116
    packed-switch p2, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/aj;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$5(Lcom/fiio/music/adapter/SimpleSongAdapter;I)V

    .line 119
    iget-object v0, p0, Lcom/fiio/music/adapter/aj;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$6(Lcom/fiio/music/adapter/SimpleSongAdapter;)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/aj;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$5(Lcom/fiio/music/adapter/SimpleSongAdapter;I)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/aj;->a:Lcom/fiio/music/adapter/SimpleSongAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/SimpleSongAdapter;->access$5(Lcom/fiio/music/adapter/SimpleSongAdapter;I)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
