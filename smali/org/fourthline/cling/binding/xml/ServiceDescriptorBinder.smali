.class public interface abstract Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
.super Ljava/lang/Object;
.source "ServiceDescriptorBinder.java"


# virtual methods
.method public abstract buildDOM(Lorg/fourthline/cling/model/meta/Service;)Lorg/w3c/dom/Document;
.end method

.method public abstract describe(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/meta/Service;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract describe(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;)Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/meta/Service;",
            ">(TT;",
            "Lorg/w3c/dom/Document;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract generate(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;
.end method
