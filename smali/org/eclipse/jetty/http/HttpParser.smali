.class public Lorg/eclipse/jetty/http/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"

# interfaces
.implements Lorg/eclipse/jetty/http/Parser;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xd

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SEEKING_EOF:I = 0x7

.field public static final STATE_SPACE1:I = -0xc

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xe

.field public static final STATE_STATUS:I = -0xb

.field public static final STATE_URI:I = -0xa


# instance fields
.field private _body:Lorg/eclipse/jetty/io/Buffer;

.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/io/Buffers;

.field private _cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field protected _chunkLength:I

.field protected _chunkPosition:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field protected final _contentView:Lorg/eclipse/jetty/io/View;

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field protected _eol:B

.field private _forceContentBuffer:Z

.field private final _handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

.field private _headResponse:Z

.field private _header:Lorg/eclipse/jetty/io/Buffer;

.field protected _length:I

.field private _multiLineValue:Ljava/lang/String;

.field private _persistent:Z

.field private _responseStatus:I

.field protected _state:I

.field private final _tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

.field private final _tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 80
    const/16 v0, -0xe

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 95
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 96
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 99
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 101
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 102
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 80
    const/16 v0, -0xe

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 114
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 115
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 116
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 117
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 118
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 119
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1219
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1220
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    .line 1231
    :goto_0
    return v0

    .line 1222
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1224
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    if-eqz v0, :cond_2

    .line 1225
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1227
    goto :goto_0

    .line 1230
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1231
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    goto :goto_0
.end method

