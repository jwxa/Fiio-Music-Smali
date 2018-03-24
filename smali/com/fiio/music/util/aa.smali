.class public final Lcom/fiio/music/util/aa;
.super Landroid/widget/BaseAdapter;
.source "FiioPopupWindow.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/FiioPopupWindow;

.field private b:Lcom/fiio/music/entity/Song;


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/FiioPopupWindow;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->q(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->q(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 949
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v0, v0, Lcom/fiio/music/util/FiioPopupWindow;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iput-object v0, p0, Lcom/fiio/music/util/aa;->b:Lcom/fiio/music/entity/Song;

    .line 951
    invoke-virtual {p0}, Lcom/fiio/music/util/aa;->notifyDataSetChanged()V

    .line 952
    return-void
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 897
    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curPositon  before :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "from :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to   :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 900
    iget-object v1, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 901
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0, p2}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;I)V

    .line 910
    :cond_0
    :goto_0
    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curPositon  after :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lcom/fiio/music/util/aa;->notifyDataSetChanged()V

    .line 912
    return-void

    .line 902
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    if-ne v1, p2, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 903
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0, p1}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;I)V

    goto :goto_0

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-le p1, v0, :cond_3

    if-le p1, p2, :cond_3

    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 905
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;I)V

    goto :goto_0

    .line 906
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->q(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 921
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v0, v0, Lcom/fiio/music/util/FiioPopupWindow;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/util/aa;->b:Lcom/fiio/music/entity/Song;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 924
    invoke-virtual {p0}, Lcom/fiio/music/util/aa;->notifyDataSetChanged()V

    .line 925
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->q(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->q(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 939
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 956
    if-nez p2, :cond_5

    .line 958
    new-instance v1, Lcom/fiio/music/util/ab;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/ab;-><init>(Lcom/fiio/music/util/aa;)V

    .line 960
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 961
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 962
    const v2, 0x7f040026

    .line 961
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 976
    :cond_0
    :goto_0
    const v0, 0x7f0b0076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 975
    iput-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    .line 978
    const v0, 0x7f0b0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 977
    iput-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    .line 979
    const v0, 0x7f0b0075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/fiio/music/util/ab;->c:Landroid/widget/ImageButton;

    .line 981
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 987
    :goto_1
    iget-object v0, v1, Lcom/fiio/music/util/ab;->c:Landroid/widget/ImageButton;

    new-instance v2, Lcom/fiio/music/util/af;

    iget-object v3, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v4, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v4}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/fiio/music/util/af;-><init>(Lcom/fiio/music/util/FiioPopupWindow;ILandroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->k(Lcom/fiio/music/util/FiioPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 990
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->l(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, p1, :cond_6

    .line 991
    iget-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1072
    :cond_1
    :goto_2
    return-object p2

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 965
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 966
    const v2, 0x7f040027

    .line 965
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 967
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 968
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 969
    const v2, 0x7f040027

    .line 968
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 970
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 971
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 972
    const v2, 0x7f040027

    .line 971
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 983
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/ab;

    move-object v1, v0

    goto :goto_1

    .line 993
    :cond_6
    iget-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 996
    :cond_7
    iget-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 997
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1001
    iget-object v2, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->q(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, p1, :cond_10

    .line 1005
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 1006
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1007
    const v3, 0x7f080053

    .line 1006
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    :cond_8
    :goto_3
    iget-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->n(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v5, :cond_9

    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->n(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v8, :cond_e

    .line 1023
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_d

    .line 1024
    iget-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1025
    iget-object v2, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v2, v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 1026
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->o(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_2

    .line 1009
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v7, :cond_b

    .line 1010
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1011
    const v3, 0x7f080071

    .line 1010
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 1012
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 1013
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1014
    const v3, 0x7f080062

    .line 1013
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 1015
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v8, :cond_8

    .line 1016
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1017
    const v3, 0x7f080062

    .line 1016
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1028
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v7, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v5, :cond_1

    goto/16 :goto_2

    .line 1038
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_f

    .line 1039
    iget-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1040
    iget-object v2, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v0, v1, Lcom/fiio/music/util/ab;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v2, v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 1041
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->o(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_2

    .line 1043
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v7, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-eq v0, v5, :cond_1

    goto/16 :goto_2

    .line 1054
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v6, :cond_11

    .line 1055
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1056
    const v2, 0x7f08004c

    .line 1055
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1058
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v7, :cond_12

    .line 1059
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1060
    const v2, 0x7f080007

    .line 1059
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1061
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v5, :cond_13

    .line 1062
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1063
    const v2, 0x7f080007

    .line 1062
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1064
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->i(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 1065
    iget-object v0, v1, Lcom/fiio/music/util/ab;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/util/aa;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1066
    const v2, 0x7f080007

    .line 1065
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method
