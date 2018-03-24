.class public Lcom/fiio/music/util/n;
.super Ljava/lang/Object;
.source "EmbeddedCueSheet.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/fiio/music/util/n;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/io/File;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/fiio/music/util/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/n;->a:Ljava/lang/String;

    .line 37
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/n;->b:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/util/n;->c:Lcom/fiio/music/util/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    .line 33
    return-void
.end method

.method public static a()Lcom/fiio/music/util/n;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/fiio/music/util/n;->c:Lcom/fiio/music/util/n;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/fiio/music/util/n;

    invoke-direct {v0}, Lcom/fiio/music/util/n;-><init>()V

    sput-object v0, Lcom/fiio/music/util/n;->c:Lcom/fiio/music/util/n;

    .line 50
    :cond_0
    sget-object v0, Lcom/fiio/music/util/n;->c:Lcom/fiio/music/util/n;

    return-object v0
.end method

.method private a([Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    array-length v3, p1

    move v0, v2

    :goto_0
    if-lt v0, v3, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 247
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 248
    array-length v3, v0

    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_2

    .line 251
    return-void

    .line 240
    :cond_1
    aget-object v4, p1, v0

    .line 241
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_2
    aget-object v4, v0, v1

    .line 249
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRACK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "TRACK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    const-string v6, "AUDIO"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fiio/music/util/n;->f:Ljava/lang/String;

    :cond_3
    const-string v5, "TITLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fiio/music/util/n;->g:Ljava/lang/String;

    :cond_4
    const-string v5, "PERFORMER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fiio/music/util/n;->h:Ljava/lang/String;

    :cond_5
    const-string v5, "REM GENRE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "GENRE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fiio/music/util/n;->i:Ljava/lang/String;

    :cond_6
    const-string v5, "REM DATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "DATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fiio/music/util/n;->j:Ljava/lang/String;

    :cond_7
    const-string v5, "INDEX 00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fiio/music/util/n;->k:Ljava/lang/String;

    :cond_8
    const-string v5, "INDEX 01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/n;->l:Ljava/lang/String;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/util/n;->f:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/fiio/music/util/n;->g:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/fiio/music/util/n;->g:Ljava/lang/String;

    aput-object v5, v4, v9

    :goto_2
    iget-object v5, p0, Lcom/fiio/music/util/n;->h:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/fiio/music/util/n;->h:Ljava/lang/String;

    aput-object v5, v4, v10

    :goto_3
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/fiio/music/util/n;->k:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/fiio/music/util/n;->l:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/fiio/music/util/n;->i:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/fiio/music/util/n;->i:Ljava/lang/String;

    aput-object v5, v4, v11

    :goto_4
    iget-object v5, p0, Lcom/fiio/music/util/n;->j:Ljava/lang/String;

    if-eqz v5, :cond_d

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/fiio/music/util/n;->j:Ljava/lang/String;

    aput-object v6, v4, v5

    :goto_5
    iput-object v8, p0, Lcom/fiio/music/util/n;->f:Ljava/lang/String;

    iput-object v8, p0, Lcom/fiio/music/util/n;->g:Ljava/lang/String;

    iput-object v8, p0, Lcom/fiio/music/util/n;->h:Ljava/lang/String;

    iput-object v8, p0, Lcom/fiio/music/util/n;->k:Ljava/lang/String;

    iput-object v8, p0, Lcom/fiio/music/util/n;->l:Ljava/lang/String;

    iput-object v8, p0, Lcom/fiio/music/util/n;->i:Ljava/lang/String;

    iput-object v8, p0, Lcom/fiio/music/util/n;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/util/n;->m:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 249
    :cond_a
    iget-object v5, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto :goto_2

    :cond_b
    iget-object v5, p0, Lcom/fiio/music/util/n;->d:Landroid/content/Context;

    const v6, 0x7f0c00d4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/fiio/music/util/n;->d:Landroid/content/Context;

    const v6, 0x7f0c00d6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    goto :goto_4

    :cond_d
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/fiio/music/util/n;->d:Landroid/content/Context;

    const v7, 0x7f0c00c1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_5
.end method

.method public static a(Ljava/io/File;)Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 339
    if-eqz p0, :cond_6

    const-string v2, ".FLAC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 340
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 342
    :try_start_0
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/AudioFile;->returnAudioHeader()Lorg/FiioGetMusicInfo/audio/AudioHeader;

    move-result-object v4

    if-nez v4, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/AudioFile;->returnAudioHeader()Lorg/FiioGetMusicInfo/audio/AudioHeader;

    move-result-object v2

    invoke-interface {v2}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getAudioDataStartPosition()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_c

    move-result-wide v4

    .line 347
    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    .line 353
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v2, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 357
    const-wide/16 v8, 0x4

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    const/4 v3, 0x4

    .line 359
    :goto_1
    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 360
    long-to-double v6, v4

    div-double/2addr v6, v10

    const-wide/16 v8, 0x0

    sub-double/2addr v6, v8

    double-to-int v3, v6

    .line 361
    long-to-double v6, v4

    long-to-double v4, v4

    div-double/2addr v4, v10

    sub-double v4, v6, v4

    double-to-int v4, v4

    .line 362
    new-array v3, v3, [B

    .line 363
    new-array v4, v4, [B

    .line 364
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 368
    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 369
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 370
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 371
    const-string v4, "TRACK 01 AUDIO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "TRACK 01 AUDIO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1c
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v3

    if-eqz v3, :cond_5

    .line 381
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_3 .. :try_end_3} :catch_c

    move v0, v1

    .line 372
    goto :goto_0

    :cond_3
    move v3, v0

    .line 357
    goto :goto_1

    .line 386
    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_4 .. :try_end_4} :catch_c

    goto :goto_0

    .line 391
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;->printStackTrace()V

    goto :goto_0

    .line 374
    :catch_2
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 377
    sget-object v1, Lcom/fiio/music/util/n;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OutOfMemoryError : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 381
    if-eqz v2, :cond_0

    .line 383
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_6 .. :try_end_6} :catch_c

    goto/16 :goto_0

    .line 386
    :catch_3
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_0

    .line 394
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 378
    :catch_5
    move-exception v1

    move-object v2, v3

    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 381
    if-eqz v2, :cond_0

    .line 383
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_0

    .line 386
    :catch_6
    move-exception v1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_a .. :try_end_a} :catch_c

    goto/16 :goto_0

    .line 397
    :catch_7
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagException;->printStackTrace()V

    goto/16 :goto_0

    .line 380
    :catchall_0
    move-exception v1

    move-object v2, v3

    .line 381
    :goto_4
    if-eqz v2, :cond_4

    .line 383
    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_b .. :try_end_b} :catch_c

    .line 390
    :cond_4
    :try_start_c
    throw v1
    :try_end_c
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_c .. :try_end_c} :catch_c

    .line 400
    :catch_8
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException;->printStackTrace()V

    goto/16 :goto_0

    .line 386
    :catch_9
    move-exception v1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_0

    .line 403
    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 406
    sget-object v1, Lcom/fiio/music/util/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OutOfMemoryError : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    :cond_5
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_e .. :try_end_e} :catch_c

    goto/16 :goto_0

    .line 386
    :catch_b
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_f .. :try_end_f} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_f .. :try_end_f} :catch_c

    goto/16 :goto_0

    .line 407
    :catch_c
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;->printStackTrace()V

    goto/16 :goto_0

    .line 411
    :cond_6
    if-eqz p0, :cond_0

    const-string v2, ".APE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    :try_start_10
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v2

    .line 415
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getFieLength()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 418
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getFieLength()J
    :try_end_10
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_19

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    sub-long/2addr v4, v6

    .line 419
    cmp-long v2, v4, v8

    if-lez v2, :cond_0

    .line 423
    :try_start_11
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v2, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 425
    :try_start_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 427
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 430
    const/16 v3, 0x5dc

    new-array v3, v3, [B

    .line 431
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 434
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 435
    const-string v3, "INDEX 0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_1a
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-result v3

    if-eqz v3, :cond_8

    .line 444
    :try_start_13
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_19

    move v0, v1

    .line 436
    goto/16 :goto_0

    .line 449
    :catch_d
    move-exception v1

    :try_start_14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_19

    goto/16 :goto_0

    .line 455
    :catch_e
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;->printStackTrace()V

    goto/16 :goto_0

    .line 438
    :catch_f
    move-exception v1

    :goto_5
    :try_start_15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 444
    if-eqz v3, :cond_0

    .line 446
    :try_start_16
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_16 .. :try_end_16} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_16 .. :try_end_16} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_19

    goto/16 :goto_0

    .line 449
    :catch_10
    move-exception v1

    :try_start_17
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_17 .. :try_end_17} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_17 .. :try_end_17} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_17 .. :try_end_17} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_19

    goto/16 :goto_0

    .line 458
    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 440
    :catch_12
    move-exception v1

    move-object v2, v3

    :goto_6
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 444
    if-eqz v2, :cond_0

    .line 446
    :try_start_19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_19 .. :try_end_19} :catch_e
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_19 .. :try_end_19} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_19 .. :try_end_19} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_19 .. :try_end_19} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_0

    .line 449
    :catch_13
    move-exception v1

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1a .. :try_end_1a} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_1a .. :try_end_1a} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_19

    goto/16 :goto_0

    .line 461
    :catch_14
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagException;->printStackTrace()V

    goto/16 :goto_0

    .line 443
    :catchall_1
    move-exception v1

    move-object v2, v3

    .line 444
    :goto_7
    if-eqz v2, :cond_7

    .line 446
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_16
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1b .. :try_end_1b} :catch_e
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1b .. :try_end_1b} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_1b .. :try_end_1b} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_1b .. :try_end_1b} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1b} :catch_19

    .line 454
    :cond_7
    :try_start_1c
    throw v1
    :try_end_1c
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1c .. :try_end_1c} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_1c .. :try_end_1c} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_19

    .line 464
    :catch_15
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException;->printStackTrace()V

    goto/16 :goto_0

    .line 449
    :catch_16
    move-exception v1

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_11
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1d .. :try_end_1d} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_1d .. :try_end_1d} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_1d .. :try_end_1d} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_1d} :catch_19

    goto/16 :goto_0

    .line 467
    :catch_17
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;->printStackTrace()V

    goto/16 :goto_0

    .line 444
    :cond_8
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_18
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1e .. :try_end_1e} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_1e .. :try_end_1e} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_19

    goto/16 :goto_0

    .line 449
    :catch_18
    move-exception v1

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_11
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1f .. :try_end_1f} :catch_14
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_1f .. :try_end_1f} :catch_15
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_1f .. :try_end_1f} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_1f} :catch_19

    goto/16 :goto_0

    .line 470
    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    .line 443
    :catchall_2
    move-exception v1

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v2, v3

    goto :goto_7

    .line 440
    :catch_1a
    move-exception v1

    goto :goto_6

    .line 438
    :catch_1b
    move-exception v1

    move-object v3, v2

    goto :goto_5

    .line 380
    :catchall_4
    move-exception v1

    goto/16 :goto_4

    .line 378
    :catch_1c
    move-exception v1

    goto/16 :goto_3

    .line 374
    :catch_1d
    move-exception v1

    goto/16 :goto_2
