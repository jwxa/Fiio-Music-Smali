.class public interface abstract annotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
.super Ljava/lang/Object;
.source "UpnpServiceType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
        namespace = "schemas-upnp-org"
        version = 0x1
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation


# virtual methods
.method public abstract namespace()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method

.method public abstract version()I
.end method
