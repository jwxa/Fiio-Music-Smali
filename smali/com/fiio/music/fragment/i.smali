.class final Lcom/fiio/music/fragment/i;
.super Landroid/widget/BaseAdapter;
.source "DlnaFragment.java"


# instance fields
.field public a:I

.field final synthetic b:Lcom/fiio/music/fragment/DlnaFragment;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/drawable/AnimationDrawable;

.field private j:Lcom/fiio/music/service/h;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/b/a/b/f/a;


# direct methods
.method public constructor <init>(Lcom/fiio/music/fragment/DlnaFragment;Landroid/content/Context;Ljava/util/ArrayList;Lcom/fiio/music/service/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/c;",
            ">;",
            "Lcom/fiio/music/service/h;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 715
    iput-object p1, p0, Lcom/fiio/music/fragment/i;->b:Lcom/fiio/music/fragment/DlnaFragment;

    .line 714
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 705
    iput v1, p0, Lcom/fiio/music/fragment/i;->a:I

    .line 712
    new-instance v0, Lcom/fiio/music/fragment/h;

    invoke-direct {v0, v1}, Lcom/fiio/music/fragment/h;-><init>(B)V

    iput-object v0, p0, Lcom/fiio/music/fragment/i;->n:Lcom/b/a/b/f/a;

    .line 717
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 716
    iput-object v0, p0, Lcom/fiio/music/fragment/i;->d:Landroid/view/LayoutInflater;

    .line 718
    iput-object p2, p0, Lcom/fiio/music/fragment/i;->c:Landroid/content/Context;

    .line 719
    iput-object p3, p0, Lcom/fiio/music/fragment/i;->m:Ljava/util/ArrayList;

    .line 720
    iput-object p4, p0, Lcom/fiio/music/fragment/i;->j:Lcom/fiio/music/service/h;

    .line 721
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 722
    const v1, 0x7f0203d7

    .line 721
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/i;->e:Landroid/graphics/Bitmap;

    .line 723
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 724
    const v1, 0x7f02048c

    .line 723
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/i;->f:Landroid/graphics/Bitmap;

    .line 725
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 726
    const v1, 0x7f0203a4

    .line 725
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/i;->g:Landroid/graphics/Bitmap;

    .line 727
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 728
    const v1, 0x7f0203c9

    .line 727
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/i;->h:Landroid/graphics/Bitmap;

    .line 729
    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/service/h;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/fiio/music/fragment/i;->j:Lcom/fiio/music/service/h;

    .line 736
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/fiio/music/fragment/i;->k:Ljava/lang/String;

    .line 739
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/fiio/music/fragment/i;->l:Ljava/lang/String;

    .line 742
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 748
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 754
    if-nez p2, :cond_2

    .line 755
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->b:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$24(Lcom/fiio/music/fragment/DlnaFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f040020

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 760
    :goto_0
    new-instance v2, Lcom/fiio/music/fragment/j;

    invoke-direct {v2, p0}, Lcom/fiio/music/fragment/j;-><init>(Lcom/fiio/music/fragment/i;)V

    .line 762
    const v0, 0x7f0b006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 761
    iput-object v0, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    .line 764
    const v0, 0x7f0b006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 763
    iput-object v0, v2, Lcom/fiio/music/fragment/j;->b:Landroid/widget/ImageView;

    .line 766
    const v0, 0x7f0b006d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 765
    iput-object v0, v2, Lcom/fiio/music/fragment/j;->c:Landroid/widget/ImageView;

    .line 767
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    .line 771
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->m:Ljava/util/ArrayList;

    .line 772
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/d/a/c;

    .line 774
    iget-object v1, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    .line 778
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    .line 779
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v1

    .line 778
    if-eqz v1, :cond_c

    .line 780
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    .line 781
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v1

    .line 782
    invoke-virtual {v1}, Lorg/seamless/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v1

    .line 783
    const-string v5, "image"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 784
    iget-object v1, v2, Lcom/fiio/music/fragment/j;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/fiio/music/fragment/i;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 786
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 821
    :goto_2
    iget-object v5, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v3, v1

    .line 824
    :cond_0
    :goto_3
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 825
    :goto_4
    if-lt v4, v5, :cond_9

    .line 839
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->b:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v0, v0, Lcom/fiio/music/fragment/DlnaFragment;->imageLoader:Lcom/b/a/b/f;

    iget-object v1, v2, Lcom/fiio/music/fragment/j;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fiio/music/fragment/i;->b:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v4, v4, Lcom/fiio/music/fragment/DlnaFragment;->options:Lcom/b/a/b/d;

    .line 840
    iget-object v5, p0, Lcom/fiio/music/fragment/i;->n:Lcom/b/a/b/f/a;

    .line 839
    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;Lcom/b/a/b/f/a;)V

    .line 841
    iget-object v0, v2, Lcom/fiio/music/fragment/j;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 847
    :goto_6
    return-object p2

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/i;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f040021

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 769
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/fragment/j;

    move-object v2, v0

    goto/16 :goto_1

    .line 788
    :cond_3
    const-string v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 790
    iget-object v1, v2, Lcom/fiio/music/fragment/j;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/fiio/music/fragment/i;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v1, v3

    .line 791
    goto :goto_2

    :cond_4
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 793
    iget-object v1, v2, Lcom/fiio/music/fragment/j;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/fiio/music/fragment/i;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 794
    iget-object v1, p0, Lcom/fiio/music/fragment/i;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/fragment/i;->k:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 795
    iget-object v5, p0, Lcom/fiio/music/fragment/i;->j:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 798
    iget-object v1, p0, Lcom/fiio/music/fragment/i;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f050001

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 803
    iget-object v5, p0, Lcom/fiio/music/fragment/i;->j:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->m()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 804
    iget-object v5, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 805
    iget-object v1, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/fragment/i;->i:Landroid/graphics/drawable/AnimationDrawable;

    .line 806
    iget-object v1, p0, Lcom/fiio/music/fragment/i;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_3

    .line 807
    :cond_5
    iget-object v5, p0, Lcom/fiio/music/fragment/i;->j:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->m()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 808
    iget-object v5, p0, Lcom/fiio/music/fragment/i;->j:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->m()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 809
    :cond_6
    iget-object v5, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 810
    iget-object v1, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/fragment/i;->i:Landroid/graphics/drawable/AnimationDrawable;

    .line 811
    iget-object v1, p0, Lcom/fiio/music/fragment/i;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_3

    .line 814
    :cond_7
    iget-object v1, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 817
    :cond_8
    iget-object v1, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 826
    :cond_9
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 827
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 828
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v1

    .line 829
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 828
    if-eqz v1, :cond_a

    .line 830
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    .line 831
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 832
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "albumArtURI"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 834
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 825
    :cond_a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_4

    .line 843
    :cond_b
    iget-object v0, v2, Lcom/fiio/music/fragment/j;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/fragment/i;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 844
    iget-object v0, v2, Lcom/fiio/music/fragment/j;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 845
    iget-object v0, v2, Lcom/fiio/music/fragment/j;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_c
    move-object v1, v3

    goto/16 :goto_2
.end method
