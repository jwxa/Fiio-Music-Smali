.class public Lcom/fiio/music/adapter/CueListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "CueListItemAdapter.java"


# static fields
.field public static final CUELIST:I = 0x1

.field public static final M3ULIST:I = 0x2

.field public static final SACDLIST:I = 0x3


# instance fields
.field private UI_IS_CHANGE:Z

.field private context:Landroid/content/Context;

.field private cueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flag:I

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private playingSongFilePath:Ljava/lang/String;

.field private playingSongParentFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fiio/music/service/h;",
            "IZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongFilePath:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongParentFilePath:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->flag:I

    .line 36
    iput-object p1, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->cueList:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 39
    iput p4, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->flag:I

    .line 40
    iput-boolean p5, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->UI_IS_CHANGE:Z

    .line 41
    invoke-virtual {p0}, Lcom/fiio/music/adapter/CueListItemAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->cueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->cueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 132
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayingSongFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingSongParentFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongParentFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 45
    if-nez p2, :cond_6

    .line 47
    new-instance v2, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/CueListItemAdapter;)V

    .line 48
    iget-boolean v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 55
    :goto_0
    const v0, 0x7f0b0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v2, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 56
    iget-object v0, v2, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->cueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    iget-object v2, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v2, v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v2

    .line 67
    iget-boolean v3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->UI_IS_CHANGE:Z

    if-eqz v3, :cond_7

    .line 68
    iget-object v3, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v4, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTextColor(I)V

    .line 73
    :goto_2
    iget v3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->flag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongFilePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    :cond_0
    iget v3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->flag:I

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    :cond_1
    iget v3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->flag:I

    if-ne v3, v8, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongFilePath:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 78
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 82
    iget-boolean v2, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->UI_IS_CHANGE:Z

    if-eqz v2, :cond_8

    .line 84
    iget-object v2, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTextColor(I)V

    .line 90
    :goto_3
    if-eq v0, v7, :cond_4

    .line 93
    if-eq v0, v8, :cond_3

    .line 94
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 97
    :cond_3
    iget-object v0, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    :cond_4
    :goto_4
    return-object p2

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040025

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 59
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;

    move-object v1, v0

    goto/16 :goto_1

    .line 70
    :cond_7
    iget-object v3, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v4, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 86
    :cond_8
    iget-object v2, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTextColor(I)V

    goto :goto_3

    .line 102
    :cond_9
    iget-object v0, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, v1, Lcom/fiio/music/adapter/CueListItemAdapter$ViewHolder;->songList_item:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_4
.end method

.method public setPlayingSongFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongFilePath:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setPlayingSongParentFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/fiio/music/adapter/CueListItemAdapter;->playingSongParentFilePath:Ljava/lang/String;

    .line 149
    return-void
.end method
