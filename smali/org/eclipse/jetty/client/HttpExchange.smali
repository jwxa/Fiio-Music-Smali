.class public Lorg/eclipse/jetty/client/HttpExchange;
.super Ljava/lang/Object;
.source "HttpExchange.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATUS_CANCELLED:I = 0xb

.field public static final STATUS_CANCELLING:I = 0xa

.field public static final STATUS_COMPLETED:I = 0x7

.field public static final STATUS_EXCEPTED:I = 0x9

.field public static final STATUS_EXPIRED:I = 0x8

.field public static final STATUS_PARSING_CONTENT:I = 0x6

.field public static final STATUS_PARSING_HEADERS:I = 0x5

.field public static final STATUS_SENDING_REQUEST:I = 0x3

.field public static final STATUS_START:I = 0x0

.field public static final STATUS_WAITING_FOR_COMMIT:I = 0x2

.field public static final STATUS_WAITING_FOR_CONNECTION:I = 0x1

.field public static final STATUS_WAITING_FOR_RESPONSE:I = 0x4


# instance fields
.field private _address:Lorg/eclipse/jetty/client/Address;

.field private _configureListeners:Z

.field private volatile _connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

.field private _lastState:I

.field private _lastStateChange:J

.field private _lastStatePeriod:I

.field private _listener:Lorg/eclipse/jetty/client/HttpEventListener;

.field private _localAddress:Lorg/eclipse/jetty/client/Address;

.field private _method:Ljava/lang/String;

.field _onDone:Z

.field _onRequestCompleteDone:Z

.field _onResponseCompleteDone:Z

.field private _requestContent:Lorg/eclipse/jetty/io/Buffer;

.field private _requestContentSource:Ljava/io/InputStream;

.field private final _requestFields:Lorg/eclipse/jetty/http/HttpFields;

.field private _retryStatus:Z

.field private _scheme:Lorg/eclipse/jetty/io/Buffer;

.field private _sent:J

.field private _status:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _timeout:J

.field private volatile _timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field private _uri:Ljava/lang/String;

.field private _version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/client/HttpExchange;->$assertionsDisabled:Z

    .line 80
    const-class v0, Lorg/eclipse/jetty/client/HttpExchange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "GET"

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    .line 97
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    .line 99
    const/16 v0, 0xb

    iput v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    .line 101
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    .line 109
    new-instance v0, Lorg/eclipse/jetty/client/j;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/client/j;-><init>(Lorg/eclipse/jetty/client/HttpExchange;B)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    .line 115
    iput-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    .line 118
    iput-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    .line 119
    iput v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    .line 120
    iput v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    .line 1224
    return-void
.end method

.method private abort()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 797
    if-eqz v0, :cond_0

    .line 803
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 807
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    throw v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V

    return-void
.end method

.method private done()V
    .locals 1

    .prologue
    .line 786
    monitor-enter p0

    .line 788
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 790
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 791
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setStatusExpired(II)Z
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    .line 385
    :cond_0
    return v0
.end method

