.class final Lcom/fiio/music/adapter/m;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/l;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/l;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/m;->a:Lcom/fiio/music/adapter/l;

    iput-object p2, p0, Lcom/fiio/music/adapter/m;->b:Lcom/fiio/music/custom/f;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 553
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 554
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 555
    iget-object v1, p0, Lcom/fiio/music/adapter/m;->a:Lcom/fiio/music/adapter/l;

    iget-object v1, v1, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$12(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 557
    iget-object v0, p0, Lcom/fiio/music/adapter/m;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 558
    iget-object v0, p0, Lcom/fiio/music/adapter/m;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 559
    return-void
.end method
