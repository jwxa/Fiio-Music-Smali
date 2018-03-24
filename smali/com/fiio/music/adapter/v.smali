.class final Lcom/fiio/music/adapter/v;
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
    iput-object p1, p0, Lcom/fiio/music/adapter/v;->a:Lcom/fiio/music/adapter/t;

    iput-object p2, p0, Lcom/fiio/music/adapter/v;->b:Lcom/fiio/music/custom/f;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/fiio/music/adapter/v;->a:Lcom/fiio/music/adapter/t;

    iget-object v0, v0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->cancelSelect()V

    .line 462
    iget-object v0, p0, Lcom/fiio/music/adapter/v;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 463
    return-void
.end method
