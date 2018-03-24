.class public Lcom/fiio/music/adapter/GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"


# instance fields
.field private checkboxLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private checkboxs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private imageLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/entity/GridData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/fiio/music/adapter/GridViewAdapter;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {p0, p1}, Lcom/fiio/music/adapter/GridViewAdapter;->initArrayList(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->checkboxLists:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getBooleanCheckBoxSizeIsNull()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/GridData;

    .line 242
    invoke-virtual {v0}, Lcom/fiio/music/entity/GridData;->getcheckBox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageLists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/entity/GridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 162
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 169
    if-nez p2, :cond_1

    .line 170
    new-instance v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/GridViewAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 172
    const v0, 0x7f0b0182

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f0b0183

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0b0184

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    .line 175
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->checkboxs:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/GridData;

    invoke-virtual {v0}, Lcom/fiio/music/entity/GridData;->getImageView()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    iget-object v2, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/GridData;

    invoke-virtual {v0}, Lcom/fiio/music/entity/GridData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/GridData;

    invoke-virtual {v0}, Lcom/fiio/music/entity/GridData;->getcheckBox()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    iget-object v0, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->checkboxLists:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    iget-object v0, v1, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fiio/music/adapter/k;

    invoke-direct {v1, p0, p1}, Lcom/fiio/music/adapter/k;-><init>(Lcom/fiio/music/adapter/GridViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    return-object p2

    .line 177
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/GridViewAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method

.method public initArrayList(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v3, 0x0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->checkboxLists:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/GridViewAdapter;->checkboxs:Ljava/util/ArrayList;

    .line 79
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 85
    new-array v6, v8, [Ljava/lang/String;

    .line 86
    const v0, 0x7f0c020a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 87
    const v0, 0x7f0c020b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 88
    const v0, 0x7f0c020c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 92
    new-array v7, v8, [Z

    .line 95
    aput-boolean v9, v7, v1

    .line 100
    const-string v0, "GridData"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    const-string v1, "grid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/a/a/aq;

    invoke-direct {v1}, Lcom/a/a/aq;-><init>()V

    .line 106
    if-eqz v0, :cond_0

    .line 108
    new-instance v2, Lcom/fiio/music/adapter/j;

    invoke-direct {v2, p0}, Lcom/fiio/music/adapter/j;-><init>(Lcom/fiio/music/adapter/GridViewAdapter;)V

    invoke-virtual {v2}, Lcom/fiio/music/adapter/j;->a()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v0, v2}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v2, v3

    move v4, v3

    .line 112
    :goto_0
    array-length v1, v7

    if-lt v2, v1, :cond_1

    .line 123
    if-ne v4, v8, :cond_0

    .line 124
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aput-boolean v9, v7, v0

    .line 131
    :cond_0
    :goto_1
    array-length v0, v5

    if-lt v3, v0, :cond_4

    .line 142
    return-void

    .line 113
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_3

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/GridData;

    invoke-virtual {v1}, Lcom/fiio/music/entity/GridData;->getcheckBox()Z

    move-result v1

    aput-boolean v1, v7, v2

    .line 115
    aget-boolean v1, v7, v2

    if-nez v1, :cond_2

    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 112
    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 119
    :cond_3
    aput-boolean v3, v7, v2

    goto :goto_2

    .line 132
    :cond_4
    new-instance v0, Lcom/fiio/music/entity/GridData;

    invoke-direct {v0}, Lcom/fiio/music/entity/GridData;-><init>()V

    .line 133
    aget v1, v5, v3

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/GridData;->setImageView(I)V

    .line 134
    aget-object v1, v6, v3

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/GridData;->setName(Ljava/lang/String;)V

    .line 135
    aget-boolean v1, v7, v3

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/GridData;->setCheckBox(Z)V

    .line 136
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/GridData;->setIntSkin(I)V

    .line 138
    iget-object v1, p0, Lcom/fiio/music/adapter/GridViewAdapter;->imageLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    :array_0
    .array-data 4
        0x7f020473
        0x7f020474
        0x7f020475
    .end array-data
.end method
