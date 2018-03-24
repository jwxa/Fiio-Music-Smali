.class final Lcom/fiio/music/fragment/c;
.super Landroid/widget/ArrayAdapter;
.source "DlnaFirstFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/fiio/music/d/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field final synthetic b:Lcom/fiio/music/fragment/DlnaFirstFragment;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/d/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fiio/music/fragment/DlnaFirstFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 131
    iput-object p1, p0, Lcom/fiio/music/fragment/c;->b:Lcom/fiio/music/fragment/DlnaFirstFragment;

    .line 132
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 126
    iput v0, p0, Lcom/fiio/music/fragment/c;->a:I

    .line 134
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    iput-object v0, p0, Lcom/fiio/music/fragment/c;->c:Landroid/view/LayoutInflater;

    .line 135
    iput-object p3, p0, Lcom/fiio/music/fragment/c;->d:Ljava/util/List;

    .line 136
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/d/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-virtual {p0}, Lcom/fiio/music/fragment/c;->notifyDataSetChanged()V

    .line 141
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/d/a/d;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 157
    if-nez p2, :cond_4

    .line 159
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->b:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$0(Lcom/fiio/music/fragment/DlnaFirstFragment;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 160
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040040

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 173
    :cond_0
    :goto_0
    new-instance v1, Lcom/fiio/music/fragment/d;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/d;-><init>(Lcom/fiio/music/fragment/c;)V

    .line 175
    const v0, 0x7f0b00a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    iput-object v0, v1, Lcom/fiio/music/fragment/d;->a:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0b00a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/fiio/music/fragment/d;->b:Landroid/widget/CheckBox;

    .line 177
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/d/a/d;

    .line 183
    iget-object v2, v1, Lcom/fiio/music/fragment/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/d/a/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    sget-object v2, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    if-eqz v2, :cond_5

    .line 185
    sget-object v2, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    invoke-virtual {v2, v0}, Lcom/fiio/music/d/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, v1, Lcom/fiio/music/fragment/d;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    :goto_2
    return-object p2

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->b:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$0(Lcom/fiio/music/fragment/DlnaFirstFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040041

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->b:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$0(Lcom/fiio/music/fragment/DlnaFirstFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 164
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040042

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->b:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$0(Lcom/fiio/music/fragment/DlnaFirstFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/fiio/music/fragment/c;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040043

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/fragment/d;

    move-object v1, v0

    goto :goto_1

    .line 188
    :cond_5
    iget-object v0, v1, Lcom/fiio/music/fragment/d;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method
