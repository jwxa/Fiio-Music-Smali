.class final Lcom/fiio/music/adapter/w;
.super Ljava/lang/Object;
.source "QueryAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/QueryAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/w;->a:Lcom/fiio/music/adapter/QueryAdapter;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 153
    packed-switch p2, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/w;->a:Lcom/fiio/music/adapter/QueryAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$0(Lcom/fiio/music/adapter/QueryAdapter;I)V

    .line 156
    iget-object v0, p0, Lcom/fiio/music/adapter/w;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/w;->a:Lcom/fiio/music/adapter/QueryAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$0(Lcom/fiio/music/adapter/QueryAdapter;I)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/w;->a:Lcom/fiio/music/adapter/QueryAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$0(Lcom/fiio/music/adapter/QueryAdapter;I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