.end method

.method private c()Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->returnAudioHeader()Lorg/FiioGetMusicInfo/audio/AudioHeader;

    move-result-object v2

    if-nez v2, :cond_1

    .line 85
    const-string v1, "sin"

    const-string v2, "read flac header ,return is null"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->returnAudioHeader()Lorg/FiioGetMusicInfo/audio/AudioHeader;

    move-result-object v1

    invoke-interface {v1}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getAudioDataStartPosition()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 89
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 90
    const-string v1, "sin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audioDataStartPosition : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_b

    .line 92
    :cond_2
    const/4 v3, 0x0

    .line 95
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    const-string v6, "r"

    invoke-direct {v2, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 99
    const-wide/16 v8, 0x4

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    const/4 v1, 0x4

    .line 101
    :goto_1
    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 102
    long-to-int v1, v4

    new-array v1, v1, [B

    .line 103
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 106
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 107
    const-string v1, "TRACK 01 AUDIO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    sget-object v3, Lcom/fiio/music/util/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-direct {p0, v1}, Lcom/fiio/music/util/n;->a([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_3 .. :try_end_3} :catch_b

    .line 153
    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 99
    goto :goto_1

    .line 111
    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    if-eqz v2, :cond_3

    .line 120
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_5 .. :try_end_5} :catch_b

    goto :goto_2

    .line 122
    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_0

    .line 127
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;->printStackTrace()V

    goto :goto_0

    .line 112
    :catch_3
    move-exception v1

    move-object v2, v3

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 115
    sget-object v1, Lcom/fiio/music/util/n;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OutOfMemoryError : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 118
    if-eqz v2, :cond_0

    .line 120
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_8 .. :try_end_8} :catch_b

    goto/16 :goto_0

    .line 122
    :catch_4
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_9 .. :try_end_9} :catch_b

    goto/16 :goto_0

    .line 131
    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    :catchall_0
    move-exception v1

    move-object v2, v3

    .line 118
    :goto_5
    if-eqz v2, :cond_5

    .line 120
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_a .. :try_end_a} :catch_b

    .line 126
    :cond_5
    :try_start_b
    throw v1
    :try_end_b
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_b .. :try_end_b} :catch_b

    .line 135
    :catch_6
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagException;->printStackTrace()V

    goto/16 :goto_0

    .line 122
    :catch_7
    move-exception v1

    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_0

    .line 139
    :catch_8
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException;->printStackTrace()V

    goto/16 :goto_0

    .line 122
    :catch_9
    move-exception v1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_d .. :try_end_d} :catch_b

    goto/16 :goto_0

    .line 143
    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 146
    sget-object v1, Lcom/fiio/music/util/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OutOfMemoryError : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    :catch_b
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 112
    :catch_c
    move-exception v1

    goto :goto_4

    .line 111
    :catch_d
    move-exception v1

    goto/16 :goto_3
