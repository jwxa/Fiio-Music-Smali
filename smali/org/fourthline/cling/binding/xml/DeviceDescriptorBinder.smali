.class public interface abstract Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
.super Ljava/lang/Object;
.source "DeviceDescriptorBinder.java"


# virtual methods
.method public abstract buildDOM(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/profile/RemoteClientInfo;Lorg/fourthline/cling/model/Namespace;)Lorg/w3c/dom/Document;
.end method

.method public abstract describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract describe(Lorg/fourthline/cling/model/meta/Device;Lorg/w3c/dom/Document;)Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">(TT;",
            "Lorg/w3c/dom/Document;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract generate(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/profile/RemoteClientInfo;Lorg/fourthline/cling/model/Namespace;)Ljava/lang/String;
.end method
