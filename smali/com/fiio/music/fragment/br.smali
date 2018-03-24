.class final Lcom/fiio/music/fragment/br;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/br;->a:Lcom/fiio/music/fragment/TabCFr;

    iput-object p2, p0, Lcom/fiio/music/fragment/br;->b:Lcom/fiio/music/custom/f;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/fiio/music/fragment/br;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 722
    iget-object v0, p0, Lcom/fiio/music/fragment/br;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 723
    return-void
.end method
