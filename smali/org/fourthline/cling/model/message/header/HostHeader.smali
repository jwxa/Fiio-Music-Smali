.class public Lorg/fourthline/cling/model/message/header/HostHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "HostHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/fourthline/cling/model/types/HostPort;",
        ">;"
    }
.end annotation


# instance fields
.field group:Ljava/lang/String;

.field port:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 26
    const/16 v0, 0x76c

    iput v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 27
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 30
    new-instance v0, Lorg/fourthline/cling/model/types/HostPort;

    iget-object v1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    iget v2, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 26
    const/16 v0, 0x76c

    iput v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 27
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 34
    new-instance v0, Lorg/fourthline/cling/model/types/HostPort;

    iget-object v1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 26
    const/16 v0, 0x76c

    iput v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 27
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 38
    new-instance v0, Lorg/fourthline/cling/model/types/HostPort;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/HostHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/HostPort;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/HostPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 47
    const/4 v0, 0x0

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 48
    new-instance v0, Lorg/fourthline/cling/model/types/HostPort;

    iget-object v1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    iget v2, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid HOST header value, can\'t parse port: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/fourthline/cling/model/types/HostPort;

    iget-object v1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    iget v2, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
