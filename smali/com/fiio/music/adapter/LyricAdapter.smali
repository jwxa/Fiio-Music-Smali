.class public Lcom/fiio/music/adapter/LyricAdapter;
.super Landroid/widget/BaseAdapter;
.source "LyricAdapter.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$fiio$music$adapter$LyricAdapter$LyricFontSize:[I

.field public static final DEFAULT_LYRIC_FONT_SIZE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private STYLE_PARAMTER:I

.field private changeboolean:Z

.field private isLockScreen:Z

.field mContext:Landroid/content/Context;

.field mEnumedLyricFontSize:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

.field mHighlightedLyricFontSize:F

.field mIndexOfCurrentSentence:I

.field mLyricFontSize:F

.field mLyricSentences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;"
        }
    .end annotation
.end field

.field paddingCount:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$fiio$music$adapter$LyricAdapter$LyricFontSize()[I
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter;->$SWITCH_TABLE$com$fiio$music$adapter$LyricAdapter$LyricFontSize:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->values()[Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->MEDIUM:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter;->$SWITCH_TABLE$com$fiio$music$adapter$LyricAdapter$LyricFontSize:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->MEDIUM:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter;->DEFAULT_LYRIC_FONT_SIZE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;IZ)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput v1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mIndexOfCurrentSentence:I

    .line 59
    iput v1, p0, Lcom/fiio/music/adapter/LyricAdapter;->paddingCount:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->STYLE_PARAMTER:I

    .line 64
    iput-object p1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    .line 66
    iput v1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mIndexOfCurrentSentence:I

    .line 67
    iput p3, p0, Lcom/fiio/music/adapter/LyricAdapter;->STYLE_PARAMTER:I

    .line 69
    iput-boolean p4, p0, Lcom/fiio/music/adapter/LyricAdapter;->isLockScreen:Z

    .line 71
    invoke-direct {p0, p2}, Lcom/fiio/music/adapter/LyricAdapter;->setLyricFontSize(Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V

    .line 72
    return-void
.end method

.method private setLyricFontSize(Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V
    .locals 5

    .prologue
    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 233
    invoke-static {}, Lcom/fiio/music/adapter/LyricAdapter;->$SWITCH_TABLE$com$fiio$music$adapter$LyricAdapter$LyricFontSize()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    iput-object p1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mEnumedLyricFontSize:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    .line 258
    return-void

    .line 235
    :pswitch_0
    iput v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mHighlightedLyricFontSize:F

    .line 236
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricFontSize:F

    goto :goto_0

    .line 239
    :pswitch_1
    iput v3, p0, Lcom/fiio/music/adapter/LyricAdapter;->mHighlightedLyricFontSize:F

    .line 240
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricFontSize:F

    goto :goto_0

    .line 243
    :pswitch_2
    iput v4, p0, Lcom/fiio/music/adapter/LyricAdapter;->mHighlightedLyricFontSize:F

    .line 244
    iput v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricFontSize:F

    goto :goto_0

    .line 247
    :pswitch_3
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mHighlightedLyricFontSize:F

    .line 248
    iput v3, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricFontSize:F

    goto :goto_0

    .line 251
    :pswitch_4
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mHighlightedLyricFontSize:F

    .line 252
    iput v4, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricFontSize:F

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public decreaseLyricFontSize()V
    .locals 3

    .prologue
    .line 261
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    .line 262
    invoke-static {}, Lcom/fiio/music/adapter/LyricAdapter;->$SWITCH_TABLE$com$fiio$music$adapter$LyricAdapter$LyricFontSize()[I

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mEnumedLyricFontSize:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v2}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 274
    :goto_0
    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/LyricAdapter;->setLyricFontSize(Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V

    .line 279
    return-void

    .line 264
    :pswitch_0
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0

    .line 267
    :pswitch_1
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->MEDIUM:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0

    .line 270
    :pswitch_2
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0

    .line 273
    :pswitch_3
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentSentenceIndex()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mIndexOfCurrentSentence:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    invoke-virtual {v0}, Lcom/fiio/music/i/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLyricFontSize()Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mEnumedLyricFontSize:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    return-object v0
.end method

.method public getSentence(I)Lcom/fiio/music/i/a;
    .locals 1

    .prologue
    .line 93
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f080062

    const/16 v4, 0x2d

    .line 142
    if-nez p2, :cond_3

    .line 144
    new-instance v1, Lcom/fiio/music/adapter/q;

    invoke-direct {v1}, Lcom/fiio/music/adapter/q;-><init>()V

    .line 145
    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    .line 146
    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    check-cast v0, Landroid/view/LayoutInflater;

    .line 147
    const v2, 0x7f040097

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 149
    const v0, 0x7f0b01f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    iput-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    :goto_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    invoke-virtual {v0}, Lcom/fiio/music/i/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-boolean v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->isLockScreen:Z

    if-eqz v2, :cond_1

    .line 159
    iget v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mIndexOfCurrentSentence:I

    if-ge p1, v2, :cond_4

    .line 160
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_0
    if-eqz v0, :cond_2

    .line 172
    :cond_1
    iget-object v2, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_2
    :goto_1
    iget v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mIndexOfCurrentSentence:I

    if-ne v0, p1, :cond_a

    .line 181
    iget-boolean v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->isLockScreen:Z

    if-eqz v0, :cond_5

    .line 182
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    :goto_2
    return-object p2

    .line 152
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/q;

    move-object v1, v0

    goto :goto_0

    .line 169
    :cond_4
    iget-object v2, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 186
    :cond_5
    iget v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 187
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 188
    const v3, 0x7f080053

    .line 187
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    :cond_6
    :goto_3
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mHighlightedLyricFontSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    .line 189
    :cond_7
    iget v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 190
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 191
    const v3, 0x7f08005f

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 192
    :cond_8
    iget v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    .line 193
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 195
    :cond_9
    iget v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 196
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 206
    :cond_a
    iget-boolean v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->isLockScreen:Z

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 208
    const v3, 0x7f08001d

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    :goto_4
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricFontSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    .line 210
    :cond_b
    iget-object v0, v1, Lcom/fiio/music/adapter/q;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 211
    const v3, 0x7f08002d

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method

.method public increaseLyricFontSize()V
    .locals 3

    .prologue
    .line 282
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    .line 283
    invoke-static {}, Lcom/fiio/music/adapter/LyricAdapter;->$SWITCH_TABLE$com$fiio$music$adapter$LyricAdapter$LyricFontSize()[I

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mEnumedLyricFontSize:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v2}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_0
    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/LyricAdapter;->setLyricFontSize(Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V

    .line 299
    return-void

    .line 285
    :pswitch_0
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0

    .line 288
    :pswitch_1
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->MEDIUM:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0

    .line 291
    :pswitch_2
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0

    .line 294
    :pswitch_3
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 106
    iget-object v1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->paddingCount:I

    if-le v1, v2, :cond_0

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentSentenceIndex(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/fiio/music/adapter/LyricAdapter;->mIndexOfCurrentSentence:I

    .line 222
    return-void
.end method

.method public setLyric(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b4c\u8bcd\u53e5\u5b50\u6570\u76ee="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/adapter/LyricAdapter;->mLyricSentences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/adapter/LyricAdapter;->mIndexOfCurrentSentence:I

    .line 82
    return-void
.end method

.method public setPaddingCount(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/fiio/music/adapter/LyricAdapter;->paddingCount:I

    .line 101
    return-void
.end method
