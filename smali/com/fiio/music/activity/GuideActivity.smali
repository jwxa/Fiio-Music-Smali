.class public Lcom/fiio/music/activity/GuideActivity;
.super Landroid/app/Activity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final ch_TW:[I

.field private static final ch_zn:[I

.field private static final de_rDE:[I

.field private static final en_all:[I

.field private static final es_rES:[I

.field private static final fr_rFR:[I

.field private static final ja_rJP:[I

.field private static final ko_rKR:[I

.field private static final ru_rRU:[I

.field private static final th_rTH:[I


# instance fields
.field private currentIndex:I

.field private dots:[Landroid/widget/ImageView;

.field private guideMode:I

.field private language:Ljava/lang/String;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vp:Landroid/support/v4/view/ViewPager;

.field private vpAdapter:Lcom/fiio/music/adapter/ViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->ch_zn:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->en_all:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->ch_TW:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->de_rDE:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->es_rES:[I

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->fr_rFR:[I

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->ja_rJP:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->ru_rRU:[I

    .line 94
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->th_rTH:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/fiio/music/activity/GuideActivity;->ko_rKR:[I

    .line 107
    return-void

    .line 38
    :array_0
    .array-data 4
        0x7f04017a
        0x7f04017d
        0x7f04017c
        0x7f040178
        0x7f04017b
        0x7f040179
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x7f040048
        0x7f04004b
        0x7f04004a
        0x7f040046
        0x7f040049
        0x7f040047
    .end array-data

    .line 52
    :array_2
    .array-data 4
        0x7f04018c
        0x7f04018f
        0x7f04018e
        0x7f04018b
        0x7f04018a
        0x7f04018d
    .end array-data

    .line 59
    :array_3
    .array-data 4
        0x7f04015c
        0x7f04015f
        0x7f04015e
        0x7f04015b
        0x7f04015a
        0x7f04015d
    .end array-data

    .line 66
    :array_4
    .array-data 4
        0x7f040162
        0x7f040165
        0x7f040164
        0x7f040161
        0x7f040160
        0x7f040163
    .end array-data

    .line 73
    :array_5
    .array-data 4
        0x7f040168
        0x7f04016b
        0x7f04016a
        0x7f040167
        0x7f040166
        0x7f040169
    .end array-data

    .line 80
    :array_6
    .array-data 4
        0x7f04016e
        0x7f040171
        0x7f040170
        0x7f04016d
        0x7f04016c
        0x7f04016f
    .end array-data

    .line 87
    :array_7
    .array-data 4
        0x7f040180
        0x7f040183
        0x7f040182
        0x7f04017f
        0x7f04017e
        0x7f040181
    .end array-data

    .line 94
    :array_8
    .array-data 4
        0x7f040186
        0x7f040189
        0x7f040188
        0x7f040185
        0x7f040184
        0x7f040187
    .end array-data

    .line 101
    :array_9
    .array-data 4
        0x7f040174
        0x7f040177
        0x7f040176
        0x7f040173
        0x7f040172
        0x7f040175
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getLanguageEnv()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v2, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const-string v2, "cn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const-string v0, "zh-CN"

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    const-string v2, "tw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v0, "zh-TW"

    goto :goto_0

    .line 239
    :cond_2
    const-string v2, "pt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const-string v2, "br"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    const-string v0, "pt-BR"

    goto :goto_0

    .line 242
    :cond_3
    const-string v2, "pt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const-string v0, "pt-PT"

    goto :goto_0
.end method

.method private initDots()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 191
    const v0, 0x7f0b018a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 193
    iget-object v1, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fiio/music/activity/GuideActivity;->dots:[Landroid/widget/ImageView;

    move v2, v3

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_0

    .line 201
    iput v3, p0, Lcom/fiio/music/activity/GuideActivity;->currentIndex:I

    .line 202
    iget-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->dots:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/fiio/music/activity/GuideActivity;->currentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 203
    return-void

    .line 197
    :cond_0
    iget-object v4, p0, Lcom/fiio/music/activity/GuideActivity;->dots:[Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v4, v2

    .line 198
    iget-object v1, p0, Lcom/fiio/music/activity/GuideActivity;->dots:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 196
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    .line 131
    const-string v2, "xyz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "language="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "zh-CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    :goto_0
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->ch_zn:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 182
    :cond_0
    :goto_1
    new-instance v0, Lcom/fiio/music/adapter/ViewPagerAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/activity/GuideActivity;->guideMode:I

    invoke-direct {v0, v1, p0, v2}, Lcom/fiio/music/adapter/ViewPagerAdapter;-><init>(Ljava/util/List;Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->vpAdapter:Lcom/fiio/music/adapter/ViewPagerAdapter;

    .line 184
    const v0, 0x7f0b0189

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->vp:Landroid/support/v4/view/ViewPager;

    .line 185
    iget-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->vp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/fiio/music/activity/GuideActivity;->vpAdapter:Lcom/fiio/music/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 187
    iget-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->vp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 188
    return-void

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->ch_zn:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "zh-TW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    :goto_2
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->ch_TW:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->ch_TW:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    :goto_3
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->ja_rJP:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->ja_rJP:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 144
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    :goto_4
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->de_rDE:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->de_rDE:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 148
    :cond_5
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 149
    :goto_5
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->ko_rKR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->ko_rKR:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 152
    :cond_6
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 153
    :goto_6
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->es_rES:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->es_rES:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 156
    :cond_7
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 157
    :goto_7
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->fr_rFR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->fr_rFR:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 160
    :cond_8
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 161
    :goto_8
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->ru_rRU:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->ru_rRU:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 164
    :cond_9
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    const-string v3, "th"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 165
    :goto_9
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->th_rTH:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->th_rTH:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 170
    :cond_a
    iget-object v2, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    sget-object v3, Lcom/fiio/music/activity/GuideActivity;->en_all:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    :cond_b
    sget-object v2, Lcom/fiio/music/activity/GuideActivity;->en_all:[I

    array-length v2, v2

    if-lt v0, v2, :cond_a

    goto/16 :goto_1
.end method

.method private setCurrentDot(I)V
    .locals 2

    .prologue
    .line 206
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 207
    iget v0, p0, Lcom/fiio/music/activity/GuideActivity;->currentIndex:I

    if-ne v0, p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->dots:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->dots:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/fiio/music/activity/GuideActivity;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 214
    iput p1, p0, Lcom/fiio/music/activity/GuideActivity;->currentIndex:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/GuideActivity;->setContentView(I)V

    .line 118
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 119
    invoke-virtual {p0}, Lcom/fiio/music/activity/GuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    const-string v1, "guideMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/GuideActivity;->guideMode:I

    .line 121
    invoke-direct {p0}, Lcom/fiio/music/activity/GuideActivity;->getLanguageEnv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/GuideActivity;->language:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/fiio/music/activity/GuideActivity;->initViews()V

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 251
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 252
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 253
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 259
    :goto_0
    return v0

    .line 255
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 256
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method
