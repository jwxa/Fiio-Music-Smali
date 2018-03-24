.class final Lcom/fiio/music/fragment/bh;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/c;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const v2, 0x7f020508

    const/16 v3, 0x2d

    .line 539
    iget-object v0, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 540
    const v0, 0x7f020507

    .line 541
    iget-object v1, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 540
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 545
    iget-object v0, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v1

    .line 544
    invoke-static {p1, v2, v0, v1}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 549
    iget-object v0, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v1

    .line 548
    invoke-static {p1, v2, v0, v1}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bh;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v1

    .line 552
    invoke-static {p1, v2, v0, v1}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0
.end method
