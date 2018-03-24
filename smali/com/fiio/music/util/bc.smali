.class public final Lcom/fiio/music/util/bc;
.super Ljava/lang/Object;
.source "M3UManager.java"


# static fields
.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/bb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "UTF-8"

    aput-object v1, v0, v2

    const-string v1, "GBK"

    aput-object v1, v0, v3

    const-string v1, "UTF-16BE"

    aput-object v1, v0, v4

    const-string v1, "ANSI"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/bc;->f:Ljava/util/List;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EUC-KR"

    aput-object v1, v0, v2

    const-string v1, "EUC-CN"

    aput-object v1, v0, v3

    const-string v1, "EUC-JP"

    aput-object v1, v0, v4

    const-string v1, "EUC-ZH"

    aput-object v1, v0, v5

    const-string v1, "Big5"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "GB18030"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/bc;->g:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/bc;->a:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/fiio/music/util/bc;->c:Ljava/io/File;

    .line 40
    iput-object p2, p0, Lcom/fiio/music/util/bc;->e:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/bc;->d:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/bc;->b:Ljava/util/List;

    .line 43
    invoke-direct {p0}, Lcom/fiio/music/util/bc;->d()V

    .line 44
    return-void
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/util/bc;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/util/bc;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    iget-object v0, p0, Lcom/fiio/music/util/bc;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/fiio/music/util/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v3, Lcom/fiio/music/util/bc;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    sget-object v3, Lcom/fiio/music/util/bc;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    const-string v0, "GB2312"

    .line 61
    :cond_0
    :goto_0
    new-instance v3, Ljava/io/InputStreamReader;

    .line 62
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/fiio/music/util/bc;->c:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 61
    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 63
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 70
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 79
    :goto_2
    return-void

    .line 59
    :cond_2
    const-string v0, "Unicode"

    goto :goto_0

    .line 66
    :cond_3
    const-string v5, "EXTM3U"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "EXTINF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    new-instance v5, Lcom/fiio/music/util/bb;

    invoke-direct {v5}, Lcom/fiio/music/util/bb;-><init>()V

    const-string v6, "\\\\"

    iget-object v7, p0, Lcom/fiio/music/util/bc;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/fiio/music/util/bc;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-lez v7, :cond_4

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    iput-object v7, v5, Lcom/fiio/music/util/bb;->a:Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v1, :cond_7

    new-instance v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/fiio/music/util/bc;->c:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fiio/music/util/bc;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/fiio/music/util/bb;->b:Ljava/lang/String;

    :cond_4
    :goto_3
    if-eqz v6, :cond_9

    iget-object v0, p0, Lcom/fiio/music/util/bc;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-lez v7, :cond_8

    const/4 v7, 0x0

    aget-object v7, v0, v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mnt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v0, v1

    :goto_4
    if-eqz v0, :cond_5

    iput-object v6, v5, Lcom/fiio/music/util/bb;->b:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/fiio/music/util/bc;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    iget-object v6, v5, Lcom/fiio/music/util/bb;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/fiio/music/util/bb;->b:Ljava/lang/String;

    new-instance v7, Lcom/fiio/music/entity/Artist;

    invoke-direct {v7}, Lcom/fiio/music/entity/Artist;-><init>()V

    iget-object v8, p0, Lcom/fiio/music/util/bc;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00d4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fiio/music/entity/Artist;->setName(Ljava/lang/String;)V

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/fiio/music/entity/Song;->setId_(I)V

    invoke-virtual {v0, v7}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    invoke-virtual {v0, v6}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/fiio/music/util/bc;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u53d6\u6587\u4ef6\u5185\u5bb9\u51fa\u9519"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 67
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/fiio/music/util/bc;->c:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fiio/music/util/bc;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/fiio/music/util/bb;->b:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    array-length v7, v0

    if-le v7, v1, :cond_9

    const/4 v7, 0x1

    aget-object v7, v0, v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, "mnt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto/16 :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_4

    .line 72
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u627e\u4e0d\u5230\u6307\u5b9a\u7684\u6587\u4ef6"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fiio/music/util/bc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bb;

    iget-object v0, v0, Lcom/fiio/music/util/bb;->b:Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    return-object v1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/util/bc;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fiio/music/util/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/fiio/music/util/bc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-object v3

    .line 126
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bb;

    .line 127
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lcom/fiio/music/util/bb;->a:Ljava/lang/String;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fiio/music/util/bc;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/bc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fiio/music/util/bc;->d:Ljava/util/List;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
