.class final Lcom/fiio/music/adapter/n;
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
    iput-object p1, p0, Lcom/fiio/music/adapter/n;->a:Lcom/fiio/music/adapter/l;

    iput-object p2, p0, Lcom/fiio/music/adapter/n;->b:Lcom/fiio/music/custom/f;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/fiio/music/adapter/n;->a:Lcom/fiio/music/adapter/l;

    iget-object v0, v0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    .line 567
    iget-object v0, p0, Lcom/fiio/music/adapter/n;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 568
    return-void
.end method