.method public static toState(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    packed-switch p0, :pswitch_data_0

    .line 882
    const-string v0, "UNKNOWN"

    .line 884
    :goto_0
    return-object v0

    .line 846
    :pswitch_0
    const-string v0, "START"

    goto :goto_0

    .line 849
    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 852
    :pswitch_2
    const-string v0, "CONNECTED"

    goto :goto_0

    .line 855
    :pswitch_3
    const-string v0, "SENDING"

    goto :goto_0

    .line 858
    :pswitch_4
    const-string v0, "WAITING"

    goto :goto_0

    .line 861
    :pswitch_5
    const-string v0, "HEADERS"

    goto :goto_0

    .line 864
    :pswitch_6
    const-string v0, "CONTENT"

    goto :goto_0

    .line 867
    :pswitch_7
    const-string v0, "COMPLETED"

    goto :goto_0

    .line 870
    :pswitch_8
    const-string v0, "EXPIRED"

    goto :goto_0

    .line 873
    :pswitch_9
    const-string v0, "EXCEPTED"

    goto :goto_0

    .line 876
    :pswitch_a
    const-string v0, "CANCELLING"

    goto :goto_0

    .line 879
    :pswitch_b
    const-string v0, "CANCELLED"

    goto :goto_0

    .line 843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public addRequestHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 652
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 653
    return-void
.end method

.method associate(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 3

    .prologue
    .line 818
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    new-instance v0, Lorg/eclipse/jetty/client/Address;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/client/Address;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    .line 821
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 822
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 823
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->abort()V

    .line 824
    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 780
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 781
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->abort()V

    .line 782
    return-void
.end method

.method protected cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1085
    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpClient;->cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 1087
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1088
    return-void
.end method

.method public configureListeners()Z
    .locals 1

    .prologue
    .line 1049
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    return v0
.end method

.method disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 3

    .prologue
    .line 833
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 835
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 836
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 837
    :cond_0
    return-object v0
.end method

.method protected expire(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 129
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 130
    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/HttpDestination;->exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 132
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 134
    :cond_1
    return-void
.end method

.method public getAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    return-object v0
.end method

.method public getLocalAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestContent()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;
    .locals 5

    .prologue
    .line 728
    monitor-enter p0

    .line 730
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 732
    if-nez p1, :cond_1

    .line 733
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 735
    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    .line 736
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v3

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 737
    if-ltz v1, :cond_0

    .line 739
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 740
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_1

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public getRequestContentSource()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    return-object v0
.end method

.method public getRequestFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryStatus()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    return v0
.end method

.method public getScheme()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 422
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    return-wide v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    return v0
.end method

.method isAssociated()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 390
    monitor-enter p0

    .line 392
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDone(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v0

    return v0
.end method

.method protected onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 999
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONNECTION FAILED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1000
    return-void
.end method

.method protected onException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1010
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EXCEPTION "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1011
    return-void
.end method

.method protected onExpire()V
    .locals 3

    .prologue
    .line 1018
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EXPIRED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    return-void
.end method

.method protected onRequestCommitted()V
    .locals 0

    .prologue
    .line 916
    return-void
.end method

.method protected onRequestComplete()V
    .locals 0

    .prologue
    .line 926
    return-void
.end method

.method protected onResponseComplete()V
    .locals 0

    .prologue
    .line 988
    return-void
.end method

.method protected onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 978
    return-void
.end method

.method protected onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 956
    return-void
.end method

.method protected onResponseHeaderComplete()V
    .locals 0

    .prologue
    .line 966
    return-void
.end method

.method protected onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 942
    return-void
.end method

.method protected onRetry()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    .line 1034
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 1041
    :cond_0
    return-void

    .line 1038
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported retry attempt"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    .line 181
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onRequestCompleteDone:Z

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onResponseCompleteDone:Z

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 6

    .prologue
    .line 1063
    sget-boolean v0, Lorg/eclipse/jetty/client/HttpExchange;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1065
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/client/i;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/client/i;-><init>(Lorg/eclipse/jetty/client/HttpExchange;Lorg/eclipse/jetty/client/HttpDestination;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1074
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    .line 1075
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getTimeout()J

    move-result-wide v2

    .line 1076
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1077
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 1080
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    goto :goto_0
.end method

.method public setAddress(Lorg/eclipse/jetty/client/Address;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    .line 441
    return-void
.end method

.method public setConfigureListeners(Z)V
    .locals 0

    .prologue
    .line 1058
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    .line 1059
    return-void
.end method

.method public setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 413
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public setRequestContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    .line 705
    return-void
.end method

.method public setRequestContentSource(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 713
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    .line 714
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 716
    :cond_0
    return-void
.end method

.method public setRequestContentType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public setRequestHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 679
    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public setRetryStatus(Z)V
    .locals 0

    .prologue
    .line 769
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    .line 770
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    if-eqz p1, :cond_0

    .line 480
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTPS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 485
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0
.end method

.method public setScheme(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    .line 470
    return-void
.end method

.method setStatus(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 196
    .line 199
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 201
    if-eq v3, p1, :cond_0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 204
    iget-wide v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    sub-long v6, v4, v6

    long-to-int v2, v6

    iput v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    .line 205
    iput v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    .line 206
    iput-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    .line 207
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 208
    iget-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    iput-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    .line 212
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 375
    :goto_0
    sget-object v2, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 377
    :goto_1
    return v0

    .line 215
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    :goto_2
    :pswitch_1
    move v0, v1

    .line 369
    :cond_1
    :goto_3
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 370
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    :catch_1
    move-exception v1

    goto :goto_0

    .line 222
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_3

    .line 225
    :pswitch_3
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v0

    goto :goto_3

    .line 230
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    :pswitch_5
    goto :goto_2

    .line 235
    :pswitch_6
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_3

    .line 238
    :pswitch_7
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v0

    goto :goto_3

    .line 243
    :pswitch_8
    packed-switch p1, :pswitch_data_3

    :pswitch_9
    goto :goto_2

    .line 248
    :pswitch_a
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_3

    .line 251
    :pswitch_b
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v0

    goto :goto_3

    .line 256
    :pswitch_c
    packed-switch p1, :pswitch_data_4

    :pswitch_d
    goto :goto_2

    .line 259
    :pswitch_e
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestCommitted()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 264
    :pswitch_f
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_3

    .line 267
    :pswitch_10
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v0

    goto :goto_3

    .line 272
    :pswitch_11
    packed-switch p1, :pswitch_data_5

    :pswitch_12
    goto :goto_2

    .line 277
    :pswitch_13
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 280
    :pswitch_14
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v0

    goto/16 :goto_3

    .line 285
    :pswitch_15
    packed-switch p1, :pswitch_data_6

    :pswitch_16
    goto/16 :goto_2

    .line 288
    :pswitch_17
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeaderComplete()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 293
    :pswitch_18
    :try_start_6
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 296
    :pswitch_19
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v0

    goto/16 :goto_3

    .line 301
    :pswitch_1a
    packed-switch p1, :pswitch_data_7

    goto/16 :goto_2

    .line 304
    :pswitch_1b
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :try_start_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseComplete()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 309
    :pswitch_1c
    :try_start_8
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 312
    :pswitch_1d
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v0

    goto/16 :goto_3

    .line 317
    :pswitch_1e
    packed-switch p1, :pswitch_data_8

    :pswitch_1f
    move v0, v1

    :pswitch_20
    move v8, v0

    move v0, v1

    move v1, v8

    .line 330
    goto/16 :goto_3

    .line 322
    :pswitch_21
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 332
    :pswitch_22
    packed-switch p1, :pswitch_data_9

    :pswitch_23
    move v8, v0

    move v0, v1

    move v1, v8

    .line 342
    goto/16 :goto_3

    .line 336
    :pswitch_24
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    :try_start_9
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move v0, v2

    goto/16 :goto_3

    .line 348
    :pswitch_25
    sparse-switch p1, :sswitch_data_0

    move v8, v0

    move v0, v1

    move v1, v8

    .line 361
    goto/16 :goto_3

    .line 351
    :sswitch_0
    :try_start_a
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 356
    :sswitch_1
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move v8, v0

    move v0, v1

    move v1, v8

    .line 357
    goto/16 :goto_3

    .line 371
    :cond_2
    :try_start_b
    sget-object v1, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "setStatus {} {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    .line 373
    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_3

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_11
        :pswitch_15
        :pswitch_1a
        :pswitch_1e
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_25
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 230
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 243
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 256
    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 272
    :pswitch_data_5
    .packed-switch 0x5
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 285
    :pswitch_data_6
    .packed-switch 0x6
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_18
    .end packed-switch

    .line 301
    :pswitch_data_7
    .packed-switch 0x7
        :pswitch_1b
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    .line 317
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_21
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_20
    .end packed-switch

    .line 332
    :pswitch_data_9
    .packed-switch 0x9
        :pswitch_24
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public setTimeout(J)V
    .locals 1

    .prologue
    .line 417
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    .line 418
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestURI(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 5

    .prologue
    .line 607
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!Absolute URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opaque URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "URI = {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 618
    if-gtz v0, :cond_3

    .line 619
    const-string v0, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1bb

    .line 621
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Ljava/lang/String;)V

    .line 622
    new-instance v1, Lorg/eclipse/jetty/client/Address;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/client/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 624
    new-instance v0, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/net/URI;)V

    .line 625
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getCompletePath()Ljava/lang/String;

    move-result-object v0

    .line 626
    if-nez v0, :cond_4

    const-string v0, "/"

    :cond_4
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestURI(Ljava/lang/String;)V

    .line 627
    return-void

    .line 619
    :cond_5
    const/16 v0, 0x50

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 431
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setURI(Ljava/net/URI;)V

    .line 432
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 503
    iput p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    .line 504
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 512
    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 513
    if-nez v0, :cond_0

    .line 514
    const/16 v0, 0xa

    iput v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    .line 890
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 892
    iget-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    sub-long v4, v2, v4

    .line 893
    iget v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    if-ltz v1, :cond_1

    const-string v1, "%s@%x=%s//%s%s#%s(%dms)->%s(%dms)"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    aput-object v7, v6, v11

    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    aput-object v7, v6, v12

    const/4 v7, 0x5

    iget v8, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    invoke-static {v8}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget v8, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    aput-object v0, v6, v7

    const/16 v0, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 896
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    if-lt v1, v9, :cond_0

    iget-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    :cond_0
    return-object v0

    .line 893
    :cond_1
    const-string v1, "%s@%x=%s//%s%s#%s(%dms)"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    aput-object v7, v6, v11

    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    aput-object v7, v6, v12

    const/4 v7, 0x5

    aput-object v0, v6, v7

    const/4 v0, 0x6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public waitForDone()I
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    .line 169
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public waitForStatus(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
