.class public interface abstract Lorg/fourthline/cling/binding/LocalServiceBinder;
.super Ljava/lang/Object;
.source "LocalServiceBinder.java"


# virtual methods
.method public abstract read(Ljava/lang/Class;)Lorg/fourthline/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;Z[Ljava/lang/Class;)Lorg/fourthline/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Z[",
            "Ljava/lang/Class;",
            ")",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation
.end method
