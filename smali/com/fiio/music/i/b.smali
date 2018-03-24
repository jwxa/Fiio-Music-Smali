.class public final Lcom/fiio/music/i/b;
.super Landroid/widget/BaseAdapter;
.source "SortAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/i/b;->c:I

    .line 26
    iput-object p1, p0, Lcom/fiio/music/i/b;->b:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    .line 28
    iput p3, p0, Lcom/fiio/music/i/b;->c:I

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    invoke-virtual {p0}, Lcom/fiio/music/i/b;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/fiio/music/i/b;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getPositionForSection(I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/i/b;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 169
    const/4 v1, -0x1

    :cond_0
    return v1

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    if-eq v0, p1, :cond_0

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 59
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    if-nez p2, :cond_6

    .line 62
    new-instance v1, Lcom/fiio/music/i/c;

    invoke-direct {v1}, Lcom/fiio/music/i/c;-><init>()V

    .line 64
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v5, :cond_3

    .line 65
    iget-object v0, p0, Lcom/fiio/music/i/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0400ed

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    :goto_0
    const v0, 0x7f0b01b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0b02a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/i/c;->c:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0b02a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/i/c;->d:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0b00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/i/c;->b:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_1
    iget-object v2, v1, Lcom/fiio/music/i/c;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 95
    iget-object v2, v1, Lcom/fiio/music/i/c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v5, :cond_7

    .line 98
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f020448

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :cond_1
    :goto_2
    iget-object v0, v1, Lcom/fiio/music/i/c;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :cond_2
    :goto_3
    return-object p2

    .line 66
    :cond_3
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v7, :cond_4

    .line 67
    iget-object v0, p0, Lcom/fiio/music/i/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0400ee

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 68
    :cond_4
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v8, :cond_5

    .line 69
    iget-object v0, p0, Lcom/fiio/music/i/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0400ef

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 70
    :cond_5
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v9, :cond_0

    .line 71
    iget-object v0, p0, Lcom/fiio/music/i/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0400f0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 79
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/c;

    move-object v1, v0

    goto/16 :goto_1

    .line 99
    :cond_7
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v7, :cond_8

    .line 100
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f02047c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 101
    :cond_8
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v8, :cond_9

    .line 102
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f02044a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 103
    :cond_9
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v9, :cond_1

    .line 104
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f02044b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 107
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 108
    iget-object v0, p0, Lcom/fiio/music/i/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v3, v1, Lcom/fiio/music/i/c;->d:Landroid/widget/TextView;

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v5, :cond_c

    .line 112
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f02043c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    :cond_b
    :goto_4
    iget-object v0, v1, Lcom/fiio/music/i/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 113
    :cond_c
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v7, :cond_d

    .line 114
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f0203a1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 115
    :cond_d
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v8, :cond_e

    .line 116
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f0203a2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 117
    :cond_e
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v9, :cond_b

    .line 118
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f0203a3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 121
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/fiio/music/i/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v3, v1, Lcom/fiio/music/i/c;->d:Landroid/widget/TextView;

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fiio/music/i/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v5, :cond_11

    .line 126
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f02043b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :cond_10
    :goto_5
    iget-object v0, v1, Lcom/fiio/music/i/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 127
    :cond_11
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v7, :cond_12

    .line 128
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f02039b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 129
    :cond_12
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v8, :cond_13

    .line 130
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f02039c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 131
    :cond_13
    iget v0, p0, Lcom/fiio/music/i/b;->c:I

    if-ne v0, v9, :cond_10

    .line 132
    iget-object v0, v1, Lcom/fiio/music/i/c;->a:Landroid/widget/ImageView;

    const v2, 0x7f02039d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method
