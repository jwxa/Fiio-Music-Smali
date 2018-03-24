.class public Lcom/fiio/music/adapter/ScanListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScanListAdapter.java"


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private checkState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checkStatelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/ScanData;",
            ">;"
        }
    .end annotation
.end field

.field private files:[Ljava/io/File;

.field private inflater:Landroid/view/LayoutInflater;

.field myFilterFile:Lcom/fiio/music/util/ck;

.field private rs:Ljava/lang/String;

.field private viewHolder:Lcom/fiio/music/adapter/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/ScanData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    .line 32
    new-instance v0, Lcom/fiio/music/util/ck;

    invoke-direct {v0}, Lcom/fiio/music/util/ck;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->myFilterFile:Lcom/fiio/music/util/ck;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkState:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    .line 45
    iput-object p1, p0, Lcom/fiio/music/adapter/ScanListAdapter;->context:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    .line 48
    iput p3, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    .line 50
    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/adapter/ScanListAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/adapter/ScanListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addCheckFilePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public addCheckFilePathForAll(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public cutCheckFilePath(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public deleteCheckAllState(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 246
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->myFilterFile:Lcom/fiio/music/util/ck;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 247
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 252
    return-void

    .line 247
    :cond_0
    aget-object v3, v1, v0

    .line 248
    iget-object v4, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteCheckAllStateForOnly(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    return-void

    .line 256
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteOneCheckState(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-void
.end method

.method public getCheckFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckStateHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkState:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCheckStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/fiio/music/entity/ScanData;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/ScanData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/fiio/music/adapter/ScanListAdapter;->getItem(I)Lcom/fiio/music/entity/ScanData;

    move-result-object v0

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
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/ScanData;

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 98
    if-nez p2, :cond_5

    .line 99
    new-instance v0, Lcom/fiio/music/adapter/af;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/fiio/music/adapter/af;-><init>(Lcom/fiio/music/adapter/ScanListAdapter;B)V

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    .line 101
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_2

    .line 102
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d5

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    const v0, 0x7f0b0073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/fiio/music/adapter/af;->a:Landroid/widget/ImageView;

    .line 111
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    const v0, 0x7f0b0285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/fiio/music/adapter/af;->b:Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    const v0, 0x7f0b0286

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/fiio/music/adapter/af;->c:Landroid/widget/CheckBox;

    .line 113
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/ScanData;

    .line 114
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v2, v2, Lcom/fiio/music/adapter/af;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    :goto_1
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_a

    .line 137
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v0, v0, Lcom/fiio/music/adapter/af;->a:Landroid/widget/ImageView;

    const v2, 0x7f0203c9

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v0, v0, Lcom/fiio/music/adapter/af;->b:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/fiio/music/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v1, v0, Lcom/fiio/music/adapter/af;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/ScanData;

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    new-instance v0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;-><init>(Lcom/fiio/music/adapter/ScanListAdapter;)V

    .line 148
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v1, v1, Lcom/fiio/music/adapter/af;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    return-object p2

    .line 103
    :cond_2
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_3

    .line 104
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d6

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 105
    :cond_3
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_4

    .line 106
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d7

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 107
    :cond_4
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d8

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 117
    :cond_5
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_7

    .line 118
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d5

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    const v0, 0x7f0b0073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/fiio/music/adapter/af;->a:Landroid/widget/ImageView;

    .line 127
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    const v0, 0x7f0b0285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/fiio/music/adapter/af;->b:Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    const v0, 0x7f0b0286

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/fiio/music/adapter/af;->c:Landroid/widget/CheckBox;

    .line 129
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/ScanData;

    .line 130
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v2, v2, Lcom/fiio/music/adapter/af;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/af;

    iput-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    goto/16 :goto_1

    .line 119
    :cond_7
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_8

    .line 120
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d6

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    .line 121
    :cond_8
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_9

    .line 122
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d7

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    .line 123
    :cond_9
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_6

    .line 124
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d8

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    .line 138
    :cond_a
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_b

    .line 139
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v0, v0, Lcom/fiio/music/adapter/af;->a:Landroid/widget/ImageView;

    const v2, 0x7f0203ca

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 140
    :cond_b
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_c

    .line 141
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v0, v0, Lcom/fiio/music/adapter/af;->a:Landroid/widget/ImageView;

    const v2, 0x7f0203cb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 142
    :cond_c
    iget v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_1

    .line 143
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->viewHolder:Lcom/fiio/music/adapter/af;

    iget-object v0, v0, Lcom/fiio/music/adapter/af;->a:Landroid/widget/ImageView;

    const v2, 0x7f0203cc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method

.method public isCheckedAll(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter;->myFilterFile:Lcom/fiio/music/util/ck;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_0

    .line 206
    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    .line 212
    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 206
    :cond_2
    aget-object v4, v2, v1

    .line 207
    iget-object v5, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isCheckedAllForOnly(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 217
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckAllState(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->myFilterFile:Lcom/fiio/music/util/ck;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 230
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 235
    return-void

    .line 230
    :cond_0
    aget-object v3, v1, v0

    .line 231
    iget-object v4, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    iget-object v4, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCheckAllStateForOnly(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    return-void

    .line 238
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCheckFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fiio/music/adapter/ScanListAdapter;->rs:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCheckState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter;->checkStatelist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/ScanData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    iput-object p1, p0, Lcom/fiio/music/adapter/ScanListAdapter;->data:Ljava/util/List;

    .line 265
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ScanListAdapter;->notifyDataSetChanged()V

    .line 266
    return-void
.end method
