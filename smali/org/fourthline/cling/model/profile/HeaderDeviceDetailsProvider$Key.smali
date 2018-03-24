.class public Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;
.super Ljava/lang/Object;
.source "HeaderDeviceDetailsProvider.java"


# instance fields
.field final headerName:Ljava/lang/String;

.field final pattern:Ljava/util/regex/Pattern;

.field final valuePattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->headerName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->valuePattern:Ljava/lang/String;

    .line 49
    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->pattern:Ljava/util/regex/Pattern;

    .line 50
    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getValuePattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->valuePattern:Ljava/lang/String;

    return-object v0
.end method

.method public isValuePatternMatch(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
