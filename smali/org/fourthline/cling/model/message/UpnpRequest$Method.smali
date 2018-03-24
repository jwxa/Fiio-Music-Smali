.class public final enum Lorg/fourthline/cling/model/message/UpnpRequest$Method;
.super Ljava/lang/Enum;
.source "UpnpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/model/message/UpnpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/message/UpnpRequest$Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v5, v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v1, "NOTIFY"

    const-string v2, "NOTIFY"

    invoke-direct {v0, v1, v6, v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 37
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v1, "MSEARCH"

    const-string v2, "M-SEARCH"

    invoke-direct {v0, v1, v7, v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 38
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v1, "SUBSCRIBE"

    const-string v2, "SUBSCRIBE"

    invoke-direct {v0, v1, v8, v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 39
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v1, "UNSUBSCRIBE"

    const/4 v2, 0x5

    const-string v3, "UNSUBSCRIBE"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 40
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    aput-object v2, v0, v1

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ENUM$VALUES:[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 42
    new-instance v0, Lorg/fourthline/cling/model/message/a;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/a;-><init>()V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->byName:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 2

    .prologue
    .line 59
    if-nez p0, :cond_1

    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->byName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 61
    if-nez v0, :cond_0

    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ENUM$VALUES:[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getHttpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    return-object v0
.end method
