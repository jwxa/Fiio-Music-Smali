.class final Lcom/fiio/music/test/f;
.super Ljava/lang/Object;
.source "simpleCursorSongAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/test/simpleCursorSongAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/test/simpleCursorSongAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/test/f;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 286
    packed-switch p2, :pswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/test/f;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$0(Lcom/fiio/music/test/simpleCursorSongAdapter;I)V

    .line 289
    iget-object v0, p0, Lcom/fiio/music/test/f;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/test/f;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$0(Lcom/fiio/music/test/simpleCursorSongAdapter;I)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/test/f;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$0(Lcom/fiio/music/test/simpleCursorSongAdapter;I)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
