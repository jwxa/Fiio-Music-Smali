.class public interface abstract Lorg/fourthline/cling/registry/event/Phase;
.super Ljava/lang/Object;
.source "Phase.java"


# static fields
.field public static final ALIVE:Lc/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/c/a",
            "<",
            "Lorg/fourthline/cling/registry/event/Phase$Alive;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYEBYE:Lc/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/c/a",
            "<",
            "Lorg/fourthline/cling/registry/event/Phase$Byebye;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPLETE:Lc/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/c/a",
            "<",
            "Lorg/fourthline/cling/registry/event/Phase$Complete;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATED:Lc/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/c/a",
            "<",
            "Lorg/fourthline/cling/registry/event/Phase$Updated;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/fourthline/cling/registry/event/a;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/a;-><init>()V

    sput-object v0, Lorg/fourthline/cling/registry/event/Phase;->ALIVE:Lc/a/c/a;

    .line 36
    new-instance v0, Lorg/fourthline/cling/registry/event/b;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/b;-><init>()V

    sput-object v0, Lorg/fourthline/cling/registry/event/Phase;->COMPLETE:Lc/a/c/a;

    .line 39
    new-instance v0, Lorg/fourthline/cling/registry/event/c;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/c;-><init>()V

    sput-object v0, Lorg/fourthline/cling/registry/event/Phase;->BYEBYE:Lc/a/c/a;

    .line 42
    new-instance v0, Lorg/fourthline/cling/registry/event/d;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/d;-><init>()V

    sput-object v0, Lorg/fourthline/cling/registry/event/Phase;->UPDATED:Lc/a/c/a;

    .line 43
    return-void
.end method
