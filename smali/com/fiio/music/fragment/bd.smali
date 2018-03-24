.class final Lcom/fiio/music/fragment/bd;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/bc;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/bc;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bd;->a:Lcom/fiio/music/fragment/bc;

    iput-object p2, p0, Lcom/fiio/music/fragment/bd;->b:Lcom/fiio/music/custom/f;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/fiio/music/fragment/bd;->a:Lcom/fiio/music/fragment/bc;

    iget-object v0, v0, Lcom/fiio/music/fragment/bc;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabAFm;->deleteHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    iget-object v0, p0, Lcom/fiio/music/fragment/bd;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 416
    iget-object v0, p0, Lcom/fiio/music/fragment/bd;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 417
    return-void
.end method
