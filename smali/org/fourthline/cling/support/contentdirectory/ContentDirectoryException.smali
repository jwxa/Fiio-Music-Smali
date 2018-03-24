.class public Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;
.super Lorg/fourthline/cling/model/action/ActionException;
.source "ContentDirectoryException.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->getCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    .line 45
    return-void
.end method
