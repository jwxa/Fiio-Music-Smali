.class final Lorg/eclipse/jetty/util/resource/a;
.super Lorg/eclipse/jetty/util/resource/URLResource;
.source "BadResource.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 40
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/a;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/eclipse/jetty/util/resource/a;->a:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final copyTo(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/SecurityException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final delete()Z
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/SecurityException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final exists()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isDirectory()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public final lastModified()J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final length()J
    .locals 2

    .prologue
    .line 75
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final list()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public final renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/SecurityException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; BadResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
