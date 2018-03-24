.class public Lorg/eclipse/jetty/server/ShutdownMonitor;
.super Ljava/lang/Thread;
.source "ShutdownMonitor.java"


# instance fields
.field private DEBUG:Z

.field private exitVm:Z

.field private key:Ljava/lang/String;

.field private port:I

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 74
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    .line 77
    const-string v1, "STOP.PORT"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    .line 78
    const-string v1, "STOP.KEY"

    const-string v2, "eclipse"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->exitVm:Z

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/p;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor;-><init>()V

    return-void
.end method

.method private close(Ljava/net/ServerSocket;)V
    .locals 1

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private close(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ShutdownMonitor] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 122
    :cond_0
    return-void
.end method

.method private debug(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/eclipse/jetty/server/ShutdownMonitor;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/eclipse/jetty/server/q;->a:Lorg/eclipse/jetty/server/ShutdownMonitor;

    return-object v0
.end method

.method private startListenSocket()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 272
    iget v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    if-gez v0, :cond_1

    .line 274
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShutdownMonitor not in use (port < 0): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->setDaemon(Z)V

    .line 282
    const-string v0, "ShutdownMonitor"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->setName(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    const/4 v2, 0x1

    const-string v3, "127.0.0.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    .line 285
    iget v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    if-nez v0, :cond_2

    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    .line 289
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "STOP.PORT=%d%n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 292
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 295
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    .line 296
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "STOP.KEY=%s%n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_3
    const-string v0, "STOP.PORT=%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const-string v0, "STOP.KEY=%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    :try_start_1
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/Throwable;)V

    .line 302
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error binding monitor port "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    const-string v0, "STOP.PORT=%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const-string v0, "STOP.KEY=%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 307
    :catchall_0
    move-exception v0

    const-string v1, "STOP.PORT=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const-string v1, "STOP.KEY=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    aput-object v3, v2, v6

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    return v0
.end method

.method public getServerSocket()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public isExitVm()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->exitVm:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 162
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 167
    new-instance v0, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 169
    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Ignoring command with incorrect key"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->close(Ljava/net/Socket;)V

    goto :goto_0

    .line 175
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 177
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v3, "command=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {p0, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    const-string v3, "stop"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    const-string v0, "Issuing graceful shutdown.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->getInstance()Lorg/eclipse/jetty/util/thread/ShutdownThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->run()V

    .line 186
    const-string v0, "Informing client that we are stopped."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    const-string v0, "Stopped\r\n"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 188
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 191
    const-string v0, "Shutting down monitor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->close(Ljava/net/Socket;)V

    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->close(Ljava/net/ServerSocket;)V

    .line 195
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->exitVm:Z

    if-eqz v0, :cond_2

    .line 198
    const-string v0, "Killing JVM"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->close(Ljava/net/Socket;)V

    goto/16 :goto_0

    .line 202
    :cond_3
    :try_start_2
    const-string v3, "status"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "OK\r\n"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 206
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 211
    :try_start_3
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/Throwable;)V

    .line 212
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->close(Ljava/net/Socket;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->close(Ljava/net/Socket;)V

    .line 217
    throw v0
.end method

.method public setDebug(Z)V
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    .line 225
    return-void
.end method

.method public setExitVm(Z)V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ShutdownMonitor already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->exitVm:Z

    .line 234
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ShutdownMonitor already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setPort(I)V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ShutdownMonitor already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    .line 252
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ShutdownMonitor already started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->startListenSocket()V

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 267
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    const-string v0, "%s[port=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
