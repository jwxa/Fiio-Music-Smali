.class public interface abstract Lorg/fourthline/cling/model/types/Datatype;
.super Ljava/lang/Object;
.source "Datatype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;
.end method

.method public abstract getDisplayString()Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract isHandlingJavaType(Ljava/lang/Class;)Z
.end method

.method public abstract isValid(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation
.end method

.method public abstract valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation
.end method
