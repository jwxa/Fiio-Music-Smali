.class public Lorg/eclipse/jetty/client/security/SecurityListener;
.super Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.source "SecurityListener.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _attempts:I

.field private _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field private _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field private _needIntercept:Z

.field private _requestComplete:Z

.field private _responseComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/eclipse/jetty/client/security/SecurityListener;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;-><init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_attempts:I

    .line 60
    iput-object p1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 61
    iput-object p2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 62
    return-void
.end method


# virtual methods
.method public onRequestComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    .line 203
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    if-eqz v0, :cond_3

    .line 205
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestComplete, Both complete: Resending from onResponseComplete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    .line 210
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    .line 211
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingRequests(Z)V

    .line 212
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 213
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 228
    :goto_0
    return-void

    .line 217
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestComplete, Response not yet complete onRequestComplete, calling super for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0

    .line 224
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestComplete, delegating to super with Request complete="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_4
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0
.end method

.method public onResponseComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    .line 235
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    if-eqz v0, :cond_3

    .line 237
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponseComplete, Both complete: Resending from onResponseComplete"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    .line 242
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    .line 243
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 244
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingRequests(Z)V

    .line 245
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponseComplete, Request not yet complete from onResponseComplete,  calling super "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0

    .line 257
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnResponseComplete, delegating to super with Request complete="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :cond_4
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0
.end method

.method public onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SecurityListener:Header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/security/SecurityListener;->isDelegatingResponses()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 157
    packed-switch v0, :pswitch_data_0

    .line 194
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 195
    return-void

    .line 162
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/security/SecurityListener;->scrapeAuthenticationType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/security/SecurityListener;->scrapeAuthenticationDetails(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 167
    const-string v3, "/"

    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getRealmResolver()Lorg/eclipse/jetty/client/security/RealmResolver;

    move-result-object v4

    .line 170
    if-eqz v4, :cond_1

    .line 172
    const-string v0, "realm"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-interface {v4, v0, v5, v3}, Lorg/eclipse/jetty/client/security/RealmResolver;->getRealm(Ljava/lang/String;Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;)Lorg/eclipse/jetty/client/security/Realm;

    move-result-object v0

    .line 177
    if-nez v0, :cond_2

    .line 179
    sget-object v1, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Security Realm: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "realm"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_2
    const-string v4, "digest"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    iget-object v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    const-string v3, "/"

    new-instance v4, Lorg/eclipse/jetty/client/security/DigestAuthentication;

    invoke-direct {v4, v0, v2}, Lorg/eclipse/jetty/client/security/DigestAuthentication;-><init>(Lorg/eclipse/jetty/client/security/Realm;Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jetty/client/HttpDestination;->addAuthorization(Ljava/lang/String;Lorg/eclipse/jetty/client/security/Authentication;)V

    goto :goto_0

    .line 186
    :cond_3
    const-string v2, "basic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    new-instance v2, Lorg/eclipse/jetty/client/security/BasicAuthentication;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/client/security/BasicAuthentication;-><init>(Lorg/eclipse/jetty/client/security/Realm;)V

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jetty/client/HttpDestination;->addAuthorization(Ljava/lang/String;Lorg/eclipse/jetty/client/security/Authentication;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SecurityListener:Response Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_0
    const/16 v0, 0x191

    if-ne p2, v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_attempts:I

    iget-object v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->maxRetries()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 134
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    .line 142
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 143
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 139
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingRequests(Z)V

    .line 140
    iput-boolean v3, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    goto :goto_0
.end method

.method public onRetry()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 266
    iget v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_attempts:I

    .line 267
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingRequests(Z)V

    .line 268
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/security/SecurityListener;->setDelegatingResponses(Z)V

    .line 269
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_requestComplete:Z

    .line 270
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_responseComplete:Z

    .line 271
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/security/SecurityListener;->_needIntercept:Z

    .line 272
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRetry()V

    .line 273
    return-void
.end method

.method protected scrapeAuthenticationDetails(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 107
    aget-object v1, v3, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 108
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v3}, Lorg/eclipse/jetty/util/StringUtil;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    sget-object v3, Lorg/eclipse/jetty/client/security/SecurityListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SecurityListener: missed scraping authentication details - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_1
    return-object v0
.end method

.method protected scrapeAuthenticationType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
