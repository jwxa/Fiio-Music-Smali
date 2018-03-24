.class final Lcom/fiio/music/util/ba;
.super Ljava/lang/Thread;
.source "LogcatHelper.java"


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/fiio/music/util/az;

.field private c:Ljava/lang/Process;

.field private d:Ljava/io/BufferedReader;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/az;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    iput-object p1, p0, Lcom/fiio/music/util/ba;->b:Lcom/fiio/music/util/az;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    iput-object v1, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/ba;->e:Z

    .line 121
    iput-object v1, p0, Lcom/fiio/music/util/ba;->a:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    .line 126
    iput-object p2, p0, Lcom/fiio/music/util/ba;->f:Ljava/lang/String;

    .line 128
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logcat-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/fiio/music/util/ay;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 128
    iput-object v0, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logcat  | grep \"("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/util/ba;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/ba;->a:Ljava/lang/String;

    .line 149
    return-void

    .line 132
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    .line 159
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 160
    iget-object v2, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 159
    iput-object v0, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    .line 162
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/fiio/music/util/ba;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_5

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 179
    iput-object v4, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    if-eqz v0, :cond_3

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 189
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    .line 191
    :try_start_2
    iget-object v0, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 195
    :goto_2
    iput-object v4, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    .line 200
    :cond_4
    :goto_3
    return-void

    .line 163
    :cond_5
    :try_start_3
    iget-boolean v1, p0, Lcom/fiio/music/util/ba;->e:Z

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/util/ba;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fiio/music/util/ay;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    iget-object v0, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    if-eqz v0, :cond_6

    .line 178
    iget-object v0, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 179
    iput-object v4, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    .line 183
    :try_start_5
    iget-object v0, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 189
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    .line 191
    :try_start_6
    iget-object v0, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 195
    :goto_5
    iput-object v4, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    goto :goto_3

    .line 186
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 193
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    iget-object v1, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    if-eqz v1, :cond_8

    .line 178
    iget-object v1, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 179
    iput-object v4, p0, Lcom/fiio/music/util/ba;->c:Ljava/lang/Process;

    .line 181
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    if-eqz v1, :cond_9

    .line 183
    :try_start_7
    iget-object v1, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fiio/music/util/ba;->d:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 189
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_a

    .line 191
    :try_start_8
    iget-object v1, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 195
    :goto_7
    iput-object v4, p0, Lcom/fiio/music/util/ba;->g:Ljava/io/FileOutputStream;

    .line 198
    :cond_a
    throw v0

    .line 186
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 193
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 186
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 193
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method
