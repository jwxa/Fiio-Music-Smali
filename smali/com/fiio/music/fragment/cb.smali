.class final Lcom/fiio/music/fragment/cb;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/c;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/cb;->a:Lcom/fiio/music/fragment/TabCFr;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 584
    iget-object v0, p0, Lcom/fiio/music/fragment/cb;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$22(Lcom/fiio/music/fragment/TabCFr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const v0, 0x7f020507

    .line 586
    iget-object v1, p0, Lcom/fiio/music/fragment/cb;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/cb;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabCFr;->access$23(Lcom/fiio/music/fragment/TabCFr;I)I

    move-result v2

    .line 585
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_0
    const v0, 0x7f020508

    .line 589
    iget-object v1, p0, Lcom/fiio/music/fragment/cb;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/cb;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabCFr;->access$23(Lcom/fiio/music/fragment/TabCFr;I)I

    move-result v2

    .line 588
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0
.end method
