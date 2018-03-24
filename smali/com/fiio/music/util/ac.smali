.class public final Lcom/fiio/music/util/ac;
.super Landroid/widget/BaseAdapter;
.source "FiioPopupWindow.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/FiioPopupWindow;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/database/Cursor;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/FiioPopupWindow;Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 483
    iput-object p1, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 484
    iput-object p2, p0, Lcom/fiio/music/util/ac;->d:Landroid/content/Context;

    .line 485
    iput-object p3, p0, Lcom/fiio/music/util/ac;->b:Ljava/util/ArrayList;

    .line 486
    iput-object p4, p0, Lcom/fiio/music/util/ac;->c:Landroid/database/Cursor;

    .line 488
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/fiio/music/util/ac;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/fiio/music/util/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    invoke-virtual {p0}, Lcom/fiio/music/util/ac;->notifyDataSetChanged()V

    .line 493
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/fiio/music/util/ac;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 497
    invoke-virtual {p0}, Lcom/fiio/music/util/ac;->notifyDataSetChanged()V

    .line 498
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0, p1}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;I)V

    .line 509
    invoke-virtual {p0}, Lcom/fiio/music/util/ac;->notifyDataSetChanged()V

    .line 511
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/fiio/music/util/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/fiio/music/util/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 529
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 534
    if-nez p2, :cond_6

    .line 536
    new-instance v1, Lcom/fiio/music/util/ad;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/ad;-><init>(Lcom/fiio/music/util/ac;)V

    .line 538
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 539
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 540
    const v3, 0x7f040026

    .line 539
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 554
    :cond_0
    :goto_0
    const v0, 0x7f0b0076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 553
    iput-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    .line 556
    const v0, 0x7f0b0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 555
    iput-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    .line 557
    const v0, 0x7f0b0075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/fiio/music/util/ad;->c:Landroid/widget/ImageButton;

    .line 559
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 564
    :goto_1
    iget-object v0, v1, Lcom/fiio/music/util/ad;->c:Landroid/widget/ImageButton;

    new-instance v3, Lcom/fiio/music/util/af;

    iget-object v4, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v5, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v5}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/fiio/music/util/af;-><init>(Lcom/fiio/music/util/FiioPopupWindow;ILandroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v0, p0, Lcom/fiio/music/util/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 568
    iget-object v3, p0, Lcom/fiio/music/util/ac;->c:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 571
    iget-object v0, p0, Lcom/fiio/music/util/ac;->c:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->c:Landroid/database/Cursor;

    const-string v4, "Aname"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/fiio/music/util/ac;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/fiio/music/util/ac;->c:Landroid/database/Cursor;

    const-string v3, "Aname"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->k(Lcom/fiio/music/util/FiioPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 578
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->l(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    iget-object v3, p0, Lcom/fiio/music/util/ac;->c:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 579
    iget-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 656
    return-object p2

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 543
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 544
    const v3, 0x7f040027

    .line 543
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 546
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 547
    const v3, 0x7f040027

    .line 546
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 548
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 549
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 550
    const v3, 0x7f040027

    .line 549
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 561
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/ad;

    move-object v1, v0

    goto/16 :goto_1

    .line 581
    :cond_7
    iget-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 584
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    iget-object v3, p0, Lcom/fiio/music/util/ac;->c:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_11

    .line 586
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_b

    .line 587
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v3}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 588
    const v4, 0x7f080053

    .line 587
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    :cond_9
    :goto_3
    iget-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->n(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v8, :cond_a

    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->n(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v9, :cond_f

    .line 603
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_e

    .line 604
    iget-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    const v3, 0x7f050005

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 605
    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v3, v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 606
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->o(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_2

    .line 589
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 590
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v3}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 591
    const v4, 0x7f080071

    .line 590
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 592
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v8, :cond_d

    .line 593
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v3}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 594
    const v4, 0x7f080062

    .line 593
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 595
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 596
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v3}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 597
    const v4, 0x7f080062

    .line 596
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 608
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v7, :cond_2

    goto/16 :goto_2

    .line 616
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_10

    .line 617
    iget-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    const v3, 0x7f050005

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 618
    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v0, v1, Lcom/fiio/music/util/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v3, v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 619
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->o(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_2

    .line 621
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v7, :cond_2

    .line 623
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v8, :cond_2

    goto/16 :goto_2

    .line 632
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_12

    .line 633
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v3}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 634
    const v4, 0x7f08004c

    .line 633
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 636
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v7, :cond_13

    .line 637
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v3}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 638
    const v4, 0x7f080007

    .line 637
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 639
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v8, :cond_14

    .line 640
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v3}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 641
    const v4, 0x7f080007

    .line 640
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 642
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 643
    iget-object v0, v1, Lcom/fiio/music/util/ad;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/ac;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v3}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 644
    const v4, 0x7f080007

    .line 643
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method
