.class final Lcom/fiio/music/adapter/h;
.super Ljava/lang/Object;
.source "FileListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/f;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/f;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/h;->a:Lcom/fiio/music/adapter/f;

    iput-object p2, p0, Lcom/fiio/music/adapter/h;->b:Lcom/fiio/music/custom/f;

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/fiio/music/adapter/h;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->cancelSelect()V

    .line 807
    iget-object v0, p0, Lcom/fiio/music/adapter/h;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 808
    iget-object v0, p0, Lcom/fiio/music/adapter/h;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 809
    return-void
.end method
