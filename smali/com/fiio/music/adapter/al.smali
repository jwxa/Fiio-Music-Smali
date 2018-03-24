.class final Lcom/fiio/music/adapter/al;
.super Ljava/lang/Object;
.source "SongItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/ak;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/ak;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/al;->a:Lcom/fiio/music/adapter/ak;

    iput-object p2, p0, Lcom/fiio/music/adapter/al;->b:Lcom/fiio/music/custom/f;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/fiio/music/adapter/al;->a:Lcom/fiio/music/adapter/ak;

    iget-object v0, v0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 693
    iget-object v0, p0, Lcom/fiio/music/adapter/al;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 694
    iget-object v0, p0, Lcom/fiio/music/adapter/al;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 695
    return-void
.end method
