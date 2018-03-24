.class public Lcom/fiio/music/adapter/DragAdapter;
.super Landroid/widget/BaseAdapter;
.source "DragAdapter.java"


# instance fields
.field private ShowItem:Z

.field private SkinParamter:I

.field private isChanged:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHidePosition:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mHidePosition:I

    .line 30
    iput-boolean v1, p0, Lcom/fiio/music/adapter/DragAdapter;->isChanged:Z

    .line 31
    iput-boolean v1, p0, Lcom/fiio/music/adapter/DragAdapter;->ShowItem:Z

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/DragAdapter;->SkinParamter:I

    .line 44
    iput-object p2, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Lcom/fiio/music/adapter/DragAdapter;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mHidePosition:I

    .line 30
    iput-boolean v1, p0, Lcom/fiio/music/adapter/DragAdapter;->isChanged:Z

    .line 31
    iput-boolean v1, p0, Lcom/fiio/music/adapter/DragAdapter;->ShowItem:Z

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/DragAdapter;->SkinParamter:I

    .line 37
    iput-object p2, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p1, p0, Lcom/fiio/music/adapter/DragAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput p3, p0, Lcom/fiio/music/adapter/DragAdapter;->SkinParamter:I

    .line 41
    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/DragAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public exchange(II)V
    .locals 3

    .prologue
    .line 169
    iput p2, p0, Lcom/fiio/music/adapter/DragAdapter;->mHidePosition:I

    .line 170
    invoke-virtual {p0, p1}, Lcom/fiio/music/adapter/DragAdapter;->getItem(I)Ljava/util/HashMap;

    move-result-object v0

    .line 173
    if-ge p1, p2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 181
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/adapter/DragAdapter;->isChanged:Z

    .line 183
    invoke-virtual {p0}, Lcom/fiio/music/adapter/DragAdapter;->notifyDataSetChanged()V

    .line 184
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/fiio/music/adapter/DragAdapter;->getItem(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x4

    const v3, 0x7f040077

    const/4 v2, 0x0

    .line 70
    iget v0, p0, Lcom/fiio/music/adapter/DragAdapter;->SkinParamter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040076

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    :cond_0
    :goto_0
    const v0, 0x7f0b0180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    iget-object v1, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "item_image"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v1, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "item_bg"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    iget-boolean v1, p0, Lcom/fiio/music/adapter/DragAdapter;->isChanged:Z

    if-eqz v1, :cond_1

    .line 86
    iget v1, p0, Lcom/fiio/music/adapter/DragAdapter;->mHidePosition:I

    if-ne p1, v1, :cond_1

    .line 87
    iget-boolean v1, p0, Lcom/fiio/music/adapter/DragAdapter;->ShowItem:Z

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_1
    new-instance v1, Lcom/fiio/music/adapter/d;

    invoke-direct {v1, p0, v0}, Lcom/fiio/music/adapter/d;-><init>(Lcom/fiio/music/adapter/DragAdapter;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v0, Lcom/fiio/music/adapter/e;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/e;-><init>(Lcom/fiio/music/adapter/DragAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 128
    return-object p2

    .line 72
    :cond_2
    iget v0, p0, Lcom/fiio/music/adapter/DragAdapter;->SkinParamter:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 73
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 74
    :cond_3
    iget v0, p0, Lcom/fiio/music/adapter/DragAdapter;->SkinParamter:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 75
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 76
    :cond_4
    iget v0, p0, Lcom/fiio/music/adapter/DragAdapter;->SkinParamter:I

    if-ne v0, v4, :cond_0

    .line 77
    iget-object v0, p0, Lcom/fiio/music/adapter/DragAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0
.end method

.method public setHidePosition(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/fiio/music/adapter/DragAdapter;->mHidePosition:I

    .line 147
    return-void
.end method

.method public showDropItem(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/fiio/music/adapter/DragAdapter;->ShowItem:Z

    .line 138
    return-void
.end method
