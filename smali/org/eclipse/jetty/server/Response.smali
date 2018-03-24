.class public Lorg/eclipse/jetty/server/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lc/c/c/e;


# static fields
.field public static final HTTP_ONLY_COMMENT:Ljava/lang/String; = "__HTTP_ONLY__"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NONE:I = 0x0

.field public static final SET_INCLUDE_HEADER_PREFIX:Ljava/lang/String; = "org.eclipse.jetty.server.include."

.field public static final STREAM:I = 0x1

.field public static final WRITER:I = 0x2


# instance fields
.field private _cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private _characterEncoding:Ljava/lang/String;

.field private final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private _contentType:Ljava/lang/String;

.field private _explicitEncoding:Z

.field private _locale:Ljava/util/Locale;

.field private _mimeType:Ljava/lang/String;

.field private volatile _outputState:I

.field private _reason:Ljava/lang/String;

.field private _status:I

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/eclipse/jetty/server/Response;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Response;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0xc8

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 110
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 111
    return-void
.end method

.method public static getResponse(Lc/c/c/e;)Lorg/eclipse/jetty/server/Response;
    .locals 1

    .prologue
    .line 86
    instance-of v0, p0, Lorg/eclipse/jetty/server/Response;

    if-eqz v0, :cond_0

    .line 87
    check-cast p0, Lorg/eclipse/jetty/server/Response;

    .line 89
    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addCookie(Lc/c/c/a;)V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 147
    invoke-virtual {p1}, Lc/c/c/a;->a()Ljava/lang/String;

    move-result-object v8

    .line 150
    if-eqz v8, :cond_3

    .line 152
    const-string v0, "__HTTP_ONLY__"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 153
    if-ltz v0, :cond_3

    .line 156
    const-string v0, "__HTTP_ONLY__"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 158
    const/4 v8, 0x0

    move v0, v10

    .line 161
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {p1}, Lc/c/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/c/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/c/c/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lc/c/c/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lc/c/c/a;->c()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1}, Lc/c/c/a;->e()Z

    move-result v9

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lc/c/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lc/c/c/a;->h()I

    move-result v11

    invoke-virtual/range {v1 .. v11}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V

    .line 170
    return-void

    :cond_1
    move v10, v11

    .line 161
    goto :goto_1

    :cond_2
    move v0, v10

    goto :goto_0

    :cond_3
    move v0, v11

    goto :goto_0
.end method

.method public addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    .line 139
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->addDateField(Ljava/lang/String;J)V

    .line 519
    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 583
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 594
    :cond_1
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 616
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->addLongField(Ljava/lang/String;J)V

    .line 619
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v2, p2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 622
    :cond_0
    return-void
.end method

.method public complete()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->completeResponse()V

    .line 1243
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v5

    .line 189
    if-nez v5, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-object p1

    .line 193
    :cond_1
    invoke-interface {v5}, Lorg/eclipse/jetty/server/SessionManager;->isCheckingRemoteSessionIdEncoding()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 195
    new-instance v2, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v2, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-nez v0, :cond_2

    const-string v0, ""

    .line 198
    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v1

    .line 199
    if-gez v1, :cond_3

    .line 200
    const-string v1, "https"

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1bb

    .line 201
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v6

    if-ne v6, v1, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 207
    :goto_2
    invoke-interface {v5}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdPathParameterNamePrefix()Ljava/lang/String;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_0

    .line 211
    if-nez p1, :cond_5

    move-object p1, v3

    .line 212
    goto :goto_0

    .line 200
    :cond_4
    const/16 v1, 0x50

    goto :goto_1

    .line 215
    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->isRequestedSessionIdFromCookie()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 217
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 218
    if-eq v1, v9, :cond_0

    .line 220
    const-string v0, "?"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 221
    if-gez v0, :cond_6

    .line 222
    const-string v0, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 224
    :cond_6
    if-gt v0, v1, :cond_7

    .line 225
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 226
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 232
    :cond_8
    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Lc/c/c/g;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v5, v1}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Lc/c/c/g;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-interface {v5, v1}, Lorg/eclipse/jetty/server/SessionManager;->getNodeId(Lc/c/c/g;)Ljava/lang/String;

    move-result-object v3

    .line 244
    if-nez v0, :cond_9

    .line 245
    new-instance v0, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 249
    :cond_9
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 250
    if-eq v1, v9, :cond_c

    .line 252
    const-string v0, "?"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 253
    if-gez v0, :cond_a

    .line 254
    const-string v0, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 256
    :cond_a
    if-gt v0, v1, :cond_b

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 258
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 263
    :cond_c
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 264
    if-gez v1, :cond_d

    .line 265
    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 266
    :cond_d
    if-gez v1, :cond_10

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "https"

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "http"

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "/"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const-string v0, ""

    goto :goto_3

    .line 274
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "http"

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "/"

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const-string v0, ""

    goto :goto_4

    :cond_13
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->flushResponse()V

    .line 1057
    return-void
