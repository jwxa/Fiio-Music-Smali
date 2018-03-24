.class public Lcom/fiio/music/network/c/b;
.super Landroid/os/AsyncTask;
.source "DownloadApkService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static a:Ljava/util/concurrent/ExecutorService;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/fiio/music/network/bean/DownloadInfo;

.field private d:Lcom/fiio/music/network/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/fiio/music/network/c/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 30
    const-class v0, Lcom/fiio/music/network/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/c/b;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/fiio/music/network/c/a;Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    .line 51
    iput-object p1, p0, Lcom/fiio/music/network/c/b;->d:Lcom/fiio/music/network/c/a;

    .line 52
    return-void
.end method

.method private varargs b()Ljava/lang/Void;
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/fiio/music/network/c/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v4

    .line 60
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    sget-object v2, Lcom/fiio/music/network/c/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "createFile totalSize = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v2, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setTotalSize(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v2}, Lcom/fiio/music/network/bean/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "SplashActivity.apk"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    iget-object v0, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fiio/music/network/bean/DownloadInfo;->setFinishedSize(I)V

    :cond_3
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-lez v1, :cond_4

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    const-string v1, "DOWNLOADING"

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    .line 68
    const-wide/16 v2, 0x0

    .line 74
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    const v1, 0xea60

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 77
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 78
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 79
    const-string v1, "Connection"

    const-string v5, "keep-alive"

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "Range"

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v6}, Lcom/fiio/music/network/bean/DownloadInfo;->getFinishedSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 82
    iget-object v6, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v6}, Lcom/fiio/music/network/bean/DownloadInfo;->getTotalSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v5}, Lcom/fiio/music/network/bean/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v5

    .line 85
    iget-object v6, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v6}, Lcom/fiio/music/network/bean/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 90
    :cond_5
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v5, "rwd"

    invoke-direct {v6, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/DownloadInfo;->getFinishedSize()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 94
    iget-object v1, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/DownloadInfo;->getFinishedSize()I

    move-result v1

    int-to-long v2, v1

    .line 95
    iget-object v1, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/DownloadInfo;->getTotalSize()I

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v5

    .line 108
    const/16 v1, 0x1000

    :try_start_4
    new-array v1, v1, [B

    .line 111
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 112
    :cond_6
    :goto_2
    :try_start_5
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    .line 111
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    iget-object v1, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    long-to-int v7, v2

    invoke-virtual {v1, v7}, Lcom/fiio/music/network/bean/DownloadInfo;->setFinishedSize(I)V

    .line 130
    iget-object v1, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    const-string v7, "FINISH"

    invoke-virtual {v1, v7}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/fiio/music/network/c/b;->d:Lcom/fiio/music/network/c/a;

    iget-object v7, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1, v7}, Lcom/fiio/music/network/c/a;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V

    .line 134
    sget-object v1, Lcom/fiio/music/network/c/b;->b:Ljava/lang/String;

    const-string v7, "APK \u4e0b\u8f7d\u5b8c\u6210\uff01"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.fiio.music.downloadapk.success"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    sget-object v1, Lcom/fiio/music/network/c/b;->b:Ljava/lang/String;

    const-string v7, "\u53d1\u9001\u5e7f\u64ad\u5b8c\u6210\uff01"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 148
    if-eqz v5, :cond_7

    .line 149
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 60
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 101
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    const-string v5, "FAILED"

    invoke-virtual {v1, v5}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/fiio/music/network/c/b;->d:Lcom/fiio/music/network/c/a;

    iget-object v5, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1, v5}, Lcom/fiio/music/network/c/a;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 148
    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 158
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    :cond_9
    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 115
    const/4 v8, 0x0

    :try_start_a
    invoke-virtual {v6, v1, v8, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 118
    iget-object v7, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v7}, Lcom/fiio/music/network/bean/DownloadInfo;->getFinishedSize()I

    move-result v7

    int-to-long v8, v7

    sub-long v8, v2, v8

    const-wide/32 v10, 0xfa000

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 120
    iget-object v7, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    long-to-int v8, v2

    invoke-virtual {v7, v8}, Lcom/fiio/music/network/bean/DownloadInfo;->setFinishedSize(I)V

    .line 121
    iget-object v7, p0, Lcom/fiio/music/network/c/b;->d:Lcom/fiio/music/network/c/a;

    iget-object v8, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v7, v8}, Lcom/fiio/music/network/c/a;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V

    .line 122
    sget-object v7, Lcom/fiio/music/network/c/b;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "update database finishedSize = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 111
    :catchall_0
    move-exception v1

    :try_start_b
    monitor-exit p0

    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 141
    :catch_4
    move-exception v1

    move-object v12, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v0

    move-object v0, v12

    :goto_3
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    iget-object v0, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    const-string v7, "FAILED"

    invoke-virtual {v0, v7}, Lcom/fiio/music/network/bean/DownloadInfo;->setDownloadState(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/fiio/music/network/bean/DownloadInfo;->setFinishedSize(I)V

    .line 145
    iget-object v0, p0, Lcom/fiio/music/network/c/b;->d:Lcom/fiio/music/network/c/a;

    iget-object v2, p0, Lcom/fiio/music/network/c/b;->c:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v0, v2}, Lcom/fiio/music/network/c/a;->b(Lcom/fiio/music/network/bean/DownloadInfo;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 148
    if-eqz v1, :cond_a

    .line 149
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_a
    if-eqz v5, :cond_b

    .line 152
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 154
    :cond_b
    if-eqz v6, :cond_0

    .line 155
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_0

    .line 158
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 146
    :catchall_1
    move-exception v0

    move-object v6, v4

    move-object v1, v4

    .line 148
    :goto_4
    if-eqz v4, :cond_c

    .line 149
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_c
    if-eqz v6, :cond_d

    .line 152
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 154
    :cond_d
    if-eqz v1, :cond_e

    .line 155
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 160
    :cond_e
    :goto_5
    throw v0

    .line 158
    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 146
    :catchall_2
    move-exception v1

    move-object v6, v4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v4, v5

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v4, v1

    move-object v1, v6

    move-object v6, v5

    goto :goto_4

    .line 141
    :catch_7
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    move-object v6, v4

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v5, v4

    move-object v6, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :catch_9
    move-exception v1

    move-object v5, v6

    move-object v6, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/fiio/music/network/c/b;->b:Ljava/lang/String;

    const-string v1, "start download."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v0, Lcom/fiio/music/network/c/b;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/network/c/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/fiio/music/network/c/b;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
