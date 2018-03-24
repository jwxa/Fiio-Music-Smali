.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.super Ljava/lang/Object;
.source "RenderingControlVariable.java"


# static fields
.field public static ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/a;

    invoke-direct {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/a;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable;->ALL:Ljava/util/Set;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