.end method

.method public fwdReset()V
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 1133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 1134
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 1135
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->getContentBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 655
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 656
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()J
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1252
    :cond_0
    const-wide/16 v0, -0x1

    .line 1253
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->getContentWritten()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNamesCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValuesCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 572
    if-nez v0, :cond_0

    .line 573
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 574
    :cond_0
    return-object v0
.end method

.method public getHttpFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1212
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public getOutputStream()Lc/c/z;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 680
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eq v0, v1, :cond_0

    .line 681
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WRITER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getOutputStream()Lc/c/z;

    move-result-object v0

    .line 684
    iput v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 685
    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    return-object v0
.end method

.method getSetCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1223
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    return v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 706
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eq v0, v2, :cond_0

    .line 707
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STREAM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    if-nez v0, :cond_4

    .line 713
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 715
    if-nez v0, :cond_3

    .line 718
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v1, :cond_1

    .line 719
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-static {v0}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 721
    :cond_1
    if-nez v0, :cond_2

    .line 722
    const-string v0, "ISO-8859-1"

    .line 724
    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Response;->setCharacterEncoding(Ljava/lang/String;)V

    .line 728
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 730
    :cond_4
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 731
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isResponseCommitted()Z

    move-result v0

    return v0
.end method

.method public isOutputing()Z
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriting()Z
    .locals 2

    .prologue
    .line 691
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    const/16 v0, 0xc8

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 121
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    .line 123
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 125
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 126
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 127
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 129
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 130
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1065
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 1066
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->fwdReset()V

    .line 1067
    const/16 v0, 0xc8

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 1068
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v2

    .line 1072
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 1073
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_1

    .line 1076
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1077
    :goto_0
    if-eqz v3, :cond_1

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1079
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v4

    .line 1081
    if-eqz v4, :cond_0

    .line 1083
    invoke-virtual {v4}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1077
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    :sswitch_0
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    .line 1090
    :sswitch_1
    const-string v4, "HTTP/1.0"

    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1091
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    const-string v5, "keep-alive"

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1094
    :sswitch_2
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    const-string v5, "TE"

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1100
    :cond_1
    return-void

    .line 1083
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public reset(Z)V
    .locals 4

    .prologue
    .line 1105
    if-nez p1, :cond_1

    .line 1106
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 1121
    :cond_0
    return-void

    .line 1109
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    .line 1111
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1112
    const-string v0, "Set-Cookie"

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 1113
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1114
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1116
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 1118
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1119
    const-string v3, "Set-Cookie"

    invoke-virtual {v1, v3, v0}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    .line 1143
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1145
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->resetBuffer()V

    .line 1146
    return-void
.end method

