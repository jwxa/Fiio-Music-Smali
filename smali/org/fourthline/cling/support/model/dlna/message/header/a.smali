.class final Lorg/fourthline/cling/support/model/dlna/message/header/a;
.super Ljava/util/HashMap;
.source "DLNAHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->values()[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 1
    return-void

    .line 72
    :cond_0
    aget-object v3, v1, v0

    .line 73
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/fourthline/cling/support/model/dlna/message/header/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
