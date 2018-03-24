.class public interface abstract Lc/c/ac;
.super Ljava/lang/Object;
.source "ServletRequest.java"


# virtual methods
.method public abstract getAsyncContext()Lc/c/a;
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCharacterEncoding()Ljava/lang/String;
.end method

.method public abstract getContentLength()I
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDispatcherType()Lc/c/d;
.end method

.method public abstract getInputStream()Lc/c/y;
.end method

.method public abstract getLocalAddr()Ljava/lang/String;
.end method

.method public abstract getLocalName()Ljava/lang/String;
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getLocales()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParameterMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameterNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getReader()Ljava/io/BufferedReader;
.end method

.method public abstract getRealPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRemoteAddr()Ljava/lang/String;
.end method

.method public abstract getRemoteHost()Ljava/lang/String;
.end method

.method public abstract getRemotePort()I
.end method

.method public abstract getRequestDispatcher(Ljava/lang/String;)Lc/c/p;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getServerName()Ljava/lang/String;
.end method

.method public abstract getServerPort()I
.end method

.method public abstract getServletContext()Lc/c/s;
.end method

.method public abstract isAsyncStarted()Z
.end method

.method public abstract isAsyncSupported()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setCharacterEncoding(Ljava/lang/String;)V
.end method

.method public abstract startAsync()Lc/c/a;
.end method

.method public abstract startAsync(Lc/c/ac;Lc/c/ai;)Lc/c/a;
.end method
