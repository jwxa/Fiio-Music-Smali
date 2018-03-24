.class final Lcom/fiio/music/fragment/ax;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ax;->a:Lcom/fiio/music/fragment/TabAFm;

    iput-object p2, p0, Lcom/fiio/music/fragment/ax;->b:Lcom/fiio/music/custom/f;

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/fiio/music/fragment/ax;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 901
    return-void
.end method
