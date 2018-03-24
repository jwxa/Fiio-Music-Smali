.class final Lcom/fiio/music/adapter/ao;
.super Ljava/lang/Object;
.source "SongItemAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/SongItemAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/SongItemAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/ao;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 124
    packed-switch p2, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ao;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$9(Lcom/fiio/music/adapter/SongItemAdapter;I)V

    .line 127
    iget-object v0, p0, Lcom/fiio/music/adapter/ao;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->access$10(Lcom/fiio/music/adapter/SongItemAdapter;)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ao;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$9(Lcom/fiio/music/adapter/SongItemAdapter;I)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/ao;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->access$9(Lcom/fiio/music/adapter/SongItemAdapter;I)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