.method public sendError(I)V
    .locals 1

    .prologue
    .line 413
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->sendProcessing()V

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0xce

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Lorg/eclipse/jetty/server/Response;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Committed before "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 315
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 316
    const-string v0, "Expires"

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 323
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    .line 325
    if-nez p2, :cond_b

    .line 326
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    :goto_1
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_8

    const/16 v0, 0x130

    if-eq p1, v0, :cond_8

    if-eq p1, v5, :cond_8

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_8

    .line 334
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v4

    .line 337
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_a

    .line 339
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v0

    .line 340
    :goto_2
    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    const-class v5, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Server;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .line 342
    :cond_2
    if-eqz v0, :cond_4

    .line 344
    const-string v2, "javax.servlet.error.status_code"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    const-string v2, "javax.servlet.error.message"

    invoke-virtual {v4, v2, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    const-string v1, "javax.servlet.error.request_uri"

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    const-string v1, "javax.servlet.error.servlet_name"

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2, p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 404
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto/16 :goto_0

    .line 352
    :cond_4
    const-string v0, "Cache-Control"

    const-string v3, "must-revalidate,no-cache,no-store"

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "text/html;charset=ISO-8859-1"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    .line 354
    new-instance v3, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v0, 0x800

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 355
    if-eqz v1, :cond_9

    .line 357
    const-string v0, "&"

    const-string v5, "&amp;"

    invoke-static {v1, v0, v5}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string v1, "<"

    const-string v5, "&lt;"

    invoke-static {v0, v1, v5}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    const-string v1, ">"

    const-string v5, "&gt;"

    invoke-static {v0, v1, v5}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    :goto_4
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_5

    .line 364
    const-string v4, "&"

    const-string v5, "&amp;"

    invoke-static {v1, v4, v5}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    const-string v4, "<"

    const-string v5, "&lt;"

    invoke-static {v1, v4, v5}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    const-string v4, ">"

    const-string v5, "&gt;"

    invoke-static {v1, v4, v5}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    :cond_5
    const-string v4, "<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html;charset=ISO-8859-1\"/>\n"

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v4, "<title>Error "

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 372
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(C)V

    .line 373
    if-nez v0, :cond_6

    .line 374
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_6
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 376
    const-string v4, "</title>\n</head>\n<body>\n<h2>HTTP ERROR: "

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 378
    const-string v4, "</h2>\n<p>Problem accessing "

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 380
    const-string v1, ". Reason:\n<pre>    "

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 382
    const-string v0, "</pre>"

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 383
    const-string v0, "</p>\n<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    move v0, v2

    .line 385
    :goto_5
    const/16 v1, 0x14

    if-ge v0, v1, :cond_7

    .line 386
    const-string v1, "\n                                                "

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 387
    :cond_7
    const-string v0, "\n</body>\n</html>\n"

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 390
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 391
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getOutputStream()Lc/c/z;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 392
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->destroy()V

    goto/16 :goto_3

    .line 395
    :cond_8
    if-eq p1, v5, :cond_3

    .line 397
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 398
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 399
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 400
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 401
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    goto/16 :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_4

    :cond_a
    move-object v0, v3

    goto/16 :goto_2

    :cond_b
    move-object v1, p2

    goto/16 :goto_1
.end method

.method public sendProcessing()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isExpecting102Processing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->send1xx(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 439
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 442
    :cond_0
    if-nez p1, :cond_1

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 445
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 447
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    new-instance v0, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    if-nez v2, :cond_6

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 452
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    .line 453
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    :goto_2
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    if-nez v0, :cond_4

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "path cannot be above root"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_3
    invoke-static {v0}, Lorg/eclipse/jetty/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 457
    :cond_4
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 458
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 468
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 470
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    invoke-static {v2}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getParam()Ljava/lang/String;

    move-result-object v2

    .line 473
    if-eqz v2, :cond_7

    .line 475
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 479
    if-eqz v2, :cond_8

    .line 481
    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_9

    .line 487
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 494
    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 495
    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 497
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto/16 :goto_0
.end method

.method public setBufferSize(I)V
    .locals 4

    .prologue
    .line 1036
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1037
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed or content written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/http/Generator;->increaseContentBufferSize(I)V

    .line 1039
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 747
    if-nez p1, :cond_5

    .line 750
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 752
    iput-object v2, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 760
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 761
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 755
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    .line 758
    :cond_3
    iput-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    .line 763
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_5
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 773
    if-gez v0, :cond_7

    .line 775
    iput-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_6

    .line 778
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_6

    .line 781
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 782
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 786
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, ";= "

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 808
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 794
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const-string v2, "charset="

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 795
    if-gez v0, :cond_8

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, ";= "

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_2

    .line 801
    :cond_8
    add-int/lit8 v0, v0, 0x8

    .line 802
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 803
    if-gez v1, :cond_9

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, ";= "

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_2

    .line 806
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v3, ";= "

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public setContentLength(I)V
    .locals 4

    .prologue
    .line 824
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 827
    if-lez p1, :cond_0

    .line 829
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    const-string v1, "Content-Length"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isAllContentWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 833
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 834
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 838
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getOutputStream()Lc/c/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/z;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 842
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 870
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    if-nez p1, :cond_3

    .line 879
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_2

    .line 880
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 881
    :cond_2
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 882
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 883
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 884
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 889
    :cond_3
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 891
    if-lez v0, :cond_13

    .line 896
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 897
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 900
    const-string v1, "charset="

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 901
    if-ltz v1, :cond_11

    .line 903
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 904
    add-int/lit8 v2, v1, 0x8

    .line 905
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 907
    iget v4, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 910
    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_4

    if-ltz v3, :cond_5

    :cond_4
    add-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_8

    .line 912
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_7

    .line 914
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_6

    .line 917
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 918
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 922
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p0

    .line 985
    :goto_1
    iput-object p1, v0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 986
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 928
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p0

    .line 929
    goto :goto_1

    .line 932
    :cond_8
    if-gez v3, :cond_9

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, ";= "

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p0

    .line 935
    goto :goto_1

    .line 939
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, ";= "

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p0

    .line 940
    goto/16 :goto_1

    .line 943
    :cond_a
    add-int/lit8 v4, v0, 0x1

    if-ne v1, v4, :cond_b

    if-ltz v3, :cond_c

    :cond_b
    add-int/lit8 v4, v0, 0x2

    if-ne v1, v4, :cond_f

    if-gez v3, :cond_f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_f

    .line 946
    :cond_c
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 947
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 949
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_e

    .line 951
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 952
    if-eqz v0, :cond_d

    .line 954
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 955
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    :cond_d
    move-object v0, p0

    .line 960
    goto/16 :goto_1

    :cond_e
    move-object v0, p0

    .line 966
    goto/16 :goto_1

    .line 969
    :cond_f
    if-lez v3, :cond_10

    .line 971
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    move-object v0, p0

    .line 973
    goto/16 :goto_1

    .line 977
    :cond_10
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 978
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 979
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 984
    :cond_11
    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 985
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_12

    move-object v0, p0

    goto/16 :goto_1

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, ";= "

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p0

    goto/16 :goto_1

    .line 991
    :cond_13
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 992
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 994
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 996
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_15

    .line 998
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 999
    if-eqz v0, :cond_14

    .line 1001
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1002
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 1006
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, ";= "

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1007
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1012
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, ";= "

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1013
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1016
    :cond_16
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_17

    .line 1018
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 1023
    :cond_17
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Ljava/lang/String;J)V

    .line 509
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 527
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 538
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    if-nez p2, :cond_3

    .line 542
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    goto :goto_0

    .line 544
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 602
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 605
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v2, p2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 608
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 5

    .prologue
    .line 1164
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    .line 1168
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LANGUAGE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 1170
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1180
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 1183
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1184
    if-eqz v1, :cond_0

    .line 1186
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 1187
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1188
    if-gez v2, :cond_2

    .line 1190
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1199
    :goto_1
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 1200
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1195
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1
.end method

.method public setLongContentLength(J)V
    .locals 3

    .prologue
    .line 858
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 861
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    .line 631
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 639
    if-gtz p1, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    iput p1, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 644
    iput-object p2, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 646
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/1.1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    goto :goto_0
.end method
