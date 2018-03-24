.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentPlayMode;
.super Lorg/fourthline/cling/support/lastchange/EventedValueEnum;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValueEnum",
        "<",
        "Lorg/fourthline/cling/support/model/PlayMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/PlayMode;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnum;-><init>(Ljava/lang/Enum;)V

    .line 146
    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnum;-><init>([Ljava/util/Map$Entry;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentPlayMode;->enumValueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object v0

    return-object v0
.end method

.method protected enumValueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;
    .locals 1

    .prologue
    .line 154
    invoke-static {p1}, Lorg/fourthline/cling/support/model/PlayMode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object v0

    return-object v0
.end method
