.class public interface abstract Lc/c/r;
.super Ljava/lang/Object;
.source "ServletConfig.java"


# virtual methods
.method public abstract getInitParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInitParameterNames()Ljava/util/Enumeration;
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

.method public abstract getServletContext()Lc/c/s;
.end method

.method public abstract getServletName()Ljava/lang/String;
.end method
