.class public Lorg/eclipse/jetty/server/NCSARequestLog;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "NCSARequestLog.java"

# interfaces
.implements Lorg/eclipse/jetty/server/RequestLog;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _append:Z

.field private _closeOut:Z

.field private _extended:Z

.field private transient _fileOut:Ljava/io/OutputStream;

.field private _filename:Ljava/lang/String;

.field private _filenameDateFormat:Ljava/lang/String;

.field private transient _ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

.field private _ignorePaths:[Ljava/lang/String;

.field private _logCookies:Z

.field private transient _logDateCache:Lorg/eclipse/jetty/util/DateCache;

.field private _logDateFormat:Ljava/lang/String;

.field private _logDispatch:Z

.field private _logLatency:Z

.field private _logLocale:Ljava/util/Locale;

.field private _logServer:Z

.field private _logTimeZone:Ljava/lang/String;

.field private transient _out:Ljava/io/OutputStream;

.field private _preferProxiedForAddress:Z

.field private _retainDays:I

.field private transient _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/eclipse/jetty/server/NCSARequestLog;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 63
    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 66
    const-string v0, "GMT"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 69
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 70
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 71
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 85
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 86
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 87
    const/16 v0, 0x1f

    iput v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 63
    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 66
    const-string v0, "GMT"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 69
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 70
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 71
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 100
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 101
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 102
    const/16 v0, 0x1f

    iput v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 103
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/NCSARequestLog;->setFilename(Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected declared-synchronized doStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 639
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/DateCache;->setTimeZoneID(Ljava/lang/String;)V

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 647
    new-instance v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    iget v3, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    iget-object v4, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z

    .line 649
    sget-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opened "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/NCSARequestLog;->getDatedFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 656
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 658
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    move v0, v7

    .line 659
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 660
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 652
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 663
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 665
    :cond_3
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 666
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    monitor-exit p0

    return-void
.end method

.method protected doStop()V
    .locals 2

    .prologue
    .line 678
    monitor-enter p0

    .line 680
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 693
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 700
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 705
    monitor-exit p0

    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 688
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 695
    :catch_1
    move-exception v0

    .line 697
    :try_start_5
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    check-cast v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->getDatedFilename()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFilenameDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnorePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogCookies()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    return v0
.end method

.method public getLogDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLatency()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    return v0
.end method

.method public getLogLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLogServer()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    return v0
.end method

.method public getLogTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferProxiedForAddress()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    return v0
.end method

.method public getRetainDays()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    return v0
.end method

.method public isLogDispatch()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    return v0
.end method

.method public log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x30

    .line 458
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 466
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    if-eqz v0, :cond_2

    .line 468
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_2
    const/4 v0, 0x0

    .line 473
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    if-eqz v1, :cond_3

    .line 475
    const-string v0, "X-Forwarded-For"

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    :cond_3
    if-nez v0, :cond_4

    .line 479
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    .line 481
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getAuthentication()Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    .line 484
    instance-of v1, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v1, :cond_d

    .line 485
    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :goto_1
    const-string v0, " ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    if-eqz v0, :cond_e

    .line 491
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :goto_2
    const-string v0, "] \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getUri()Lorg/eclipse/jetty/http/HttpURI;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v0, "\" "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 504
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    .line 505
    if-gtz v0, :cond_5

    .line 506
    const/16 v0, 0x194

    .line 507
    :cond_5
    div-int/lit8 v1, v0, 0x64

    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    :goto_3
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v0

    .line 515
    cmp-long v3, v0, v10

    if-ltz v3, :cond_15

    .line 517
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    const-wide/32 v4, 0x1869f

    cmp-long v3, v0, v4

    if-lez v3, :cond_10

    .line 519
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 532
    :goto_4
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    :goto_5
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    if-eqz v0, :cond_6

    .line 539
    invoke-virtual {p0, p1, p2, v2}, Lorg/eclipse/jetty/server/NCSARequestLog;->logExtended(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/StringBuilder;)V

    .line 541
    :cond_6
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    if-eqz v0, :cond_8

    .line 543
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getCookies()[Lc/c/c/a;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_7

    array-length v0, v1

    if-nez v0, :cond_16

    .line 545
    :cond_7
    const-string v0, " -"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_8
    :goto_6
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    if-eqz v0, :cond_c

    .line 563
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 565
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    if-eqz v0, :cond_b

    .line 567
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatchTime()J

    move-result-wide v0

    .line 568
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    cmp-long v3, v0, v10

    if-nez v3, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v0

    :cond_a
    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 572
    :cond_b
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    if-eqz v0, :cond_c

    .line 574
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 579
    :cond_c
    sget-object v0, Lorg/eclipse/jetty/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    if-nez v1, :cond_19

    .line 584
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 587
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 592
    :catch_0
    move-exception v0

    .line 591
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 487
    :cond_d
    :try_start_3
    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 493
    :cond_e
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 512
    :cond_f
    const-string v0, "Async"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 522
    :cond_10
    const-wide/16 v4, 0x270f

    cmp-long v3, v0, v4

    if-lez v3, :cond_11

    .line 523
    const-wide/16 v4, 0x2710

    div-long v4, v0, v4

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    add-long/2addr v4, v8

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    :cond_11
    const-wide/16 v4, 0x3e7

    cmp-long v3, v0, v4

    if-lez v3, :cond_12

    .line 525
    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    add-long/2addr v4, v8

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    :cond_12
    const-wide/16 v4, 0x63

    cmp-long v3, v0, v4

    if-lez v3, :cond_13

    .line 527
    const-wide/16 v4, 0x64

    div-long v4, v0, v4

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    add-long/2addr v4, v8

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    :cond_13
    const-wide/16 v4, 0x9

    cmp-long v3, v0, v4

    if-lez v3, :cond_14

    .line 529
    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    add-long/2addr v4, v8

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    :cond_14
    const-wide/16 v4, 0xa

    rem-long/2addr v0, v4

    add-long/2addr v0, v8

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 535
    :cond_15
    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 548
    :cond_16
    const-string v0, " \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const/4 v0, 0x0

    :goto_7
    array-length v3, v1

    if-ge v0, v3, :cond_18

    .line 551
    if-eqz v0, :cond_17

    .line 552
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 553
    :cond_17
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lc/c/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lc/c/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 557
    :cond_18
    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 585
    :cond_19
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 587
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method protected logExtended(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    const/16 v1, 0x22

    .line 609
    const-string v0, "Referer"

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    if-nez v0, :cond_0

    .line 611
    const-string v0, "\"-\" "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :goto_0
    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    if-nez v0, :cond_1

    .line 621
    const-string v0, "\"-\" "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :goto_1
    return-void

    .line 614
    :cond_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v0, "\" "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public setAppend(Z)V
    .locals 0

    .prologue
    .line 273
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 274
    return-void
.end method

.method public setExtended(Z)V
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 251
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 p1, 0x0

    .line 123
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setFilenameDateFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setIgnorePaths([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setLogCookies(Z)V
    .locals 0

    .prologue
    .line 318
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 319
    return-void
.end method

.method public setLogDateFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setLogDispatch(Z)V
    .locals 0

    .prologue
    .line 434
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 435
    return-void
.end method

.method public setLogLatency(Z)V
    .locals 0

    .prologue
    .line 364
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 365
    return-void
.end method

.method public setLogLocale(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 184
    return-void
.end method

.method public setLogServer(Z)V
    .locals 0

    .prologue
    .line 341
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 342
    return-void
.end method

.method public setLogTimeZone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setPreferProxiedForAddress(Z)V
    .locals 0

    .prologue
    .line 388
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    .line 389
    return-void
.end method

.method public setRetainDays(I)V
    .locals 0

    .prologue
    .line 227
    iput p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 228
    return-void
.end method
