.class public Lorg/eclipse/jetty/util/resource/FileResource;
.super Lorg/eclipse/jetty/util/resource/URLResource;
.source "FileResource.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __checkAliases:Z


# instance fields
.field private transient _alias:Ljava/net/URL;

.field private transient _aliasChecked:Z

.field private _file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lorg/eclipse/jetty/util/resource/FileResource;->__checkAliases:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 57
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    .line 58
    iput-boolean v4, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    throw v0

    .line 93
    :catch_1
    move-exception v0

    .line 95
    sget-object v1, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 100
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    .line 109
    sget-object v1, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->checkConnection()Z

    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/File;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    goto :goto_0

    .line 105
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "//"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 124
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    .line 134
    iput-object p3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    .line 137
    :cond_0
    return-void
.end method

.method public static getCheckAliases()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/FileResource;->__checkAliases:Z

    return v0
.end method

.method public static setCheckAliases(Z)V
    .locals 0

    .prologue
    .line 66
    sput-boolean p0, Lorg/eclipse/jetty/util/resource/FileResource;->__checkAliases:Z

    .line 67
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 144
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    const-string v0, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-object p0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    invoke-super {p0, v2}, Lorg/eclipse/jetty/util/resource/URLResource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/resource/FileResource;

    .line 154
    iget-object v1, v0, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    move-object v3, v1

    move-object v1, v0

    .line 170
    :goto_1
    invoke-static {v2}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/URLResource;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 172
    iget-object v5, v1, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 174
    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v0, :cond_1

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/URLResource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    :cond_1
    instance-of v0, v1, Lorg/eclipse/jetty/util/resource/a;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 178
    check-cast v0, Lorg/eclipse/jetty/util/resource/FileResource;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    move-object v0, v1

    .line 179
    check-cast v0, Lorg/eclipse/jetty/util/resource/FileResource;

    iput-boolean v6, v0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    :cond_2
    move-object p0, v1

    .line 182
    goto :goto_0

    .line 158
    :cond_3
    if-nez v2, :cond_4

    .line 159
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0

    .line 163
    :cond_4
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/resource/URLResource;

    move-object v3, v1

    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public delete()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 353
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    if-ne p0, p1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lorg/eclipse/jetty/util/resource/FileResource;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :cond_3
    check-cast p1, Lorg/eclipse/jetty/util/resource/FileResource;

    .line 371
    iget-object v2, p1, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    iget-object v3, p1, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getAlias()Ljava/net/URL;
    .locals 5

    .prologue
    .line 190
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/FileResource;->__checkAliases:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    if-nez v0, :cond_2

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    .line 200
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    .line 202
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    if-eqz v2, :cond_2

    sget-object v2, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    sget-object v2, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ALIAS abs="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ALIAS can="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    sget-object v1, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->getURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 333
    if-nez v0, :cond_1

    .line 334
    const/4 v0, 0x0

    .line 341
    :cond_0
    return-object v0

    .line 335
    :cond_1
    array-length v1, v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 337
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v0, v2

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 2

    .prologue
    .line 319
    instance-of v0, p1, Lorg/eclipse/jetty/util/resource/FileResource;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    check-cast p1, Lorg/eclipse/jetty/util/resource/FileResource;

    iget-object v1, p1, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
