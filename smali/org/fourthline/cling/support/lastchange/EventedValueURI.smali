.class public Lorg/fourthline/cling/support/lastchange/EventedValueURI;
.super Lorg/fourthline/cling/support/lastchange/EventedValue;
.source "EventedValueURI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValue",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/fourthline/cling/support/lastchange/EventedValueURI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/lastchange/EventedValueURI;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    .line 35
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
    .line 38
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueURI;->valueOf(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    .prologue
    .line 46
    :try_start_0
    invoke-super {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lorg/fourthline/cling/support/lastchange/EventedValueURI;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring invalid URI in evented value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method
