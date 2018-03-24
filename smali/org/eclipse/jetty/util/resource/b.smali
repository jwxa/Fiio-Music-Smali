.class Lorg/eclipse/jetty/util/resource/b;
.super Lorg/eclipse/jetty/util/resource/JarResource;
.source "JarFileResource.java"


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private b:Ljava/util/jar/JarFile;

.field private c:Ljava/io/File;

.field private d:[Ljava/lang/String;

.field private e:Ljava/util/jar/JarEntry;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/util/resource/b;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/b;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    .line 58
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 8
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
    const/16 v7, 0x2f

    .line 284
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->checkConnection()Z

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    .line 288
    if-nez v1, :cond_3

    .line 292
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/b;->g:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    .line 293
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->getUseCaches()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 294
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 304
    :goto_0
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    const-string v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 310
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x5c

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 313
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 317
    if-ltz v4, :cond_2

    .line 321
    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 322
    :cond_1
    if-nez v4, :cond_4

    .line 326
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    sget-object v3, Lorg/eclipse/jetty/util/resource/b;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 328
    :cond_4
    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 337
    :cond_5
    return-object v2
.end method


# virtual methods
.method protected checkConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v0, :cond_0

    .line 84
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    .line 85
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->c:Ljava/io/File;

    .line 86
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    .line 87
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->d:[Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 82
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/b;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v1, :cond_1

    .line 84
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    .line 85
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->c:Ljava/io/File;

    .line 86
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    .line 87
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->d:[Ljava/lang/String;

    :cond_1
    throw v0

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 369
    return-object p1
.end method

.method public exists()Z
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 123
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/b;->i:Z

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return v2

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    const-string v3, "!/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 130
    :try_start_0
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/b;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    sget-object v2, Lorg/eclipse/jetty/util/resource/b;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move v2, v1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->checkConnection()Z

    move-result v0

    .line 137
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/b;->g:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 140
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/resource/b;->f:Z

    goto :goto_0

    .line 146
    :cond_2
    const/4 v3, 0x0

    .line 147
    if-eqz v0, :cond_7

    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    .line 166
    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/eclipse/jetty/util/resource/b;->f:Z

    if-nez v3, :cond_5

    .line 169
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 170
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 173
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 176
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 178
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/resource/b;->f:Z

    .line 198
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/b;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    .line 203
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 213
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/b;->f:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_a

    :cond_6
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/resource/b;->i:Z

    .line 214
    iget-boolean v2, p0, Lorg/eclipse/jetty/util/resource/b;->i:Z

    goto/16 :goto_0

    .line 155
    :cond_7
    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/b;->g:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    .line 156
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->getUseCaches()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 157
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 159
    :catch_1
    move-exception v0

    .line 161
    sget-object v4, Lorg/eclipse/jetty/util/resource/b;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto/16 :goto_1

    .line 183
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/resource/b;->f:Z

    goto :goto_2

    .line 191
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    .line 193
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/resource/b;->f:Z

    goto/16 :goto_2

    .line 205
    :catch_2
    move-exception v0

    .line 207
    sget-object v3, Lorg/eclipse/jetty/util/resource/b;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    move v0, v1

    .line 213
    goto :goto_4
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    .line 403
    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 404
    if-lez v1, :cond_0

    .line 405
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_0
    const-string v1, "jar:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/b;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->c:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v0

    .line 243
    :goto_0
    return-wide v0

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0

    .line 243
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 351
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-wide v0

    .line 354
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_0

    .line 355
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public declared-synchronized list()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->d:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 252
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/b;->a()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 271
    :goto_0
    if-eqz v0, :cond_0

    .line 273
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/b;->d:[Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/b;->d:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->d:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 265
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/resource/b;->a:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying list:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    sget-object v1, Lorg/eclipse/jetty/util/resource/b;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 267
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/b;->release()V

    .line 268
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/b;->a()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized newConnection()V
    .locals 4

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->newConnection()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->c:Ljava/io/File;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->d:[Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 107
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/b;->g:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/b;->_urlString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->h:Ljava/lang/String;

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->_jarConnection:Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->c:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->d:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->e:Ljava/util/jar/JarEntry;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->c:Ljava/io/File;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/b;->b:Ljava/util/jar/JarFile;

    .line 69
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
