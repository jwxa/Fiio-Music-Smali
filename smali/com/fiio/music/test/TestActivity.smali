.class public Lcom/fiio/music/test/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# static fields
.field private static h:I

.field private static final k:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/fiio/music/test/TestActivity;->h:I

    .line 84
    invoke-static {}, Lcom/fiio/music/util/bl;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/test/TestActivity;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/fiio/music/test/TestActivity;->c:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lcom/fiio/music/test/TestActivity;->d:Ljava/util/List;

    .line 78
    iput-boolean v1, p0, Lcom/fiio/music/test/TestActivity;->e:Z

    .line 79
    iput-object v0, p0, Lcom/fiio/music/test/TestActivity;->f:Ljava/util/List;

    .line 80
    iput-object v0, p0, Lcom/fiio/music/test/TestActivity;->g:Ljava/util/List;

    .line 82
    iput v1, p0, Lcom/fiio/music/test/TestActivity;->i:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/test/TestActivity;->j:Ljava/util/List;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/test/TestActivity;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/fiio/music/test/TestActivity;->i:I

    return v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 132
    :try_start_0
    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u91c7\u6837\u9891\u7387:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getSampleRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u6bd4\u7279\u7387:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getBitRateAsNumber()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u7801\u7387:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getBitsPerSample()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u65f6\u95f4:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getDuration()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u79d2:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getPreciseTrackLength()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u97f3\u9891Format\u7c7b\u578b:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u58f0\u9053:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getChannels()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u6587\u4ef6\u957f\u5ea6:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getFieLength()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 142
    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getWzId3(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    :cond_0
    const-string v0, "unknown"

    .line 146
    :cond_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "iso-8859-1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "gb2312"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 147
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/fiio/music/test/TestActivity;->a(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ARTIST="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "ARTIST="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 161
    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getWzId3(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    :cond_2
    const-string v0, "unknown"

    .line 165
    :cond_3
    new-instance v4, Ljava/lang/String;

    const-string v5, "iso-8859-1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "gbk"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 166
    const-string v5, "xyz"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "title1="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v5, "xyz"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "title2="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/fiio/music/test/TestActivity;->a(C)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "TITLE="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 177
    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getWzId3(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_4

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    :cond_4
    const-string v0, "unknown"

    .line 181
    :cond_5
    new-instance v5, Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "gb2312"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 182
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/fiio/music/test/TestActivity;->a(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "GENRE="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 191
    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getWzId3(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_6

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 193
    :cond_6
    const-string v0, "unknown"

    .line 195
    :cond_7
    new-instance v5, Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "gb2312"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 196
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/fiio/music/test/TestActivity;->a(C)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "ALBUM="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :goto_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 204
    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getWzId3(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_8

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 206
    :cond_8
    const-string v0, "unknown"

    .line 208
    :cond_9
    new-instance v5, Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "gb2312"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 209
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/fiio/music/test/TestActivity;->a(C)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "YEAR="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_4
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 217
    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getWzId3(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_a

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 219
    :cond_a
    const-string v0, "unknown"

    .line 221
    :cond_b
    new-instance v5, Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "gb2312"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 222
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/fiio/music/test/TestActivity;->a(C)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "TRACK="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 243
    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getWzId3(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_14

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "COVER_ART--length="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/fiio/music/activity/SplashActivity;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    .line 252
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 254
    :cond_c
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 256
    const-string v4, "ISO-8859-1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 257
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_d
    :goto_6
    return-object v2

    .line 155
    :cond_e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ARTIST="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ARTIST="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can not Read :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;->printStackTrace()V

    goto :goto_6

    .line 172
    :cond_f
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TITLE="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_1

    .line 266
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 186
    :cond_10
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GENRE="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_2

    .line 268
    :catch_2
    move-exception v0

    .line 269
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to read record:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagException;->printStackTrace()V

    goto/16 :goto_6

    .line 200
    :cond_11
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ALBUM="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 271
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException;->printStackTrace()V

    goto/16 :goto_6

    .line 213
    :cond_12
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "YEAR="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 273
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;->printStackTrace()V

    goto/16 :goto_6

    .line 226
    :cond_13
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TRACK="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 260
    :cond_14
    const-string v0, "COVER_ART--length=no"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_6
.end method

.method static synthetic a(Lcom/fiio/music/test/TestActivity;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/fiio/music/test/TestActivity;->i:I

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 395
    new-instance v0, Lorg/FiioGetMusicInfo/audio/AudioFileFilter;

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/AudioFileFilter;-><init>(Z)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 396
    array-length v0, v3

    if-lez v0, :cond_0

    .line 398
    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_2

    .line 432
    :cond_0
    new-instance v0, Lcom/fiio/music/test/c;

    invoke-direct {v0, p0}, Lcom/fiio/music/test/c;-><init>(Lcom/fiio/music/test/TestActivity;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 433
    array-length v0, v2

    if-lez v0, :cond_1

    .line 435
    array-length v3, v2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_4

    .line 440
    :cond_1
    return-void

    .line 398
    :cond_2
    aget-object v5, v3, v2

    .line 400
    sget v0, Lcom/fiio/music/test/TestActivity;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fiio/music/test/TestActivity;->h:I

    .line 406
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fiio/music/test/TestActivity;->k:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/fiio/music/test/TestActivity;->j:Ljava/util/List;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v0, "xyz"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "path="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 425
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to read record:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/fiio/music/test/TestActivity;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 435
    :cond_4
    aget-object v1, v2, v0

    .line 437
    invoke-direct {p0, v1}, Lcom/fiio/music/test/TestActivity;->a(Ljava/io/File;)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private static a(C)Z
    .locals 2

    .prologue
    .line 461
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 462
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 463
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 464
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 465
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 466
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 467
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 468
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 469
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 470
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 471
    :cond_0
    const/4 v0, 0x1

    .line 473
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fiio/music/test/TestActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fiio/music/test/TestActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/test/TestActivity;)V
    .locals 5

    .prologue
    .line 112
    const-string v1, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "file="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/test/TestActivity;->j:Ljava/util/List;

    iget v3, p0, Lcom/fiio/music/test/TestActivity;->i:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/test/TestActivity;->j:Ljava/util/List;

    iget v1, p0, Lcom/fiio/music/test/TestActivity;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/test/TestActivity;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u603b\u5171\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/test/TestActivity;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9996\u6b4c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fiio/music/test/TestActivity;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/fiio/music/test/TestActivity;->j:Ljava/util/List;

    iget v4, p0, Lcom/fiio/music/test/TestActivity;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/test/TestActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f040150

    invoke-virtual {p0, v0}, Lcom/fiio/music/test/TestActivity;->setContentView(I)V

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/external_sd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0, v0}, Lcom/fiio/music/test/TestActivity;->a(Ljava/io/File;)V

    .line 94
    :cond_0
    const v0, 0x7f0b037f

    invoke-virtual {p0, v0}, Lcom/fiio/music/test/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/test/TestActivity;->b:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0b0380

    invoke-virtual {p0, v0}, Lcom/fiio/music/test/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    new-instance v1, Lcom/fiio/music/test/b;

    invoke-direct {v1, p0}, Lcom/fiio/music/test/b;-><init>(Lcom/fiio/music/test/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0b0381

    invoke-virtual {p0, v0}, Lcom/fiio/music/test/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/test/TestActivity;->a:Landroid/widget/ImageView;

    .line 111
    return-void
.end method
