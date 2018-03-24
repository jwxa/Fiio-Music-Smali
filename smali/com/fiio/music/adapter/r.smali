.class final Lcom/fiio/music/adapter/r;
.super Ljava/lang/Object;
.source "MenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/MenuAdapter;

.field private final synthetic b:I

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/MenuAdapter;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/r;->a:Lcom/fiio/music/adapter/MenuAdapter;

    iput p2, p0, Lcom/fiio/music/adapter/r;->b:I

    iput-object p3, p0, Lcom/fiio/music/adapter/r;->c:Landroid/view/View;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fiio/music/adapter/r;->a:Lcom/fiio/music/adapter/MenuAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/MenuAdapter;->access$0(Lcom/fiio/music/adapter/MenuAdapter;)Lcom/fiio/music/adapter/MenuAdapter$ItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/fiio/music/adapter/r;->a:Lcom/fiio/music/adapter/MenuAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/MenuAdapter;->access$0(Lcom/fiio/music/adapter/MenuAdapter;)Lcom/fiio/music/adapter/MenuAdapter$ItemListener;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/adapter/r;->b:I

    iget-object v2, p0, Lcom/fiio/music/adapter/r;->c:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/fiio/music/adapter/MenuAdapter$ItemListener;->onClickListener(ILandroid/view/View;)V

    .line 73
    :cond_0
    return-void
.end method
