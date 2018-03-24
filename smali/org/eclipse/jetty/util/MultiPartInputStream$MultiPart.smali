.class public Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
.super Ljava/lang/Object;
.source "MultiPartInputStream.java"

# interfaces
.implements Lc/c/c/q;


# instance fields
.field protected _bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

.field protected _contentType:Ljava/lang/String;

.field protected _file:Ljava/io/File;

.field protected _filename:Ljava/lang/String;

.field protected _headers:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _name:Ljava/lang/String;

.field protected _out:Ljava/io/OutputStream;

.field protected _size:J

.field protected _temporary:Z

.field final synthetic this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_temporary:Z

    .line 88
    iput-object p2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_name:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_filename:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_temporary:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 306
    :cond_0
    return-void
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 120
    return-void
.end method

.method protected createFile()V
    .locals 6

    .prologue
    .line 151
    const-string v0, "MultiPart"

    const-string v1, ""

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v2, v2, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-boolean v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 154
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 157
    iget-wide v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->writeTo(Ljava/io/OutputStream;)V

    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 165
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_out:Ljava/io/OutputStream;

    .line 166
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 295
    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toByteArray()[B

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentDispositionFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_headers:Lorg/eclipse/jetty/util/MultiMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_headers:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_headers:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 222
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    return-wide v0
.end method

.method protected open()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->createFile()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_out:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method protected setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_contentType:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected setHeaders(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_headers:Lorg/eclipse/jetty/util/MultiMap;

    .line 173
    return-void
.end method

.method protected write(I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v0}, Lc/c/m;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    add-long/2addr v0, v4

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v2, v2, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v2}, Lc/c/m;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multipart Mime part "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds max filesize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v0}, Lc/c/m;->d()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    add-long/2addr v0, v4

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v2, v2, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v2}, Lc/c/m;->d()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->createFile()V

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 132
    iget-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    .line 133
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    if-nez v0, :cond_2

    .line 256
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_temporary:Z

    .line 259
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v1, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    .line 264
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->writeTo(Ljava/io/OutputStream;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 272
    iput-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 270
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 272
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    throw v0

    .line 274
    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_temporary:Z

    .line 280
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v1, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    goto :goto_0

    .line 270
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected write([BII)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v0}, Lc/c/m;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v2, v2, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v2}, Lc/c/m;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multipart Mime part "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds max filesize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v0}, Lc/c/m;->d()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    iget-object v2, v2, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v2}, Lc/c/m;->d()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_file:Ljava/io/File;

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->createFile()V

    .line 144
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 145
    iget-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->_size:J

    .line 146
    return-void
.end method
