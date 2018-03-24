.class public Lorg/seamless/http/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/seamless/http/RequestInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/seamless/http/RequestInfo;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpRequestHeaders(JLc/c/c/c;)V
    .locals 2

    .prologue
    .line 155
    const-string v0, "REQUEST HEADERS"

    invoke-static {p0, p1, v0, p2}, Lorg/seamless/http/RequestInfo;->dumpRequestHeaders(JLjava/lang/String;Lc/c/c/c;)V

    .line 156
    return-void
.end method

.method public static dumpRequestHeaders(JLjava/lang/String;Lc/c/c/c;)V
    .locals 6

    .prologue
    .line 163
    sget-object v0, Lorg/seamless/http/RequestInfo;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 164
    invoke-static {p0, p1, p3}, Lorg/seamless/http/RequestInfo;->dumpRequestString(JLc/c/c/c;)V

    .line 165
    invoke-interface {p3}, Lc/c/c/c;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    sget-object v2, Lorg/seamless/http/RequestInfo;->log:Ljava/util/logging/Logger;

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-interface {p3, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    sget-object v0, Lorg/seamless/http/RequestInfo;->log:Ljava/util/logging/Logger;

    const-string v1, "----------------------------------------"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static dumpRequestString(JLc/c/c/c;)V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lorg/seamless/http/RequestInfo;->log:Ljava/util/logging/Logger;

    invoke-static {p0, p1, p2}, Lorg/seamless/http/RequestInfo;->getRequestInfoString(JLc/c/c/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static getRequestFullURL(Lc/c/c/c;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 187
    invoke-interface {p0}, Lc/c/c/c;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-interface {p0}, Lc/c/c/c;->getServerName()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-interface {p0}, Lc/c/c/c;->getServerPort()I

    move-result v2

    .line 190
    invoke-interface {p0}, Lc/c/c/c;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-interface {p0}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-interface {p0}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-interface {p0}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v6

    .line 196
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v8, "://"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const/16 v0, 0x50

    if-eq v2, v0, :cond_0

    const/16 v0, 0x1bb

    if-eq v2, v0, :cond_0

    .line 200
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 203
    :cond_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_1
    if-eqz v6, :cond_2

    .line 209
    const-string v0, "?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestInfoString(JLc/c/c/c;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 176
    const-string v0, "%s %s %s %s %s %d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p2}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-interface {p2}, Lc/c/c/c;->getProtocol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-interface {p2}, Lc/c/c/c;->getParameterMap()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-interface {p2}, Lc/c/c/c;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAndroidBubbleUPnPRequest(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 122
    if-eqz p0, :cond_0

    const-string v0, "BubbleUPnP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJRiverRequest(Lc/c/c/c;)Z
    .locals 1

    .prologue
    .line 130
    const-string v0, "User-Agent"

    invoke-interface {p0, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/http/RequestInfo;->isJRiverRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJRiverRequest(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 134
    if-eqz p0, :cond_1

    const-string v0, "J-River"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "J. River"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPS3Request(Lc/c/c/c;)Z
    .locals 2

    .prologue
    .line 126
    const-string v0, "User-Agent"

    invoke-interface {p0, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-AV-Client-Info"

    invoke-interface {p0, v1}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/seamless/http/RequestInfo;->isPS3Request(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPS3Request(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 117
    if-eqz p0, :cond_0

    const-string v0, "PLAYSTATION 3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "PLAYSTATION 3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public static isWMPRequest(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 138
    if-eqz p0, :cond_0

    const-string v0, "Windows-Media-Player"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/seamless/http/RequestInfo;->isJRiverRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXbox360AlbumArtRequest(Lc/c/c/c;)Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "true"

    const-string v1, "albumArt"

    invoke-interface {p0, v1}, Lc/c/c/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/seamless/http/RequestInfo;->isXbox360Request(Lc/c/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXbox360Request(Lc/c/c/c;)Z
    .locals 2

    .prologue
    .line 142
    const-string v0, "User-Agent"

    invoke-interface {p0, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server"

    invoke-interface {p0, v1}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/seamless/http/RequestInfo;->isXbox360Request(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXbox360Request(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 146
    if-eqz p0, :cond_0

    const-string v0, "Xbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Xenon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "Xbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public static reportClient(Ljava/lang/StringBuilder;Lc/c/c/c;)V
    .locals 2

    .prologue
    .line 108
    const-string v0, "Remote Address: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc/c/c/c;->getRemoteAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {p1}, Lc/c/c/c;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lc/c/c/c;->getRemoteHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "Remote Host: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc/c/c/c;->getRemoteHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    const-string v0, "Remote Port: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc/c/c/c;->getRemotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-interface {p1}, Lc/c/c/c;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "Remote User: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc/c/c/c;->getRemoteUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    return-void
.end method

.method public static reportCookies(Ljava/lang/StringBuilder;Lc/c/c/c;)V
    .locals 6

    .prologue
    .line 95
    invoke-interface {p1}, Lc/c/c/c;->getCookies()[Lc/c/c/a;

    move-result-object v1

    .line 96
    if-nez v1, :cond_1

    .line 105
    :cond_0
    return-void

    .line 97
    :cond_1
    array-length v2, v1

    .line 98
    if-lez v2, :cond_0

    .line 99
    const-string v0, "Cookies:\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 101
    aget-object v3, v1, v0

    .line 102
    const-string v4, "    "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lc/c/c/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lc/c/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reportHeaders(Ljava/lang/StringBuilder;Lc/c/c/c;)V
    .locals 4

    .prologue
    .line 82
    invoke-interface {p1}, Lc/c/c/c;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 83
    if-nez v1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Headers:\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-interface {p1, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v3, "    "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static reportParameters(Ljava/lang/StringBuilder;Lc/c/c/c;)V
    .locals 8

    .prologue
    .line 64
    invoke-interface {p1}, Lc/c/c/c;->getParameterNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 65
    if-nez v2, :cond_1

    .line 79
    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "Parameters:\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-interface {p1, v0}, Lc/c/c/c;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 74
    const-string v6, "    "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reportRequest(Ljava/lang/StringBuilder;Lc/c/c/c;)V
    .locals 2

    .prologue
    .line 31
    const-string v0, "Request: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {p1}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    invoke-interface {p1}, Lc/c/c/c;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 35
    invoke-interface {p1}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    const-string v0, " - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {p1}, Lc/c/c/c;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    const-string v1, "\nSession ID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    if-nez v0, :cond_2

    .line 47
    const-string v0, "No Session"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-interface {p1}, Lc/c/c/c;->isRequestedSessionIdValid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v0, " (from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {p1}, Lc/c/c/c;->isRequestedSessionIdFromCookie()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    const-string v0, "cookie)\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {p1}, Lc/c/c/c;->isRequestedSessionIdFromURL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    const-string v0, "url)\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 56
    :cond_4
    const-string v0, "unknown)\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    :cond_5
    const-string v0, "Invalid Session ID\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
