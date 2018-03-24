.class final Lcom/fiio/music/network/b/f;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Le/h;


# instance fields
.field final synthetic a:Lcom/fiio/music/network/b/a;

.field private final synthetic b:Lcom/fiio/music/entity/Song;


# direct methods
.method constructor <init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/network/b/f;->a:Lcom/fiio/music/network/b/a;

    iput-object p2, p0, Lcom/fiio/music/network/b/f;->b:Lcom/fiio/music/entity/Song;

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/g;Le/aq;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 687
    if-nez p2, :cond_1

    .line 688
    invoke-static {}, Lcom/fiio/music/network/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadCloudMusicAlbumCover response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    const/16 v1, 0x400

    new-array v4, v1, [B

    .line 698
    iget-object v1, p0, Lcom/fiio/music/network/b/f;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 699
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/fiio/music/network/b/f;->b:Lcom/fiio/music/entity/Song;

    .line 701
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-static {v1}, Lcom/fiio/music/util/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 702
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 705
    iget-object v1, p0, Lcom/fiio/music/network/b/f;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    .line 707
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 708
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 713
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Le/aq;->f()Le/as;

    move-result-object v1

    invoke-virtual {v1}, Le/as;->c()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 715
    :try_start_1
    iget-object v1, p0, Lcom/fiio/music/network/b/f;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 716
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    const-string v6, "_track"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/network/b/f;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v6}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 716
    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 725
    :goto_1
    invoke-static {}, Lcom/fiio/music/network/b/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 726
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download img filePaht = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 725
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 730
    :goto_2
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 737
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 740
    new-instance v0, Landroid/content/Intent;

    .line 741
    const-string v3, "com.fiio.music.playmainactivity.downloadcoversuccess"

    .line 740
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 744
    invoke-static {}, Lcom/fiio/music/network/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u6587\u4ef6\u4e0b\u8f7d\u6210\u529f"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 751
    if-eqz v2, :cond_3

    .line 752
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 758
    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 718
    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/fiio/music/network/b/f;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 719
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    const-string v6, "_sacd_track"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/network/b/f;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v6}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 719
    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 721
    goto :goto_1

    .line 722
    :cond_5
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".jpg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v3, v1

    goto/16 :goto_1

    .line 731
    :cond_6
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v1, v4, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 747
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :goto_4
    :try_start_7
    invoke-static {}, Lcom/fiio/music/network/b/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 751
    if-eqz v1, :cond_7

    .line 752
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 758
    :cond_7
    :goto_5
    if-eqz v0, :cond_0

    .line 759
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 761
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 748
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 751
    :goto_6
    if-eqz v2, :cond_8

    .line 752
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 758
    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 759
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 763
    :cond_9
    :goto_8
    throw v0

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v0

    goto/16 :goto_3

    .line 748
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_6

    .line 747
    :catch_7
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_8
    move-exception v1

    move-object v1, v2

    goto :goto_4
.end method

.method public final a(Le/g;Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 769
    invoke-static {}, Lcom/fiio/music/network/b/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadCloudMusicAlbumCover onFailure e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method
