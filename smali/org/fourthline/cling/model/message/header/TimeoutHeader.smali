.class public Lorg/fourthline/cling/model/message/header/TimeoutHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "TimeoutHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INFINITE_VALUE:Ljava/lang/Integer;

.field public static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->INFINITE_VALUE:Ljava/lang/Integer;

    .line 31
    const-string v0, "Second-(?:([0-9]+)|infinite)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 37
    const/16 v0, 0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Second-"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->INFINITE_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "infinite"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    sget-object v0, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse timeout seconds integer from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-object v0, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->INFINITE_VALUE:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