.method public blockForContent(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x7

    .line 1175
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1176
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 1210
    :cond_0
    :goto_0
    return-object v0

    .line 1178
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getState()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1186
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1188
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1190
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1191
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1195
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1196
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :catch_0
    move-exception v0

    .line 1206
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1207
    throw v0

    .line 1200
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1210
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    goto :goto_0
.end method

.method protected fill()I
    .locals 5

    .prologue
    .line 1003
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1007
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1010
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 1050
    :goto_0
    return v0

    .line 1014
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_5

    .line 1016
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_4

    .line 1017
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1018
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1022
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_b

    .line 1025
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_7

    .line 1027
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1031
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_9

    .line 1033
    sget-object v0, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "HttpParser Full for {} "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 1035
    new-instance v1, Lorg/eclipse/jetty/http/HttpException;

    const/16 v2, 0x19d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "FULL "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v4, :cond_8

    const-string v0, "body"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "head"

    goto :goto_1

    .line 1040
    :cond_9
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1045
    sget-object v1, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1046
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_a

    :goto_2
    throw v0

    :cond_a
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 1050
    :cond_b
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1151
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1152
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1154
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    return v0
.end method

.method public inContentState()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inHeaderState()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunking()Z
    .locals 4

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 169
    const/16 v0, -0xe

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isMoreInBuffer()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    return v0
.end method

.method public isState(I)Z
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 216
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-eq v0, v1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    if-gez v0, :cond_1

    .line 223
    :cond_2
    return-void
.end method

.method public parseAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 238
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 235
    goto :goto_0

    :cond_1
    move v3, v2

    .line 240
    goto :goto_1

    .line 242
    :cond_2
    return v0
.end method

.method public parseNext()I
    .locals 12

    .prologue
    .line 255
    const/4 v4, 0x0

    .line 257
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v0, :cond_1

    .line 258
    const/4 v0, 0x0

    .line 986
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 264
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 268
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 274
    if-nez v0, :cond_5

    .line 276
    const/4 v1, -0x1

    .line 277
    const/4 v0, 0x0

    .line 280
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->fill()I

    move-result v1

    .line 281
    sget-object v2, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "filled {}/{}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_1
    if-lez v1, :cond_6

    .line 290
    const/4 v4, 0x1

    .line 335
    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 341
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v6

    .line 342
    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v1, v0

    move v0, v3

    move v3, v4

    .line 343
    :goto_2
    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-gez v2, :cond_3b

    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_3b

    .line 345
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v0, v1, :cond_5c

    .line 347
    add-int/lit8 v3, v3, 0x1

    .line 348
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v4, v3

    move v3, v0

    .line 351
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 353
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    const/16 v0, 0xa

    if-ne v7, v0, :cond_b

    .line 355
    const/16 v0, 0xa

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move v0, v3

    move v1, v5

    move v3, v4

    .line 356
    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    .line 285
    sget-object v2, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 988
    :catch_1
    move-exception v0

    .line 990
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 991
    const/4 v1, 0x7

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 992
    throw v0

    .line 291
    :cond_6
    if-gez v1, :cond_4

    .line 293
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 296
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v1, :cond_7

    .line 298
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-nez v1, :cond_7

    .line 300
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 301
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 302
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 303
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 308
    :cond_7
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    sparse-switch v1, :sswitch_data_0

    .line 321
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 322
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-nez v1, :cond_8

    .line 323
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->earlyEOF()V

    .line 324
    :cond_8
    :goto_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 327
    :goto_5
    if-eqz v0, :cond_9

    .line 328
    throw v0

    .line 312
    :sswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_5

    .line 316
    :sswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_4

    .line 330
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isIdle()Z

    move-result v0

    if-nez v0, :cond_a

    .line 331
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 333
    :cond_a
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 358
    :cond_b
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 360
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    packed-switch v0, :pswitch_data_0

    :cond_c
    :goto_6
    :pswitch_0
    move v0, v3

    move v1, v5

    move v3, v4

    .line 796
    goto/16 :goto_2

    .line 363
    :pswitch_1
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 365
    const/16 v0, 0x20

    if-gt v7, v0, :cond_d

    if-gez v7, :cond_c

    .line 367
    :cond_d
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 368
    const/16 v0, -0xd

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    goto/16 :goto_2

    .line 373
    :pswitch_2
    const/16 v0, 0x20

    if-ne v7, v0, :cond_f

    .line 375
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 376
    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, -0x1

    :goto_7
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    .line 377
    const/16 v0, -0xc

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 378
    goto/16 :goto_2

    .line 376
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 380
    :cond_f
    const/16 v0, 0x20

    if-ge v7, v0, :cond_c

    if-ltz v7, :cond_c

    .line 382
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0

    .line 387
    :pswitch_3
    const/16 v0, 0x20

    if-gt v7, v0, :cond_10

    if-gez v7, :cond_12

    .line 389
    :cond_10
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 390
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-ltz v0, :cond_11

    .line 392
    const/16 v0, -0xb

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 393
    add-int/lit8 v0, v7, -0x30

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move v0, v3

    move v1, v5

    move v3, v4

    goto/16 :goto_2

    .line 396
    :cond_11
    const/16 v0, -0xa

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    goto/16 :goto_2

    .line 398
    :cond_12
    const/16 v0, 0x20

    if-ge v7, v0, :cond_c

    .line 400
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0

    .line 405
    :pswitch_4
    const/16 v0, 0x20

    if-ne v7, v0, :cond_13

    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 408
    const/16 v0, -0x9

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 409
    goto/16 :goto_2

    .line 411
    :cond_13
    const/16 v0, 0x30

    if-lt v7, v0, :cond_14

    const/16 v0, 0x39

    if-gt v7, v0, :cond_14

    .line 413
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v7, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 414
    goto/16 :goto_2

    .line 416
    :cond_14
    const/16 v0, 0x20

    if-ge v7, v0, :cond_15

    if-ltz v7, :cond_15

    .line 418
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v2, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 419
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 420
    const/4 v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 421
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move v0, v3

    move v1, v5

    move v3, v4

    .line 424
    goto/16 :goto_2

    .line 427
    :cond_15
    const/16 v0, -0xa

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 429
    goto/16 :goto_2

    .line 432
    :pswitch_5
    const/16 v0, 0x20

    if-ne v7, v0, :cond_16

    .line 434
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 435
    const/16 v0, -0x9

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 436
    goto/16 :goto_2

    .line 438
    :cond_16
    const/16 v0, 0x20

    if-ge v7, v0, :cond_c

    if-ltz v7, :cond_c

    .line 441
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 443
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 444
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 445
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 446
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 451
    :pswitch_6
    const/16 v0, 0x20

    if-gt v7, v0, :cond_17

    if-gez v7, :cond_18

    .line 453
    :cond_17
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 454
    const/4 v0, -0x6

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    goto/16 :goto_2

    .line 456
    :cond_18
    const/16 v0, 0x20

    if-ge v7, v0, :cond_c

    .line 458
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v0, :cond_19

    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v2, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 461
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 462
    const/4 v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 463
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 464
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move v0, v3

    move v1, v5

    move v3, v4

    goto/16 :goto_2

    .line 470
    :cond_19
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 472
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 473
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 474
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 475
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 481
    :pswitch_7
    const/16 v0, 0xd

    if-eq v7, v0, :cond_1a

    const/16 v0, 0xa

    if-ne v7, v0, :cond_c

    .line 484
    :cond_1a
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v0, :cond_1b

    .line 485
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    invoke-virtual {v1, v0, v2, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 488
    :goto_8
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 489
    sget-object v1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 490
    const/4 v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 491
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 492
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move v0, v3

    move v1, v5

    move v3, v4

    .line 494
    goto/16 :goto_2

    .line 487
    :cond_1b
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {v1, v2, v8, v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_8

    .line 489
    :cond_1c
    const/4 v0, 0x0

    goto :goto_9

    .line 499
    :pswitch_8
    sparse-switch v7, :sswitch_data_1

    .line 514
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v0

    if-gtz v0, :cond_1d

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v0

    if-gtz v0, :cond_1d

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 516
    :cond_1d
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object v2, v0

    .line 517
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 518
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 520
    :goto_b
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 521
    if-ltz v1, :cond_1e

    .line 525
    sparse-switch v1, :sswitch_data_2

    .line 592
    :cond_1e
    :goto_c
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 593
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 594
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 597
    :cond_1f
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 600
    const/16 v0, 0xd

    if-eq v7, v0, :cond_20

    const/16 v0, 0xa

    if-ne v7, v0, :cond_2e

    .line 603
    :cond_20
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v0, :cond_28

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_21

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_21

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_28

    .line 607
    :cond_21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 620
    :cond_22
    :goto_d
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 621
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 622
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_23

    .line 623
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 627
    :cond_23
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    const v0, 0x7fffffff

    :goto_e
    packed-switch v0, :pswitch_data_1

    .line 646
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 650
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 506
    :sswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 507
    const/4 v0, -0x2

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 508
    goto/16 :goto_2

    .line 516
    :cond_24
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_a

    .line 518
    :cond_25
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 528
    :sswitch_3
    iget-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    const-wide/16 v10, -0x2

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1e

    .line 532
    :try_start_4
    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->toLong(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    .line 539
    :try_start_5
    iget-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gtz v1, :cond_1e

    .line 540
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_c

    .line 534
    :catch_2
    move-exception v0

    .line 536
    sget-object v1, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 537
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0

    .line 545
    :sswitch_4
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 546
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 547
    const/4 v8, 0x2

    if-ne v8, v1, :cond_26

    .line 548
    const-wide/16 v8, -0x2

    iput-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_c

    .line 551
    :cond_26
    const-string v1, "ISO-8859-1"

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    const-string v8, "chunked"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 553
    const-wide/16 v8, -0x2

    iput-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_c

    .line 555
    :cond_27
    const-string v8, "chunked"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1e

    .line 556
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 561
    :sswitch_5
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    goto/16 :goto_c

    .line 573
    :sswitch_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v9, :cond_1e

    aget-object v10, v8, v1

    .line 575
    sget-object v11, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Ljava/lang/String;)I

    move-result v10

    sparse-switch v10, :sswitch_data_4

    .line 573
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 564
    :sswitch_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto/16 :goto_c

    .line 568
    :sswitch_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto/16 :goto_c

    .line 578
    :sswitch_9
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_11

    .line 582
    :sswitch_a
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_11

    .line 609
    :cond_28
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 611
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-eqz v0, :cond_29

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_29

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_29

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2a

    .line 615
    :cond_29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_d

    .line 617
    :cond_2a
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_d

    .line 627
    :cond_2b
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    long-to-int v0, v0

    goto/16 :goto_e

    .line 630
    :pswitch_9
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 631
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_f

    .line 635
    :pswitch_a
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 636
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_f

    .line 640
    :pswitch_b
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 641
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v0, :cond_2c

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2d

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_12
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 643
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 641
    :cond_2d
    const/4 v0, 0x7

    goto :goto_12

    .line 655
    :cond_2e
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 656
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 657
    const/4 v0, -0x4

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 660
    if-eqz v6, :cond_c

    .line 662
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v6, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaders;->getBest([BII)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 664
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_c

    .line 666
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->length()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 667
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 668
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    move v1, v0

    move v0, v3

    move v3, v4

    goto/16 :goto_2

    .line 678
    :pswitch_c
    sparse-switch v7, :sswitch_data_5

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 699
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    .line 700
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 701
    :cond_2f
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 702
    const/4 v0, -0x3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 706
    goto/16 :goto_2

    .line 682
    :sswitch_b
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v0, :cond_30

    .line 683
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 684
    :cond_30
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 685
    const/4 v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 686
    goto/16 :goto_2

    .line 688
    :sswitch_c
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v0, :cond_31

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_31

    .line 689
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 690
    :cond_31
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 691
    const/4 v0, -0x2

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 692
    goto/16 :goto_2

    :sswitch_d
    move v0, v3

    move v1, v5

    move v3, v4

    .line 695
    goto/16 :goto_2

    .line 709
    :pswitch_d
    sparse-switch v7, :sswitch_data_6

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 794
    :goto_13
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_6

    .line 713
    :sswitch_e
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v0, :cond_32

    .line 714
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 715
    :cond_32
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 716
    const/4 v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 717
    goto/16 :goto_2

    .line 719
    :sswitch_f
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v0, :cond_33

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_33

    .line 720
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 721
    :cond_33
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 722
    const/4 v0, -0x2

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 723
    goto/16 :goto_2

    .line 726
    :sswitch_10
    const/4 v0, -0x4

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 727
    goto/16 :goto_2

    .line 737
    :pswitch_e
    sparse-switch v7, :sswitch_data_7

    .line 761
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 762
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 763
    :cond_34
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 764
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 767
    goto/16 :goto_2

    .line 741
    :sswitch_11
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v0, :cond_35

    .line 743
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v0

    if-nez v0, :cond_36

    .line 744
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 753
    :cond_35
    :goto_14
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 754
    const/4 v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 755
    goto/16 :goto_2

    .line 748
    :cond_36
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v0, :cond_37

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 749
    :cond_37
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_14

    :sswitch_12
    move v0, v3

    move v1, v5

    move v3, v4

    .line 758
    goto/16 :goto_2

    .line 770
    :pswitch_f
    sparse-switch v7, :sswitch_data_8

    goto/16 :goto_13

    .line 791
    :sswitch_13
    const/4 v0, -0x2

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 792
    goto/16 :goto_2

    .line 774
    :sswitch_14
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v0, :cond_38

    .line 776
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v0

    if-nez v0, :cond_39

    .line 777
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 786
    :cond_38
    :goto_15
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 787
    const/4 v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    move v1, v5

    move v3, v4

    .line 788
    goto/16 :goto_2

    .line 781
    :cond_39
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v0, :cond_3a

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 782
    :cond_3a
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_15

    .line 803
    :cond_3b
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v0, :cond_3d

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-eqz v0, :cond_3d

    .line 805
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v0, :cond_3c

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3e

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_3e

    :cond_3c
    const/4 v0, 0x0

    :goto_16
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 806
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 813
    :cond_3d
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 815
    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    .line 816
    :goto_17
    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v3, :cond_0

    if-lez v1, :cond_0

    .line 818
    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v2, v3, :cond_5b

    .line 820
    add-int/lit8 v2, v0, 0x1

    .line 821
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v3, v2

    move v2, v0

    .line 824
    :goto_18
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v4, 0xd

    if-ne v0, v4, :cond_3f

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3f

    .line 826
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 827
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    move v0, v3

    .line 828
    goto :goto_17

    .line 805
    :cond_3e
    const/4 v0, 0x7

    goto :goto_16

    .line 830
    :cond_3f
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 831
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    packed-switch v0, :pswitch_data_2

    .line 983
    :cond_40
    :goto_19
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    move v0, v3

    goto :goto_17

    .line 834
    :pswitch_10
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 835
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 836
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 837
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 839
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 843
    :pswitch_11
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long/2addr v2, v4

    .line 844
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_42

    .line 846
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    :goto_1a
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 847
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 848
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 846
    :cond_41
    const/4 v0, 0x7

    goto :goto_1a

    .line 851
    :cond_42
    int-to-long v4, v1

    cmp-long v0, v4, v2

    if-lez v0, :cond_43

    .line 855
    long-to-int v1, v2

    .line 858
    :cond_43
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 859
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 860
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 861
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 863
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_44

    .line 865
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    :goto_1b
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 866
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 869
    :cond_44
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 865
    :cond_45
    const/4 v0, 0x7

    goto :goto_1b

    .line 874
    :pswitch_12
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    .line 875
    const/16 v1, 0xd

    if-eq v0, v1, :cond_46

    const/16 v1, 0xa

    if-ne v0, v1, :cond_47

    .line 876
    :cond_46
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    goto/16 :goto_19

    .line 877
    :cond_47
    const/16 v1, 0x20

    if-gt v0, v1, :cond_48

    .line 878
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    goto/16 :goto_19

    .line 881
    :cond_48
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    .line 882
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 883
    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_19

    .line 890
    :pswitch_13
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    .line 891
    const/16 v1, 0xd

    if-eq v0, v1, :cond_49

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4d

    .line 893
    :cond_49
    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 895
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    if-nez v0, :cond_4c

    .line 897
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4a

    .line 898
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 899
    :cond_4a
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    :goto_1c
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 900
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 901
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 899
    :cond_4b
    const/4 v0, 0x7

    goto :goto_1c

    .line 904
    :cond_4c
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_19

    .line 906
    :cond_4d
    const/16 v1, 0x20

    if-le v0, v1, :cond_4e

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_4f

    .line 907
    :cond_4e
    const/4 v0, 0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_19

    .line 908
    :cond_4f
    const/16 v1, 0x30

    if-lt v0, v1, :cond_50

    const/16 v1, 0x39

    if-gt v0, v1, :cond_50

    .line 909
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_19

    .line 910
    :cond_50
    const/16 v1, 0x61

    if-lt v0, v1, :cond_51

    const/16 v1, 0x66

    if-gt v0, v1, :cond_51

    .line 911
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x61

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_19

    .line 912
    :cond_51
    const/16 v1, 0x41

    if-lt v0, v1, :cond_52

    const/16 v1, 0x46

    if-gt v0, v1, :cond_52

    .line 913
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x41

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_19

    .line 915
    :cond_52
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad chunk char: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 921
    :pswitch_14
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    .line 922
    const/16 v1, 0xd

    if-eq v0, v1, :cond_53

    const/16 v1, 0xa

    if-ne v0, v1, :cond_40

    .line 924
    :cond_53
    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 925
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    if-nez v0, :cond_56

    .line 927
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_54

    .line 928
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 929
    :cond_54
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v0, :cond_55

    const/4 v0, 0x0

    :goto_1d
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 930
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 931
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 929
    :cond_55
    const/4 v0, 0x7

    goto :goto_1d

    .line 934
    :cond_56
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_19

    .line 941
    :pswitch_15
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    iget v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    sub-int/2addr v0, v4

    .line 942
    if-nez v0, :cond_57

    .line 944
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_19

    .line 947
    :cond_57
    if-le v1, v0, :cond_5a

    .line 949
    :goto_1e
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 950
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 951
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 952
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 953
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 955
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 961
    :pswitch_16
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_59

    .line 963
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 964
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 978
    :cond_58
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto/16 :goto_19

    .line 969
    :cond_59
    :goto_1f
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_58

    .line 970
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_59

    .line 972
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 973
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 974
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V
    :try_end_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1f

    :cond_5a
    move v0, v1

    goto :goto_1e

    :cond_5b
    move v3, v0

    goto/16 :goto_18

    :cond_5c
    move v4, v3

    move v3, v0

    goto/16 :goto_3

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 360
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 499
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0x20 -> :sswitch_2
        0x3a -> :sswitch_2
    .end sparse-switch

    .line 525
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
        0xc -> :sswitch_3
    .end sparse-switch

    .line 627
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 561
    :sswitch_data_3
    .sparse-switch
        -0x1 -> :sswitch_6
        0x1 -> :sswitch_7
        0x5 -> :sswitch_8
    .end sparse-switch

    .line 575
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_9
        0x5 -> :sswitch_a
    .end sparse-switch

    .line 678
    :sswitch_data_5
    .sparse-switch
        0x9 -> :sswitch_d
        0xa -> :sswitch_b
        0xd -> :sswitch_b
        0x20 -> :sswitch_d
        0x3a -> :sswitch_c
    .end sparse-switch

    .line 709
    :sswitch_data_6
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_10
        0x3a -> :sswitch_f
    .end sparse-switch

    .line 737
    :sswitch_data_7
    .sparse-switch
        0x9 -> :sswitch_12
        0xa -> :sswitch_11
        0xd -> :sswitch_11
        0x20 -> :sswitch_12
    .end sparse-switch

    .line 770
    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_13
        0xa -> :sswitch_14
        0xd -> :sswitch_14
        0x20 -> :sswitch_13
    .end sparse-switch

    .line 831
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 1057
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->putIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 1058
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v0, :cond_5

    const/16 v0, -0xe

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 1059
    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 1060
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 1061
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 1062
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    .line 1065
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1066
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 1068
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_7

    .line 1074
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    .line 1080
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    .line 1081
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1082
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 1083
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    .line 1084
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 1087
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_3

    .line 1089
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1090
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1092
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    .line 1093
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1095
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1096
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 1097
    return-void

    .line 1058
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 1077
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1078
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    goto :goto_1
.end method

.method public returnBuffers()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1103
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_0

    .line 1106
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1107
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1109
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1112
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_4

    .line 1114
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_3

    .line 1115
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1116
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1117
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1119
    :cond_4
    return-void
.end method

.method public setForceContentBuffer(Z)V
    .locals 0

    .prologue
    .line 1169
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    .line 1170
    return-void
.end method

.method public setHeadResponse(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    .line 140
    return-void
.end method

.method public setPersistent(Z)V
    .locals 2

    .prologue
    .line 201
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 202
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-ne v0, v1, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 204
    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 2

    .prologue
    .line 1124
    iput p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 1125
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 1126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1138
    const-string v0, "%s{s=%d,l=%d,c=%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " buf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
