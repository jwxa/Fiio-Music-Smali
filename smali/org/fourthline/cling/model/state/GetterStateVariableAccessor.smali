.class public Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;
.super Lorg/fourthline/cling/model/state/StateVariableAccessor;
.source "GetterStateVariableAccessor.java"


# instance fields
.field private getter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/fourthline/cling/model/state/StateVariableAccessor;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;->getter:Ljava/lang/reflect/Method;

    .line 33
    return-void
.end method


# virtual methods
.method public getGetter()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;->getter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lorg/seamless/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
