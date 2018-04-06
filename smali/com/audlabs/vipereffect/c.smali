.class final Lcom/audlabs/vipereffect/c;
.super Ljava/lang/Thread;
.source "ViPEREffect.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 152
    .line 155
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    const-string v0, "127.0.0.1"

    const/16 v3, 0x1f92

    invoke-direct {v2, v0, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 158
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 160
    new-instance v3, Lcom/audlabs/vipereffect/d;

    invoke-direct {v3, p0, v0}, Lcom/audlabs/vipereffect/d;-><init>(Lcom/audlabs/vipereffect/c;Ljava/io/InputStream;)V

    .line 186
    invoke-virtual {v3}, Lcom/audlabs/vipereffect/d;->start()V

    .line 189
    :goto_0
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$0()Z

    move-result v0

    if-eqz v0, :cond_6

    #get forObj
    .line 190
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$5()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 194
    :try_start_2
    #get formats
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$6()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$6()[B

    move-result-object v0

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v0, :cond_1

    .line 196
    :cond_0
    :try_start_3
    #get forObj
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$5()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    :cond_1
    :goto_1
    :try_start_4
    #get formats
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$6()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 203
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->access$7([B)V

    .line 193
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    const-string v3, "ViPER4Android"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setViPERFormat:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 214
    if-eqz v1, :cond_2

    .line 216
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 221
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 223
    :try_start_8
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 230
    :cond_3
    :goto_4
    return-void

    .line 198
    :catch_1
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 218
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 225
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 213
    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 214
    :goto_5
    if-eqz v1, :cond_4

    .line 216
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 221
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 223
    :try_start_b
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 228
    :cond_5
    :goto_7
    throw v0

    .line 218
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 225
    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 214
    :cond_6
    if-eqz v1, :cond_7

    .line 216
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 221
    :cond_7
    :goto_8
    :try_start_d
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_4

    .line 225
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 218
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 213
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 210
    :catch_8
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method
