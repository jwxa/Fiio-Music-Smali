.class final Lcom/fiio/music/adapter/u;
.super Ljava/lang/Object;
.source "PlayListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/t;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/t;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/u;->a:Lcom/fiio/music/adapter/t;

    iput-object p2, p0, Lcom/fiio/music/adapter/u;->b:Lcom/fiio/music/custom/f;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/fiio/music/adapter/u;->a:Lcom/fiio/music/adapter/t;

    iget-object v0, v0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/PlayListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 452
    iget-object v0, p0, Lcom/fiio/music/adapter/u;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 453
    iget-object v0, p0, Lcom/fiio/music/adapter/u;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 454
    return-void
.end method
