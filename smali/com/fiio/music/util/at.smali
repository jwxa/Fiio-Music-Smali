.class public final Lcom/fiio/music/util/at;
.super Ljava/lang/Object;
.source "ISOMounter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "rm -rf /mnt/internal_sd/imageloader/"

    .line 41
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/fiio/music/util/at;->a([Ljava/lang/String;)Lcom/fiio/music/util/au;

    .line 42
    return-void
.end method

.method private static a([Ljava/lang/String;)Lcom/fiio/music/util/au;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/fiio/music/util/au;

    invoke-direct {v0}, Lcom/fiio/music/util/au;-><init>()V

    .line 104
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "sh"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    .line 113
    :try_start_1
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 114
    :try_start_2
    array-length v3, p0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_2

    .line 121
    const-string v1, "exit\n"

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 123
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v1

    iput v1, v0, Lcom/fiio/music/util/au;->a:I

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 128
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 131
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/util/au;->c:Ljava/lang/String;

    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/util/au;->b:Ljava/lang/String;

    .line 134
    const-string v1, "CommandExecution"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/fiio/music/util/au;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " | "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Lcom/fiio/music/util/au;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    const-string v7, " | "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Lcom/fiio/music/util/au;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 152
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 153
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 154
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 163
    :goto_4
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    .line 114
    :cond_2
    :try_start_6
    aget-object v4, p0, v1

    .line 115
    if-eqz v4, :cond_3

    .line 116
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 117
    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 114
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 130
    :cond_4
    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    .line 136
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 137
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 138
    if-eqz v6, :cond_c

    .line 139
    const-string v1, "CommandExecution"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 152
    :goto_6
    if-eqz v4, :cond_5

    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 153
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 154
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 163
    :cond_7
    :goto_7
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    .line 131
    :cond_8
    :try_start_a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto/16 :goto_3

    .line 143
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 144
    :goto_8
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_12

    .line 146
    const-string v1, "CommandExecution"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 152
    :goto_9
    if-eqz v5, :cond_9

    :try_start_c
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 153
    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 154
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 163
    :cond_b
    :goto_a
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    .line 141
    :cond_c
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 150
    :catchall_0
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    .line 152
    :goto_b
    if-eqz v5, :cond_d

    :try_start_e
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 153
    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 154
    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 163
    :cond_f
    :goto_c
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 164
    :cond_10
    throw v0

    .line 155
    :catch_2
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_11

    .line 158
    const-string v1, "CommandExecution"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 160
    :cond_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 148
    :cond_12
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_9

    .line 150
    :catchall_1
    move-exception v0

    goto :goto_b

    .line 155
    :catch_3
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_13

    .line 158
    const-string v1, "CommandExecution"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 160
    :cond_13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 155
    :catch_4
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_14

    .line 158
    const-string v1, "CommandExecution"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 160
    :cond_14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 155
    :catch_5
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_15

    .line 158
    const-string v1, "CommandExecution"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 160
    :cond_15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 150
    :catchall_2
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v4, v2

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto :goto_b

    .line 143
    :catch_6
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    goto/16 :goto_8

    :catch_7
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_8

    :catch_8
    move-exception v1

    move-object v4, v2

    goto/16 :goto_8

    :catch_9
    move-exception v1

    goto/16 :goto_8

    .line 136
    :catch_a
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_5

    :catch_b
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v6

    goto/16 :goto_5

    :catch_c
    move-exception v1

    move-object v3, v2

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_5

    :catch_d
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_5
.end method
