.class final Lcom/fiio/music/fragment/as;
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
    iput-object p1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 565
    iget-object v0, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 566
    const v0, 0x7f0204f5

    .line 567
    iget-object v1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 566
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 568
    const v0, 0x7f0204f7

    .line 569
    iget-object v1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 568
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 570
    const v0, 0x7f020516

    .line 571
    iget-object v1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 570
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 572
    const v0, 0x7f020518

    .line 573
    iget-object v1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 572
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 587
    :cond_2
    const v0, 0x7f0204f6

    .line 588
    iget-object v1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 587
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 589
    const v0, 0x7f0204f8

    .line 590
    iget-object v1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 589
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 591
    const v0, 0x7f020517

    .line 592
    iget-object v1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 591
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 593
    const v0, 0x7f020519

    .line 594
    iget-object v1, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/as;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabAFm;->access$30(Lcom/fiio/music/fragment/TabAFm;I)I

    move-result v2

    .line 593
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0
.end method
