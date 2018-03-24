.class final Lcom/fiio/music/service/c;
.super Ljava/lang/Object;
.source "DownLoadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/DownLoadService;

.field private final synthetic b:Lcom/fiio/music/entity/ThreadInfo;

.field private final synthetic c:Lcom/fiio/music/entity/DownLoadInfo;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/fiio/music/service/DownLoadService;Lcom/fiio/music/entity/ThreadInfo;Lcom/fiio/music/entity/DownLoadInfo;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iput-object p2, p0, Lcom/fiio/music/service/c;->b:Lcom/fiio/music/entity/ThreadInfo;

    iput-object p3, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    iput p4, p0, Lcom/fiio/music/service/c;->d:I

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x7

    const/4 v12, 0x5

    const/4 v5, 0x0

    .line 173
    .line 176
    iget-object v0, p0, Lcom/fiio/music/service/c;->b:Lcom/fiio/music/entity/ThreadInfo;

    invoke-virtual {v0}, Lcom/fiio/music/entity/ThreadInfo;->getCompleteSize()I

    move-result v7

    .line 177
    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v0}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    .line 178
    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    .line 179
    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/DownLoadInfo;->setThreadCount(I)V

    .line 186
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v3}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const/16 v3, 0x1388

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 189
    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 190
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 192
    const-string v3, "Accept"

    const-string v4, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v3, "Accept-Language"

    const-string v4, "zh-CN"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "Referer"

    iget-object v4, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v4}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v3, "Charset"

    const-string v4, "UTF-8"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "User-Agent"

    const-string v4, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "Range"

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object v8, p0, Lcom/fiio/music/service/c;->b:Lcom/fiio/music/entity/ThreadInfo;

    invoke-virtual {v8}, Lcom/fiio/music/entity/ThreadInfo;->getStartPosition()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/fiio/music/service/c;->b:Lcom/fiio/music/entity/ThreadInfo;

    invoke-virtual {v8}, Lcom/fiio/music/entity/ThreadInfo;->getEndPosition()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    .line 206
    invoke-virtual {v3}, Lcom/fiio/music/entity/DownLoadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    const-string v8, "rwd"

    .line 205
    invoke-direct {v4, v3, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :try_start_2
    iget-object v3, p0, Lcom/fiio/music/service/c;->b:Lcom/fiio/music/entity/ThreadInfo;

    invoke-virtual {v3}, Lcom/fiio/music/entity/ThreadInfo;->getStartPosition()I

    move-result v3

    .line 208
    add-int/2addr v3, v7

    int-to-long v8, v3

    .line 207
    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 209
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 210
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 211
    const/16 v2, 0x2000

    :try_start_3
    new-array v8, v2, [B

    move v2, v5

    move v5, v7

    .line 215
    :goto_1
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v7, -0x1

    if-ne v9, v7, :cond_4

    .line 280
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 279
    invoke-virtual {v0, v2}, Lcom/fiio/music/entity/DownLoadInfo;->setThreadCount(I)V

    .line 282
    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    new-instance v2, Landroid/content/Intent;

    .line 283
    const-string v5, "com.fiio.music.download.brocast"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    const-string v5, "flag"

    const/4 v6, 0x0

    .line 283
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 282
    invoke-virtual {v0, v2}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 294
    if-eqz v3, :cond_3

    .line 295
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 298
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v1, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13, v12}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 216
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v0}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v7, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    .line 217
    invoke-virtual {v7}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 216
    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    .line 218
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v7

    const/4 v10, 0x3

    if-eq v7, v10, :cond_2

    .line 219
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v7

    if-eq v7, v12, :cond_2

    .line 220
    const/4 v7, 0x0

    invoke-virtual {v4, v8, v7, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 224
    add-int v7, v5, v9

    .line 226
    if-nez v2, :cond_f

    .line 228
    const/4 v2, 0x0

    .line 227
    invoke-virtual {v0, v2}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    move v5, v6

    .line 231
    :goto_3
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadInfos()Ljava/util/List;

    move-result-object v2

    iget v10, p0, Lcom/fiio/music/service/c;->d:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fiio/music/entity/ThreadInfo;

    .line 232
    invoke-virtual {v2, v7}, Lcom/fiio/music/entity/ThreadInfo;->setCompleteSize(I)V

    .line 234
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v2

    add-int/2addr v2, v9

    .line 233
    invoke-virtual {v0, v2}, Lcom/fiio/music/entity/DownLoadInfo;->setCompleteSize(I)V

    .line 236
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v2

    .line 237
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v9

    .line 236
    if-ne v2, v9, :cond_7

    .line 239
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v2}, Lcom/fiio/music/service/DownLoadService;->b(Lcom/fiio/music/service/DownLoadService;)Lcom/fiio/music/b/m;

    move-result-object v2

    .line 241
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v5

    .line 240
    invoke-virtual {v2, v5}, Lcom/fiio/music/b/m;->b(I)I

    .line 243
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v2}, Lcom/fiio/music/service/DownLoadService;->c(Lcom/fiio/music/service/DownLoadService;)Lcom/fiio/music/b/e;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/fiio/music/b/e;->a(I)I

    .line 245
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v2}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v2}, Lcom/fiio/music/util/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v2}, Lcom/fiio/music/entity/DownLoadInfo;->setFilePath(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v2, v0}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Lcom/fiio/music/entity/DownLoadInfo;)Z

    .line 254
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v2}, Lcom/fiio/music/service/DownLoadService;->d(Lcom/fiio/music/service/DownLoadService;)Lcom/fiio/music/util/be;

    move-result-object v2

    .line 255
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-virtual {v2, v5, v6}, Lcom/fiio/music/util/be;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v2}, Lcom/fiio/music/service/DownLoadService;->e(Lcom/fiio/music/service/DownLoadService;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v5}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;I)V

    .line 260
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    new-instance v5, Landroid/content/Intent;

    .line 261
    const-string v6, "com.fiio.music.download.brocast"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    const-string v6, "flag"

    .line 263
    const/4 v7, 0x1

    .line 262
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 265
    const-string v6, "displayname"

    .line 266
    iget-object v7, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    .line 267
    invoke-virtual {v7}, Lcom/fiio/music/entity/DownLoadInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 266
    invoke-static {v7}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 260
    invoke-virtual {v2, v5}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v5, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v5}, Lcom/fiio/music/service/DownLoadService;->f(Lcom/fiio/music/service/DownLoadService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fiio/music/service/DownLoadService;->a(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    const-class v7, Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "flag"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fiio/music/service/DownLoadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_2

    .line 286
    :catch_1
    move-exception v0

    move-object v0, v3

    move-object v2, v4

    .line 287
    :goto_4
    :try_start_6
    iget-object v3, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v4, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v4}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v3, v4, v5, v6}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 294
    if-eqz v0, :cond_5

    .line 295
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_5
    if-eqz v2, :cond_6

    .line 297
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 298
    :cond_6
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 301
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v1, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13, v12}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 274
    :cond_7
    :try_start_8
    iget-object v2, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    new-instance v9, Landroid/content/Intent;

    .line 275
    const-string v10, "com.fiio.music.download.brocast"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v10, "flag"

    .line 277
    const/4 v11, 0x0

    .line 276
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 274
    invoke-virtual {v2, v9}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v2, v5

    move v5, v7

    goto/16 :goto_1

    .line 288
    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v1, v2

    .line 289
    :goto_5
    :try_start_9
    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v2, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v2}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x2

    invoke-static {v0, v2, v5, v6}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 294
    if-eqz v3, :cond_8

    .line 295
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_8
    if-eqz v4, :cond_9

    .line 297
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 298
    :cond_9
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 301
    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v1, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13, v12}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 290
    :catch_5
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v1, v2

    .line 291
    :goto_6
    :try_start_b
    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v2, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v2}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    const/4 v6, 0x5

    invoke-static {v0, v2, v5, v6}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 294
    if-eqz v3, :cond_a

    .line 295
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_a
    if-eqz v4, :cond_b

    .line 297
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 298
    :cond_b
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    .line 301
    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v1, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13, v12}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 292
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v1, v2

    .line 294
    :goto_7
    if-eqz v3, :cond_c

    .line 295
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_c
    if-eqz v4, :cond_d

    .line 297
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 298
    :cond_d
    if-eqz v1, :cond_e

    .line 299
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 303
    :cond_e
    :goto_8
    throw v0

    .line 301
    :catch_7
    move-exception v1

    iget-object v1, p0, Lcom/fiio/music/service/c;->a:Lcom/fiio/music/service/DownLoadService;

    iget-object v2, p0, Lcom/fiio/music/service/c;->c:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v2}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v13, v12}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V

    goto :goto_8

    .line 292
    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v3

    move-object v4, v2

    move-object v14, v0

    move-object v0, v3

    move-object v3, v14

    goto :goto_7

    .line 290
    :catch_8
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_6

    :catch_9
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    .line 288
    :catch_b
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_5

    :catch_c
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_5

    .line 286
    :catch_e
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_4

    :catch_f
    move-exception v0

    move-object v0, v2

    goto/16 :goto_4

    :catch_10
    move-exception v0

    move-object v0, v2

    move-object v2, v4

    goto/16 :goto_4

    :cond_f
    move v5, v2

    goto/16 :goto_3
.end method
