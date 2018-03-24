.class public Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "FiioPopupWindow.java"


# instance fields
.field playerFlag:I

.field final synthetic this$0:Lcom/fiio/music/util/FiioPopupWindow;


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/FiioPopupWindow;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 7

    .prologue
    .line 673
    iput-object p1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 674
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 671
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->playerFlag:I

    .line 677
    iput p7, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->playerFlag:I

    .line 678
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 739
    new-instance v1, Lcom/fiio/music/util/z;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/z;-><init>(Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;)V

    .line 741
    const v0, 0x7f0b0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 740
    iput-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    .line 743
    const v0, 0x7f0b0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 742
    iput-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    .line 744
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 746
    const-string v0, "Aname"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 749
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->k(Lcom/fiio/music/util/FiioPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->l(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 751
    iget-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 823
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 827
    return-void

    .line 753
    :cond_1
    iget-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_b

    .line 758
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 759
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 760
    const v4, 0x7f080053

    .line 759
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 772
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->n(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->n(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 775
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 776
    iget-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    const v3, 0x7f050005

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 777
    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v3, v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 778
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->o(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 761
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 762
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 763
    const v4, 0x7f080071

    .line 762
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 764
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 765
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 766
    const v4, 0x7f080062

    .line 765
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 767
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 768
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 769
    const v4, 0x7f080062

    .line 768
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 780
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 782
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 790
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 791
    iget-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    const v3, 0x7f050005

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 792
    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v0, v1, Lcom/fiio/music/util/z;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v3, v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 793
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->o(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_0

    .line 795
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 796
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 803
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 804
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 805
    const v4, 0x7f08004c

    .line 804
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 807
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v7, :cond_d

    .line 808
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 809
    const v4, 0x7f080007

    .line 808
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 810
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v5, :cond_e

    .line 811
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 812
    const v4, 0x7f080007

    .line 811
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 813
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 814
    iget-object v0, v1, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 815
    const v4, 0x7f080007

    .line 814
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public getCurPosition()I
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 683
    invoke-super {p0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 840
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataInPopwindow(I)V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->p(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0, p1}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;I)V

    .line 850
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->p(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->notifyDataSetChanged()V

    .line 852
    :cond_0
    return-void
.end method

.method public setDataChange(Landroid/database/Cursor;I)V
    .locals 0

    .prologue
    .line 855
    invoke-virtual {p0, p1}, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 856
    iput p2, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->playerFlag:I

    .line 857
    invoke-virtual {p0}, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->notifyDataSetChanged()V

    .line 858
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 836
    invoke-super {p0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public updateSingle(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const v2, 0x7f080007

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/z;

    .line 688
    if-eqz p2, :cond_4

    .line 690
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 691
    iget-object v0, v0, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 692
    const v2, 0x7f080053

    .line 691
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 695
    iget-object v0, v0, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 696
    const v2, 0x7f080071

    .line 695
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 697
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 698
    iget-object v0, v0, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 699
    const v2, 0x7f080062

    .line 698
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 700
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 701
    iget-object v0, v0, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 702
    const v2, 0x7f080062

    .line 701
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 713
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 714
    iget-object v0, v0, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 715
    const v2, 0x7f080053

    .line 714
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 717
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 718
    iget-object v0, v0, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 720
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 721
    iget-object v0, v0, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 723
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->this$0:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 724
    iget-object v0, v0, Lcom/fiio/music/util/z;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
