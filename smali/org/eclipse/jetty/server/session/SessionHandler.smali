.class public Lorg/eclipse/jetty/server/session/SessionHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "SessionHandler.java"


# static fields
.field public static final DEFAULT_TRACKING:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lc/c/am;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _sessionManager:Lorg/eclipse/jetty/server/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "org.eclipse.jetty.server.session"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 48
    sget-object v0, Lc/c/am;->a:Lc/c/am;

    sget-object v1, Lc/c/am;->b:Lc/c/am;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->DEFAULT_TRACKING:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/session/SessionHandler;-><init>(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/SessionHandler;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 70
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionManager;->addEventListener(Ljava/util/EventListener;)V

    .line 338
    :cond_0
    return-void
.end method

.method protected checkRequestedSessionId(Lorg/eclipse/jetty/server/Request;Lc/c/c/c;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 244
    invoke-interface {p2}, Lc/c/c/c;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v6

    .line 248
    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    .line 250
    invoke-interface {v6, v3}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Lc/c/c/g;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Lc/c/c/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Request;->setSession(Lc/c/c/g;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-object v0, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v1}, Lorg/eclipse/jetty/server/SessionManager;->isUsingCookies()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 264
    invoke-interface {p2}, Lc/c/c/c;->getCookies()[Lc/c/c/a;

    move-result-object v7

    .line 265
    if-eqz v7, :cond_b

    array-length v1, v7

    if-lez v1, :cond_b

    .line 267
    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Lc/c/al;

    move-result-object v1

    invoke-interface {v1}, Lc/c/al;->a()Ljava/lang/String;

    move-result-object v8

    move v4, v5

    move v1, v5

    .line 268
    :goto_1
    array-length v9, v7

    if-ge v4, v9, :cond_2

    .line 270
    aget-object v9, v7, v4

    invoke-virtual {v9}, Lc/c/c/a;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 272
    aget-object v1, v7, v4

    invoke-virtual {v1}, Lc/c/c/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 275
    sget-object v3, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "Got Session ID {} from cookie"

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v1, v10, v5

    invoke-interface {v3, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    if-eqz v1, :cond_4

    .line 279
    invoke-interface {v6, v1}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Lc/c/c/g;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_5

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Lc/c/c/g;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v1

    move v1, v2

    .line 295
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    if-nez v0, :cond_9

    .line 297
    :cond_3
    invoke-interface {p2}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdPathParameterNamePrefix()Ljava/lang/String;

    move-result-object v7

    .line 300
    if-eqz v7, :cond_9

    .line 302
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 303
    if-ltz v8, :cond_9

    .line 305
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, v8, v0

    move v0, v1

    .line 307
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 309
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 310
    const/16 v7, 0x3b

    if-eq v3, v7, :cond_7

    const/16 v7, 0x23

    if-eq v3, v7, :cond_7

    const/16 v7, 0x3f

    if-eq v3, v7, :cond_7

    const/16 v7, 0x2f

    if-eq v3, v7, :cond_7

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 313
    goto :goto_3

    .line 288
    :cond_4
    sget-object v3, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "null session id from cookie"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-interface {v3, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v3, v1

    move v1, v2

    .line 268
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 315
    :cond_7
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-interface {v6, v1}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Lc/c/c/g;

    move-result-object v0

    .line 318
    sget-object v3, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 319
    sget-object v3, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Got Session ID {} from URL"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-interface {v3, v4, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    move-object v3, v1

    move v1, v5

    .line 324
    :cond_9
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/server/Request;->setRequestedSessionId(Ljava/lang/String;)V

    .line 325
    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    :goto_4
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setRequestedSessionIdFromCookie(Z)V

    .line 326
    if-eqz v0, :cond_0

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Lc/c/c/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Request;->setSession(Lc/c/c/g;)V

    goto/16 :goto_0

    :cond_a
    move v2, v5

    .line 325
    goto :goto_4

    :cond_b
    move v1, v5

    goto :goto_2
.end method

.method public clearEventListeners()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->clearEventListeners()V

    .line 345
    :cond_0
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->never()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/session/SessionHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v0, v1, :cond_2

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 146
    .line 151
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 152
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Lc/c/c/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 154
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v4, v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setSession(Lc/c/c/g;)V

    .line 159
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jetty/server/session/SessionHandler;->checkRequestedSessionId(Lorg/eclipse/jetty/server/Request;Lc/c/c/c;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_d

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Lc/c/c/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 167
    if-eqz v2, :cond_7

    .line 169
    if-eq v2, v3, :cond_2

    .line 172
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {p3}, Lc/c/c/c;->isSecure()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/server/SessionManager;->access(Lc/c/c/g;Z)Lorg/eclipse/jetty/http/HttpCookie;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/Response;->addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    move-object v1, v2

    .line 185
    :cond_2
    :goto_0
    :try_start_4
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sessionManager="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "session="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    :goto_1
    if-eqz v1, :cond_4

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/server/SessionManager;->complete(Lc/c/c/g;)V

    .line 206
    :cond_4
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Lc/c/c/g;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    if-eq v0, v1, :cond_5

    .line 208
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/server/SessionManager;->complete(Lc/c/c/g;)V

    .line 210
    :cond_5
    if-eqz v4, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v4, v0, :cond_6

    .line 212
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 213
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setSession(Lc/c/c/g;)V

    .line 215
    :cond_6
    return-void

    .line 179
    :cond_7
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->recoverNewSession(Ljava/lang/Object;)Lc/c/c/g;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setSession(Lc/c/c/g;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_2
    if-eqz v1, :cond_8

    .line 204
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/server/SessionManager;->complete(Lc/c/c/g;)V

    .line 206
    :cond_8
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Lc/c/c/g;

    move-result-object v4

    .line 207
    if-eqz v4, :cond_9

    if-nez v2, :cond_9

    if-eq v4, v1, :cond_9

    .line 208
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v1, v4}, Lorg/eclipse/jetty/server/SessionManager;->complete(Lc/c/c/g;)V

    .line 210
    :cond_9
    if-eqz v3, :cond_a

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v3, v1, :cond_a

    .line 212
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 213
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setSession(Lc/c/c/g;)V

    .line 215
    :cond_a
    throw v0

    .line 194
    :cond_b
    :try_start_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_c

    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_1

    .line 197
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/session/SessionHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 203
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :cond_d
    move-object v2, v1

    goto/16 :goto_0
.end method

.method protected doStart()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->start()V

    .line 124
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 125
    return-void
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->stop()V

    .line 136
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 137
    return-void
.end method

.method public getSessionManager()Lorg/eclipse/jetty/server/SessionManager;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    return-object v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 108
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v6

    .line 109
    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    .line 110
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    const-string v4, "sessionManager"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 112
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    .line 113
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    const-string v10, "sessionManager"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 114
    :cond_1
    return-void
.end method

.method public setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 6

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 92
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const-string v4, "sessionManager"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    .line 96
    invoke-interface {p1, p0}, Lorg/eclipse/jetty/server/SessionManager;->setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V

    .line 98
    :cond_2
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 100
    if-eqz v2, :cond_3

    .line 101
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/server/SessionManager;->setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V

    .line 102
    :cond_3
    return-void
.end method
