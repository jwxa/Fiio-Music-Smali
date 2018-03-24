.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;
.super Ljava/lang/Object;
.source "ID3v1Iterator.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final ALBUM:I = 0x3

.field private static final ARTIST:I = 0x2

.field private static final COMMENT:I = 0x4

.field private static final GENRE:I = 0x6

.field private static final TITLE:I = 0x1

.field private static final TRACK:I = 0x7

.field private static final YEAR:I = 0x5


# instance fields
.field private id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

.field private lastIndex:I


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->lastIndex:I

    .line 84
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 85
    return-void
.end method

.method private hasNext(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 171
    :goto_0
    return v0

    .line 146
    :pswitch_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 158
    :pswitch_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    .line 161
    :pswitch_5
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-byte v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    if-gez v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 165
    :pswitch_6
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    iget-byte v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    if-gez v0, :cond_7

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private next(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 182
    :cond_0
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->lastIndex:I

    packed-switch v0, :pswitch_data_0

    .line 206
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration has no more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 203
    :goto_0
    return-object v0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    goto :goto_0

    .line 197
    :pswitch_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    goto :goto_0

    .line 200
    :pswitch_5
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-byte v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iget-byte v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 203
    :pswitch_6
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    iget-byte v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    iget-byte v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->lastIndex:I

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->lastIndex:I

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 108
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->lastIndex:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    const-string v1, ""

    iput-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 114
    :pswitch_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    const-string v1, ""

    iput-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 117
    :pswitch_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    const-string v1, ""

    iput-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 120
    :pswitch_3
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    const-string v1, ""

    iput-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 123
    :pswitch_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    const-string v1, ""

    iput-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 126
    :pswitch_5
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iput-byte v2, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 130
    :pswitch_6
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    iput-byte v2, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
