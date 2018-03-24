.class final Lcom/fiio/music/fragment/be;
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
    iput-object p1, p0, Lcom/fiio/music/fragment/be;->a:Lcom/fiio/music/fragment/bc;

    iput-object p2, p0, Lcom/fiio/music/fragment/be;->b:Lcom/fiio/music/custom/f;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fiio/music/fragment/be;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 425
    return-void
.end method
