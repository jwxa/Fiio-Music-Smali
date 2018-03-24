.class public Lorg/eclipse/jetty/http/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"


# instance fields
.field private final _comment:Ljava/lang/String;

.field private final _domain:Ljava/lang/String;

.field private final _httpOnly:Z

.field private final _maxAge:I

.field private final _name:Ljava/lang/String;

.field private final _path:Ljava/lang/String;

.field private final _secure:Z

.field private final _value:Ljava/lang/String;

.field private final _version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 43
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 45
    iput v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 72
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 73
    iput p3, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 74
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 75
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 76
    iput v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 58
    iput-object p4, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 60
    iput v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 85
    iput-boolean p6, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 86
    iput p5, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 87
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 89
    iput-boolean p7, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 90
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p8, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 100
    iput-boolean p6, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 101
    iput p5, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 102
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 104
    iput-boolean p7, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 105
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 106
    iput p9, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 107
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    return v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    return v0
.end method
