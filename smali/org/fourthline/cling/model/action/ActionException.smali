.class public Lorg/fourthline/cling/model/action/ActionException;
.super Ljava/lang/Exception;
.source "ActionException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput p1, p0, Lorg/fourthline/cling/model/action/ActionException;->errorCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iput p1, p0, Lorg/fourthline/cling/model/action/ActionException;->errorCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getDescription()Ljava/lang/String;

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

    invoke-direct {p0, v0, v1, p3}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

    move-result v0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getDescription()Ljava/lang/String;

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

    move-result-object p2

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/fourthline/cling/model/action/ActionException;->errorCode:I

    return v0
.end method