.end method

.method private d()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getFieLength()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getFieLength()J
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    sub-long v4, v2, v4

    .line 167
    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 168
    const/4 v3, 0x0

    .line 171
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    const-string v6, "r"

    invoke-direct {v2, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 175
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 178
    const/16 v1, 0xbb8

    new-array v1, v1, [B

    .line 179
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 182
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 183
    const-string v1, "TRACK 01 AUDIO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 184
    sget-object v3, Lcom/fiio/music/util/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-direct {p0, v1}, Lcom/fiio/music/util/n;->a([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_3 .. :try_end_3} :catch_b

    .line 231
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    if-eqz v2, :cond_2

    .line 196
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_5 .. :try_end_5} :catch_b

    goto :goto_1

    .line 199
    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_0

    .line 205
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;->printStackTrace()V

    goto :goto_0

    .line 188
    :catch_3
    move-exception v1

    move-object v2, v3

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 191
    sget-object v1, Lcom/fiio/music/util/n;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OutOfMemoryError : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 194
    if-eqz v2, :cond_0

    .line 196
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_8 .. :try_end_8} :catch_b

    goto/16 :goto_0

    .line 199
    :catch_4
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_9 .. :try_end_9} :catch_b

    goto/16 :goto_0

    .line 209
    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 193
    :catchall_0
    move-exception v1

    move-object v2, v3

    .line 194
    :goto_4
    if-eqz v2, :cond_3

    .line 196
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_a .. :try_end_a} :catch_b

    .line 204
    :cond_3
    :try_start_b
    throw v1
    :try_end_b
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_b .. :try_end_b} :catch_b

    .line 213
    :catch_6
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagException;->printStackTrace()V

    goto/16 :goto_0

    .line 199
    :catch_7
    move-exception v1

    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_0

    .line 217
    :catch_8
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException;->printStackTrace()V

    goto/16 :goto_0

    .line 199
    :catch_9
    move-exception v1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    const-string v1, "sin"

    const-string v2, "isn\'t EmbeddedCue"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_a
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_d .. :try_end_d} :catch_b

    goto/16 :goto_0

    .line 221
    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 224
    sget-object v1, Lcom/fiio/music/util/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OutOfMemoryError : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    :catch_b
    move-exception v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;->printStackTrace()V

    goto/16 :goto_0

    .line 193
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 188
    :catch_c
    move-exception v1

    goto/16 :goto_3

    .line 187
    :catch_d
    move-exception v1

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Ljava/io/File;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, ".FLAC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    .line 62
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/n;->d:Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/n;->m:Ljava/util/List;

    .line 64
    invoke-direct {p0}, Lcom/fiio/music/util/n;->c()Z

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, ".APE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iput-object p1, p0, Lcom/fiio/music/util/n;->e:Ljava/io/File;

    .line 68
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/n;->d:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/n;->m:Ljava/util/List;

    .line 70
    invoke-direct {p0}, Lcom/fiio/music/util/n;->d()Z

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "sin"

    const-string v1, "not a flac audio"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fiio/music/util/n;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/n;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/fiio/music/util/n;->m:Ljava/util/List;

    .line 329
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
