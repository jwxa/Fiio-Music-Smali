.class public Lorg/eclipse/jetty/http/HttpSchemes;
.super Ljava/lang/Object;
.source "HttpSchemes.java"


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final HTTP_BUFFER:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const-string v1, "http"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 37
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const-string v1, "https"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTPS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
